#!/bin/bash

# for debug
#set -x

#DEVICE_NAME=
# DEVICE_NAME会与source脚本中的变量冲突
SPECIFIED_DEVICE=
if [ $# -eq 1 ]; then
    SPECIFIED_DEVICE=$1
fi

DEVICE_ROOT=
DEVICE_TOS=$PORT_DEVICE/tos
OLD_TOS_OTA_PATH=$DEVICE_TOS/ota_old
NEW_TOS_OTA_PATH=$DEVICE_TOS/ota
OLD_TOS_SMALI_PATH=$DEVICE_TOS/smali_old
NEW_TOS_SMALI_PATH=$DEVICE_TOS/smali
TEMP_PATH=
BACKUP_PATH=
CURRENT_TIME=`date +%Y%m%d%H%M%S`

backup_folder()
{
    local FOLDER_PATH=$1
    local DEVICE=$2
    local LOCAL_DEVICE_ROOT=$PORT_DEVICE/$DEVICE
    local RELATIVE_PATH=${FOLDER_PATH:${#LOCAL_DEVICE_ROOT}+1}
    local LOCAL_BACKUP_PATH=$BACKUP_PATH/$CURRENT_TIME/$RELATIVE_PATH
    mkdir -p "$LOCAL_BACKUP_PATH"
    cp -rf $FOLDER_PATH/* "$LOCAL_BACKUP_PATH/"
}

# 检查两个目录是否相同
# 返回1表示不同，0表示相同
check_dir_difference()
{
    local DIR1=$1
    local DIR2=$2
    
    for FILE in `find $DIR1/ -name "*.smali"`
    do
        local RELATIVE_PATH=${FILE:${#DIR1}+1}
        if [ -d "$FILE" ]; then
            if [ ! -d "$DIR2/$RELATIVE_PATH" ]; then
                return 1
            else
                continue
            fi
        elif [ -f "$FILE" ]; then
            echo -n "checking $FILE ... " > /dev/null
            if [ ! -f "$DIR2/$RELATIVE_PATH" ]; then
                echo "[diff]" > /dev/null
                return 1
            else
                if [ `md5sum "$FILE" | awk '{print $1}'` != `md5sum "$DIR2/$RELATIVE_PATH" | awk '{print $1}'` ]; then
                    diff "$FILE" "$DIR2/$RELATIVE_PATH" > "$TEMP_PATH/smali.diff"
                    local LINE_CNT=0
                    while read -d$'\n' LINE
                    do
                        ((LINE_CNT++))
                        if [ $LINE_CNT -eq 5 ]; then
                            LINE_CNT=1
                        fi

                        if [ $LINE_CNT -eq 1 ]; then
			    # 第一行
                            if [  -z `echo $LINE | egrep -o "c"` ]; then
                                # only accept xxcxx, c means change
                                echo "[diff]" > /dev/null
                                return 1
                            fi
                        elif [ $LINE_CNT -eq 2 -o $LINE_CNT -eq 4 ]; then
			    # 第2行或第4行
                            #>     .line 1770
                            LINE=`echo "${LINE:2}" | sed 's/^[[:space:]]*//' | sed 's/[[:space:]]*$//'`
                            if [ "${LINE:0:1}" != "#" -a "${LINE:0:5}" != ".line" ]; then
                                echo "[diff]" > /dev/null
                                return 1
                            fi
                        fi
                    done < $TEMP_PATH/smali.diff
                    rm $TEMP_PATH/smali.diff
                    echo "[same]" > /dev/null
                else
                    echo "[same]" > /dev/null
                fi
            fi
        fi
    done
    
    return 0
}

do_incremental_patch_for_device()
{
    local DEVICE=$1
    source $PORT_TOOLS/makefile_var_setup.sh $DEVICE
    source $PORT_TOOLS/java_setup.sh $DEVICE

    if [ "$DEVICE" = "tos" -o "$DEVICE" = "aosp" ]; then
        echo "[ERROR] you cannot execute 'make incpatch' under '$DEVICE'"
        exit 1
    fi

    if [ ! -f $PORT_DEVICE/$DEVICE/patch/smali/target/patch_failed.txt ]; then
        echo "[ERROR] you must execute 'make patch' first over device '$DEVICE' fisrt."
        echo "or if you just want do patch via latest tos rom. just run 'make patch' is what you want."
        exit 1
    fi

    # 要确保所有的冲突都解决了
    while read -d$'\n' LINE
    do
        if [ ! -f "$PORT_DEVICE/$DEVICE/patch/smali/target/$LINE" ]; then
            echo "[ERROR] there are unsolved conflicts: $LINE"
            echo "please solve all the conflicts first"
            exit 1
        fi
    done < $PORT_DEVICE/$DEVICE/patch/smali/target/patch_failed.txt
    
    DEVICE_ROOT=$PORT_DEVICE/$DEVICE
    TEMP_PATH=$DEVICE_ROOT/temp

    # 检查tos framework jar包是否有修改
    echo "check whether framework jars have been modified ..."
    check_dir_difference $OLD_TOS_SMALI_PATH $NEW_TOS_SMALI_PATH
    if [ $? -ne 0 ]; then
	# 修改了framework
        echo "[ERROR] framework modifications detected, cannot handle at the moment"
        echo "[ERROR] you could do patch manually"
        exit 1
    fi
    
    # 执行make package
    # 备份输出的zip包(zip包应该按照规范命名)
    for FILE in `find "$DEVICE_ROOT/package" -maxdepth 1 -name "*.zip"`
    do
	# 以修改时间命名
        local MOD_TIME=`date -r "$FILE" +%Y%m%d%H%M%S`
        local NEW_FILE=${FILE:0:${#FILE}-3}$MOD_TIME.zip
        mv "$FILE" "$NEW_FILE"
    done
    
    make -f "$DEVICE_ROOT/Makefile" clean-package 
    if [ $? -ne 0 ]; then
        echo "[ERROR] make clean-package failed"
        exit 1
    fi
    
    make -f "$DEVICE_ROOT/Makefile" package
    if [ $? -ne 0 ]; then
        echo "[ERROR] make package failed"
        echo "[VERY IMPORTANT] NOW YOU SHOULD EXECUTE MAKE PACKAGE TO GENERATE THE FIANL PACKAGE"
        exit 1
    fi
}

prepare_ota()
{
    echo "prepare ota folders ..."
    if [ ! -f "$DEVICE_TOS/ota_old.zip" ]; then
        echo "[ERROR] $DEVICE_TOS/ota_old.zip not exist"
        echo "you should rename the old tos ota.zip to ota_old.zip"
        exit 1
    fi
    
    if [ ! -f "$DEVICE_TOS/ota.zip" ]; then
        echo "[ERROR] $DEVICE_TOS/ota_old.zip not exist"
        echo "you should rename the new tos ota package to ota.zip"
        exit 1
    fi
    
    local OLD_OTA_EXIST=false
    local OLD_OTA_MD5=`md5sum "$DEVICE_TOS/ota_old.zip" | awk '{print $1}'`
    if [ -f "$OLD_TOS_OTA_PATH/ota.zip.checksum" ]; then
        if [ `cat "$OLD_TOS_OTA_PATH/ota.zip.checksum"` = "$OLD_OTA_MD5" ]; then
            OLD_OTA_EXIST=true
        fi
    fi
    
    if [ $OLD_OTA_EXIST = false ]; then
	# 检查是否在ota目录里
        if [ -f "$NEW_TOS_OTA_PATH/ota.zip.checksum" ]; then
            if [ `cat "$NEW_TOS_OTA_PATH/ota.zip.checksum"` = "$OLD_OTA_MD5" ]; then
                mv "$NEW_TOS_OTA_PATH" "$OLD_TOS_OTA_PATH"
            else
		# ota目录与ota.zip不匹配，重新解压
                echo "unpack old version ota.zip ..."
                rm -rf $DEVICE_TOS/ota_old
                unzip "$DEVICE_TOS/ota_old.zip" -d "$OLD_TOS_OTA_PATH"
                if [ $? -ne 0 ]; then
                    echo "[ERROR] unzip old tos ota.zip failed"
                    exit 1
                fi
                echo "$OLD_OTA_MD5" > "$OLD_TOS_OTA_PATH/ota.zip.checksum"
            fi
        fi
    fi

    local NEW_OTA_EXIST=false
    local NEW_OTA_MD5=`md5sum "$DEVICE_TOS/ota.zip" | awk '{print $1}'`
    if [ -f "$NEW_TOS_OTA_PATH/ota.zip.checksum" ]; then
        if [ `cat "$NEW_TOS_OTA_PATH/ota.zip.checksum"` = "$NEW_OTA_MD5" ]; then
            NEW_OTA_EXIST=true
        fi
    fi
    
    if [ $NEW_OTA_EXIST = false ]; then
        echo "unpack new version ota.zip ..."
        rm -rf $DEVICE_TOS/ota
        unzip "$DEVICE_TOS/ota.zip" -d "$NEW_TOS_OTA_PATH"
        if [ $? -ne 0 ]; then
            echo "[ERROR] unzip new tos ota.zip failed"
            exit 1
        fi
        echo "$NEW_OTA_MD5" > "$NEW_TOS_OTA_PATH/ota.zip.checksum"
        
        $PORT_TOOLS/install_framework.sh $NEW_TOS_OTA_PATH/system/framework $IF_TAG_PREFIX""tos
    fi
}

check_app_modification_for_device()
{
    local PACKAGE=$1
    local DEVICE=$2
    BACKUP_PATH=$PORT_DEVICE/$DEVICE/backup
    
    local PACKAGE_PATH=`find "$NEW_TOS_OTA_PATH" -name "$PACKAGE"`
    if [ -n "$PACKAGE_PATH" ]; then
        local PACKAGE_MD5=`md5sum "$PACKAGE_PATH" | awk '{print $1}'`
        local CHECKSUM_FILE="$PORT_DEVICE/$DEVICE/package/modified_apps/tos/$PACKAGE/checksum"
        if [ -f "$CHECKSUM_FILE" ]; then
            if [ `cat "$CHECKSUM_FILE"` != "$PACKAGE_MD5" ]; then
		# 需要重新反编译
		# 先进行备份
                backup_folder "$PORT_DEVICE/$DEVICE/package/modified_apps/tos/$PACKAGE" "$DEVICE"
                $PORT_TOOLS/decompile.sh "$NEW_TOS_OTA_PATH/system" "$PORT_DEVICE/$DEVICE/package/modified_apps/tos" $IF_TAG_PREFIX""tos $PACKAGE
                if [ $? -ne 0 ]; then
                    echo "[ERROR] decompile $PACKAGE_PATH failed"
                    exit 1
                fi
                echo "$PACKAGE_MD5" > "$CHECKSUM_FILE"
            fi
        else
            $PORT_TOOLS/decompile.sh "$NEW_TOS_OTA_PATH/system" "$PORT_DEVICE/$DEVICE/package/modified_apps/tos" $IF_TAG_PREFIX""tos $PACKAGE
            if [ $? -ne 0 ]; then
                echo "[ERROR] decompile $PACKAGE_PATH failed"
                exit 1
            fi
            echo "$PACKAGE_MD5" > "$CHECKSUM_FILE"
        fi
    else
	# 需要删除这个包
	# 先进行备份
        backup_folder "$PORT_DEVICE/$DEVICE/package/modified_apps/tos/$PACKAGE" "$DEVICE"
        rm -rf "$PORT_DEVICE/$DEVICE/package/modified_apps/tos/$PACKAGE"
    fi
}

prepare_smali()
{
    echo "prepare smali files ..."
    for PACKAGE in `echo "$DECOMPILE_PACKAGES"`
    do
        local OLD_PACKAGE=`find "$OLD_TOS_OTA_PATH" -name "$PACKAGE"`
        if [ -n "$OLD_PACKAGE" ]; then
            local PACKAGE_MD5=`md5sum "$OLD_PACKAGE" | awk '{print $1}'`
            local PACKAGE_DECOMPILED=false
            if [ -f "$OLD_TOS_SMALI_PATH/$PACKAGE/checksum" ]; then
                if [ `cat "$OLD_TOS_SMALI_PATH/$PACKAGE/checksum"` = "$PACKAGE_MD5" ]; then
                    PACKAGE_DECOMPILED=true
                fi
            fi
            
            if [ $PACKAGE_DECOMPILED = false ]; then
                if [ -f "$NEW_TOS_SMALI_PATH/$PACKAGE/checksum" ]; then
                    if [ `cat "$NEW_TOS_SMALI_PATH/$PACKAGE/checksum"` = "$PACKAGE_MD5" ]; then
                        mkdir -p "$NEW_TOS_OTA_PATH/$OLD_PACKAGE"
                        mv "$NEW_TOS_SMALI_PATH/$OLD_PACKAGE" "$NEW_TOS_OTA_PATH/$OLD_PACKAGE"
                        PACKAGE_DECOMPILED=true
                    fi
                fi
            fi
            
            if [ $PACKAGE_DECOMPILED = false ]; then
		# 反编译
                $PORT_TOOLS/decompile.sh $OLD_TOS_OTA_PATH/system $OLD_TOS_SMALI_PATH $IF_TAG_PREFIX""tos $PACKAGE
                if [ $? -ne 0 ]; then
                    echo "[ERROR] decompile $OLD_PACKAGE failed"
                    exit 1
                fi
                echo "$PACKAGE_MD5" > "$OLD_TOS_SMALI_PATH/$PACKAGE/checksum"
            fi
        fi

        local NEW_PACKAGE=`find "$NEW_TOS_OTA_PATH" -name "$PACKAGE"`
        if [ -n "$NEW_PACKAGE" ]; then
            local PACKAGE_MD5=`md5sum "$NEW_PACKAGE" | awk '{print $1}'`
            local PACKAGE_DECOMPILED=false
            if [ -f "$NEW_TOS_SMALI_PATH/$PACKAGE/checksum" ]; then
                if [ `cat "$NEW_TOS_SMALI_PATH/$PACKAGE/checksum"` == "$PACKAGE_MD5" ]; then
                    PACKAGE_DECOMPILED=true
                fi
            fi
            
            if [ $PACKAGE_DECOMPILED = false ]; then
                $PORT_TOOLS/decompile.sh $NEW_TOS_OTA_PATH/system $NEW_TOS_SMALI_PATH $IF_TAG_PREFIX""tos $PACKAGE
                if [ $? -ne 0 ]; then
                    echo "[ERROR] decompile $NEW_PACKAGE failed"
                    exit 1
                fi
                echo "$PACKAGE_MD5" > "$NEW_TOS_SMALI_PATH/$PACKAGE/checksum"
            fi
        fi
    done
    
    # 检查tos app是否有修改
    if [ -z "$SPECIFIED_DEVICE" ]; then
	# 没有指定设备名，对所有设备都执行
        for DIR in `ls $PORT_DEVICE`
        do
            if [ "$DIR" = "tos" -o "$DIR" = "aosp" ]; then
                continue
            fi
            source $PORT_TOOLS/makefile_var_setup.sh $DIR
            source $PORT_TOOLS/java_setup.sh $DIR
            for PACKAGE in `echo "$EXTRA_DECOMPILE_PACKAGES"`
            do
                if [ "${PACKAGE:0:4}" != "TOS:" ]; then
                    continue
                fi
                PACKAGE=${PACKAGE:4}
                check_app_modification_for_device "$PACKAGE" "$DIR"
            done
        done
    else
        source $PORT_TOOLS/makefile_var_setup.sh $SPECIFIED_DEVICE
        source $PORT_TOOLS/java_setup.sh $SPECIFIED_DEVICE
        for PACKAGE in `echo "$EXTRA_DECOMPILE_PACKAGES"`
        do
            if [ "${PACKAGE:0:4}" != "TOS:" ]; then
                continue
            fi
            PACKAGE=${PACKAGE:4}
            check_app_modification_for_device "$PACKAGE" "$SPECIFIED_DEVICE"
        done
    fi
}

main()
{
    source $PORT_TOOLS/makefile_var_setup.sh tos
    source $PORT_TOOLS/java_setup.sh tos
        
    prepare_ota
    prepare_smali
    
    if [ -z "$SPECIFIED_DEVICE" ]; then
	# 没有指定设备名，对所有设备执行
        for DIR in `ls $PORT_DEVICE`
        do
            if [ "$DIR" = "tos" -o "$DIR" = "aosp" ]; then
                continue
            fi
            do_incremental_patch_for_device $DIR
        done
    else
        do_incremental_patch_for_device $SPECIFIED_DEVICE
    fi
}

main