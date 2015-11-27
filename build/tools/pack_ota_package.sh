#!/bin/bash

# for debug
#set -x


if [ $# -lt 1 ]; then
    echo "usage: $0 device_name "
    exit 1
fi

if [ -z "$PORT_DEVICE" ]; then
    echo "you should export PORT_DEVICE env variable point to the PORT_ROOT/devices directory"
    exit 1
fi

# 设置java环境
source $PORT_TOOLS/java_setup.sh $1
if [ $? -ne 0 ]; then
    exit 1
fi

DEVICE_NAME=$1
RECOVERY_DEVICE_ASSERT=$2
DESINTY=$3
SUITABLE_DEVICES=$4
DEVICE_ROOT=$PORT_DEVICE/$DEVICE_NAME
PACKAGE_PATH=$DEVICE_ROOT/package
BOOT_PATH=$DEVICE_ROOT/boot
PATCH_PATH=$DEVICE_ROOT/patch
TEMP_PATH=$DEVICE_ROOT/temp
PROGRESS_PATH=$DEVICE_ROOT/progress
SMALI_PATH=$PACKAGE_PATH/smali
CONFIG_PATH=$DEVICE_ROOT/config
TARGET_PATH=$PACKAGE_PATH/target_files
PACKAGE_FILE_RECORD_PATH=$DEVICE_ROOT/config/file_record/package/files.txt
FILE_RECORD_IGNORE=$DEVICE_ROOT/config/file_record/ignore.txt

# 进度控制文件
PROG_PREPARE_TARGET_TEMPL=$PROGRESS_PATH/prepare_target_template
PROG_PREPARE_SMALI_FILES=$PROGRESS_PATH/prepare_patched_smali_files
PROG_COMPILE_SMALI_FILES=$PROGRESS_PATH/compile_smali_files
PROG_PREPARE_SYSTEM_FILES=$PROGRESS_PATH/prepare_system_files
PROG_MAKE_BOOT_IMG=$PROGRESS_PATH/make_boot_img
PROG_GENERATE_APKCERTS=$PROGRESS_PATH/generate_apk_certs
PROG_GENERATE_FS_CONFIG=$PROGRESS_PATH/generate_filesystem_config
PROG_GENERATE_SYSTEM_LINK=$PROGRESS_PATH/generate_link_for_system_files
PROG_GENERATE_OTA_PACKAGE=$PROGRESS_PATH/generate_ota_package
PROG_CONCAT_BUILD_PROP=$PROGRESS_PATH/concat_build_prop
PROG_COPY_OVERRIDE_FILES=$PROGRESS_PATH/copy_override_files

mkdir -p "$SMALI_PATH"
mkdir -p "$TEMP_PATH"
mkdir -p `dirname "$PACKAGE_FILE_RECORD_PATH"`
touch "$PACKAGE_FILE_RECORD_PATH"

# 记录自动生成的文件
record_generated_file()
{
    local FILE=$1
    if [ ! -f "$FILE" ]; then
        return
    fi
    local RELATIVE_PATH=${FILE:${#PACKAGE_PATH}+1}
    local FILE_MD5=`md5sum "$FILE" | awk '{print $1}'`
    local EXIST_LINE=`grep "^$RELATIVE_PATH|.*" "$PACKAGE_FILE_RECORD_PATH" 2>/dev/null`
    if [ -z "$EXIST_LINE" ]; then
        echo "$RELATIVE_PATH|$FILE_MD5" >> "$PACKAGE_FILE_RECORD_PATH"
    else
        sed -i "s#$EXIST_LINE#$RELATIVE_PATH|$FILE_MD5#" "$PACKAGE_FILE_RECORD_PATH"
    fi
}

record_generated_files_for_dir()
{
    local DIR_PATH=$1
    local FILE_MD5=
    for FILE in `find "$DIR_PATH"`
    do
        if [ -f "$FILE" -a ! -L "$FILE" ]; then
            FILE_MD5=`md5sum "$FILE" | awk '{print $1}'`
            FILE=${FILE:${#PACKAGE_PATH}}
            if [ ${FILE:0:1} = "/" ]; then
                FILE=${FILE:1}
            fi
            local EXIST_LINE=`grep "^$FILE|.*" "$PACKAGE_FILE_RECORD_PATH" 2>/dev/null`
            if [ -z "$EXIST_LINE" ]; then
                echo "$FILE|$FILE_MD5" >> "$PACKAGE_FILE_RECORD_PATH"
            else
                sed -i "s#$EXIST_LINE#$FILE|$FILE_MD5#" "$PACKAGE_FILE_RECORD_PATH"
            fi
        fi
    done
}

# 备份时忽略指定的文件或目录
ignore_file_record()
{
    local FILE=$1
    local RELATIVE_PATH=${FILE:${#DEVICE_ROOT}+1}
    local EXIST_LINE=`grep "^$RELATIVE_PATH$" "$FILE_RECORD_IGNORE" 2>/dev/null`
    if [ -z "$EXIST_LINE" ]; then
        echo "$RELATIVE_PATH" >> "$FILE_RECORD_IGNORE"
    fi
}

# 准备target_files
prepare_target_template()
{
    echo -n "preparing target template ... "
    if [ -f "$PROG_PREPARE_TARGET_TEMPL" ]; then
        echo "skip."
        return
    fi
    if [ -d "$TARGET_PATH" ]; then
        cp -rf $PORT_CONFIG/target_files_template/* "$TARGET_PATH"
    else
        cp -rf "$PORT_CONFIG/target_files_template" "$TARGET_PATH"
    fi
    find "$TARGET_PATH" -name ".svn" | xargs rm -rf
    record_generated_files_for_dir "$TARGET_PATH"
    cp -rf $BOOT_PATH/* "$TARGET_PATH/BOOT/" > /dev/null 2>&1
    ignore_file_record "$TARGET_PATH/BOOT"
    touch "$PROG_PREPARE_TARGET_TEMPL"
    echo "done."
}

# 准备patch好的smali文件
prepare_patched_smali_files()
{
    echo -n "preparing patched smali files ... "
    if [ -f "$PROG_PREPARE_SMALI_FILES" ]; then
        echo "skip."
        return
    fi
    cp -rf $PATCH_PATH/smali/pack/* "$SMALI_PATH/"
    rm -rf "$SMALI_PATH/smali/"
    # TODO 应该记录这里的所有文件，因为它们可能会被开发者修改
    ignore_file_record "$SMALI_PATH"
    touch "$PROG_PREPARE_SMALI_FILES"
    echo "done."
}

# 编译smali文件
compile_smali_files()
{
    echo -n "compiling smali files ... "
    if [ -f $PROG_COMPILE_SMALI_FILES ]; then
        echo "skip."
        return
    fi
    echo ""

    # 移除之前的编译结果
    find "$SMALI_PATH/" -maxdepth 2 -name "build" | xargs rm -rf
    find "$SMALI_PATH/" -maxdepth 2 -name "dist" | xargs rm -rf
    
    APKTOOL="java -jar $APKTOOL_JAR"
    if [ "$AAPT_PATH" -a "$AAPT_PATH" != "default" ]; then
        APKTOOL="$APKTOOL -a \"$AAPT_PATH\""
    fi
    for SMALI_FOLDER in `ls "$SMALI_PATH/"`
    do
 
        echo "compiling $SMALI_PATH/$SMALI_FOLDER to jar ... "
        $APKTOOL b $SMALI_PATH/$SMALI_FOLDER/
        if [ $? -ne 0 ]; then
            echo "[ERROR] compile $SMALI_PATH/$SMALI_FOLDER to jar failed"
            exit 1
        fi
    done
    # 需要额外处理的app
    local MODIFIED_APPS_PATH=$PACKAGE_PATH/modified_apps
    find "$MODIFIED_APPS_PATH/" -maxdepth 3 -name "build" 2>/dev/null | xargs rm -rf
    find "$MODIFIED_APPS_PATH/" -maxdepth 3 -name "dist" 2>/dev/null | xargs rm -rf
    for SMALI_FOLDER in `ls "$MODIFIED_APPS_PATH/tos" 2>/dev/null`
    do
        echo "compiling $MODIFIED_APPS_PATH/tos/$SMALI_FOLDER to jar ... "
        local OLD_APKTOOL=$APKTOOL
        if [ -f $MODIFIED_APPS_PATH/tos/$SMALI_FOLDER/apktool ]; then
            APKTOOL=$MODIFIED_APPS_PATH/tos/$SMALI_FOLDER/apktool
            if [ -f $MODIFIED_APPS_PATH/tos/$SMALI_FOLDER/aapt ]; then
                APKTOOL="$APKTOOL -a \"$MODIFIED_APPS_PATH/tos/$SMALI_FOLDER/aapt\""
            fi
        fi
        $APKTOOL b $MODIFIED_APPS_PATH/tos/$SMALI_FOLDER/
        if [ $? -ne 0 ]; then
            echo "[ERROR] compile $MODIFIED_APPS_PATH/tos/$SMALI_FOLDER to jar failed"
            exit 1
        fi
        APKTOOL=$OLD_APKTOOL
        # 为了后续生成apkcerts，往apk中添加META-INF
        local MODIFIED_APK=`ls $MODIFIED_APPS_PATH/tos/$SMALI_FOLDER/dist/*.apk`
        local ORIGINAL_APK=`basename $MODIFIED_APK`
        ORIGINAL_APK=`find $PORT_DEVICE/tos/ota/system -name $ORIGINAL_APK`
        rm -rf $TEMP_PATH/META-INF
        unzip -oq "$ORIGINAL_APK" META-INF/* -d $TEMP_PATH/
        cd $TEMP_PATH
        zip -rq $MODIFIED_APK META-INF
    done
	
    for SMALI_FOLDER in `ls "$MODIFIED_APPS_PATH/target" 2>/dev/null`
    do
        echo "compiling $MODIFIED_APPS_PATH/target/$SMALI_FOLDER to jar ... "
        local OLD_APKTOOL=$APKTOOL
        if [ -f $MODIFIED_APPS_PATH/target/$SMALI_FOLDER/apktool ]; then
            APKTOOL=$MODIFIED_APPS_PATH/target/$SMALI_FOLDER/apktool
            if [ -f $MODIFIED_APPS_PATH/target/$SMALI_FOLDER/aapt ]; then
                APKTOOL="$APKTOOL -a \"$MODIFIED_APPS_PATH/target/$SMALI_FOLDER/aapt\""
            fi
        fi
        $APKTOOL b $MODIFIED_APPS_PATH/target/$SMALI_FOLDER/
        if [ $? -ne 0 ]; then
            echo "[ERROR] compile $MODIFIED_APPS_PATH/target/$SMALI_FOLDER to jar failed"
            exit 1
        fi
        APKTOOL=$OLD_APKTOOL
        # 为了后续生成apkcerts，往apk中添加META-INF
        local MODIFIED_APK=`ls $MODIFIED_APPS_PATH/target/$SMALI_FOLDER/dist/*.apk`
        local ORIGINAL_APK=`basename $MODIFIED_APK`
        ORIGINAL_APK=`find $DEVICE_ROOT/ota/system -name $ORIGINAL_APK`
        rm -rf $TEMP_PATH/META-INF
        unzip -oq "$ORIGINAL_APK" META-INF/* -d $TEMP_PATH/
        cd $TEMP_PATH
        zip -rq $MODIFIED_APK META-INF
    done

    for FILE in `find "$MODIFIED_APPS_PATH/" -maxdepth 3 -name "build" -o -name "dist" 2>/dev/null`
    do
        ignore_file_record "$FILE"
    done

    touch $PROG_COMPILE_SMALI_FILES
}

# 准备系统文件，联合目标设备文件和tos文件
copy_system_files_in_list()
{
    local SRC_DIR=$1
    local DEST_DIR=$2
    local FILE_LIST=$3
    
    while read FILE || [[ -n "$FILE" ]]
    do
        FILE=`echo "$FILE" | sed 's/^[[:space:]]*//' | sed 's/[[:space:]]*$//'`
        if [ -z "$FILE" ]; then
            continue
        elif [ "${FILE:0:1}" = "#" ]; then
            # 忽略此行
            continue
        elif [ -e "$SRC_DIR/$FILE" ]; then
            mkdir -p `dirname "$DEST_DIR/$FILE"`
            cp -rf "$SRC_DIR/$FILE" `dirname "$DEST_DIR/$FILE"`
        else
            echo "[WARNING] $SRC_DIR/$FILE in keep_files.list not exist"
        fi
    done < "$FILE_LIST"
}

prepare_system_files()
{
    echo -n "preparing system files ... "
    if [ -f $PROG_PREPARE_SYSTEM_FILES ]; then
        echo "skip."
        return
    fi
    
    local OTA_DIR=$DEVICE_ROOT/ota
    local SRC_DIR=$DEVICE_ROOT/ota/system
    local DEST_DIR=$TARGET_PATH/SYSTEM
    local TOS_SRC_DIR=$PORT_DEVICE/tos/ota/system
    local REMOVE_LIST=$CONFIG_PATH/remove_files.list
    local TOS_FILE_IGNORE=$CONFIG_PATH/tos_system_files.ignore
    local KEEP_LIST=$CONFIG_PATH/keep_files.list
    
    # 拷贝目标设备文件到目标目录
    rm -rf $DEST_DIR/*
    mkdir -p $DEST_DIR

    # 如果keep_files.list存在，仅拷贝这个文件列表中的文件
    local KEEP_LIST_EXIST=false
    if [ -f "$KEEP_LIST" ]; then
        local LINE_CNT=`sed "/^#/d" "$KEEP_LIST" | sed "/^[[:space:]]*$/d" | wc -l | awk '{print $1}'`
        if [ $LINE_CNT -gt 0 ]; then
            KEEP_LIST_EXIST=true
        fi
    fi
    
    if [ $KEEP_LIST_EXIST = true ]; then
        copy_system_files_in_list "$SRC_DIR" "$DEST_DIR" "$KEEP_LIST"
    else
        cp -rf $SRC_DIR/* $DEST_DIR/
    fi
    
    # 拷贝tos系统文件到目标目录，忽略需要移除列表中的文件
    for FILE in `find "$TOS_SRC_DIR/" -type f`
    do
        local RELATIVE_PATH=${FILE:${#TOS_SRC_DIR}+1}
        
        # 排除tos_system_files.ignore中的文件
        grep -x "$RELATIVE_PATH" "$TOS_FILE_IGNORE" > /dev/null 2>&1
        if [ $? -eq 0 ]; then
            continue
        fi
        
        local DEST_FILE=$DEST_DIR/$RELATIVE_PATH
        mkdir -p `dirname "$DEST_FILE"`
        cp -rf "$FILE" "$DEST_FILE"
    done
    
    # 拷贝新编译的jar包到目标目录
    find "$SMALI_PATH" -name "*.jar" -type f -o -name "*.apk" -type f | while read SRC_FILE
    do
        local FILE_NAME=`basename "$SRC_FILE"`
        local DEST_FILE=`find "$DEST_DIR" -name "$FILE_NAME"`
        if [ -z "$DEST_FILE" ]; then
            echo "[ERROR] cannot find '$FILE_NAME' in '$DEST_DIR'"
            exit 1
        fi
        cp -f "$SRC_FILE" "$DEST_FILE"
    done
    
    # 拷贝额外修改的app到目标目录
    local MODIFIED_APPS_PATH=$PACKAGE_PATH/modified_apps
    find "$MODIFIED_APPS_PATH" -name "*.apk" -type f 2>/dev/null | while read SRC_FILE
    do
        local FILE_NAME=`basename "$SRC_FILE"`
        local DEST_FILE=`find "$DEST_DIR" -name "$FILE_NAME"`
        if [ -z "$DEST_FILE" ]; then
            echo "[ERROR] cannot find '$FILE_NAME' in '$DEST_DIR'"
            exit 1
        fi
        cp -f "$SRC_FILE" "$DEST_FILE"
    done

	local CUSTOM_DIST_DIR=$PORT_DEVICE/$DEVICE_NAME/out/dist
    find "$CUSTOM_DIST_DIR" -name "*.apk" -type f 2>/dev/null | while read SRC_FILE
    do
        local FILE_NAME=`basename "$SRC_FILE"`
        local DEST_FILE=`find "$DEST_DIR" -name "$FILE_NAME"`
        if [ -z "$DEST_FILE" ]; then
            echo "[ERROR] cannot find '$FILE_NAME' in '$DEST_DIR'"
            exit 1
        fi
        cp -f "$SRC_FILE" "$DEST_FILE"
    done
	
	if [ $DESINTY="1080*720" ]; then
        local DEST_FILE=`find "$DEST_DIR" -name framework-qrom-res.apk`
        if [ -z "$DEST_FILE" ]; then
			echo "[ERROR] cannot find '$DEST_FILE' "
			exit 1
		fi
		cp $PORT_DEVICE/tos/extra_apk_for_adaptation/1280x720_framework-qrom-res.apk $DEST_FILE
	fi

    
    # 拷贝需要覆盖的系统文件到目标目录
    if [ -d "$DEVICE_ROOT/override/system" ]; then
        cp -rf $DEVICE_ROOT/override/system/* "$DEST_DIR/" 2>/dev/null
    fi
    
    # 删除文件
    if [ ! -f "$REMOVE_LIST" ]; then
        echo "[ERROR] $REMOVE_LIST does not exist"
        exit
    fi
    
    while read REMOVE_FILE || [[ -n "$REMOVE_FILE" ]]
    do
        REMOVE_FILE=`echo "$REMOVE_FILE" | sed 's/^[[:space:]]*//' | sed 's/[[:space:]]*$//'`
        if [ -z "$REMOVE_FILE" ]; then
            # 空行
            continue
        elif [ "${REMOVE_FILE:0:1}" = "#" ]; then
            # 忽略此行
            continue
        else
            rm -rf "$DEST_DIR/$REMOVE_FILE"
        fi
    done < "$REMOVE_LIST"
    
    find "$TARGET_PATH" -name ".svn" | xargs rm -rf
    
    record_generated_files_for_dir "$DEST_DIR"
    
    touch $PROG_PREPARE_SYSTEM_FILES
    echo "done."
}

# 打包boot.img
# 虽然ota_from_target_files.py会在预编译的boot.img不存在时自动编译boot.img
# 我们还是在这里编译，因为某些设备可能会有自定义格式的boot.img
make_boot_img()
{
    echo -n "making boot image ... "
    if [ -f $PROG_MAKE_BOOT_IMG ]; then
        echo "skip."
        return
    fi

    local SRC_DIR=$TARGET_PATH/BOOT
    local HAS_BOOT_RAMDISK=true
    if [ -z "`ls "$SRC_DIR"`" ]; then
        HAS_BOOT_RAMDISK=false
    fi
	
    # 使用设备特定的file_contexts
    if [ -f "$CONFIG_PATH/file_contexts" ]; then
        if [ $HAS_BOOT_RAMDISK = true ]; then
            local FILE_CONTEXTS=`find "$TARGET_PATH/BOOT/" -name file_contexts`
            cp -f "$CONFIG_PATH/file_contexts" "$FILE_CONTEXTS"
        else
            cp -f "$CONFIG_PATH/file_contexts" "$TARGET_PATH/META/"
        fi
    fi
    
    local DEST_FILE=$TARGET_PATH/BOOTABLE_IMAGES/boot.img
    local TOOLS_DIR=$DEVICE_ROOT/tools
    
    if [ -f "$DEST_FILE" ]; then
        echo ".done (use prebuilt boot.img)"
    else
        echo ""
        if [ $HAS_BOOT_RAMDISK = false ]; then
            echo "[ERROR] cannot find boot.img or boot ramdisk files. you can put boot.img in either ota.zip or in '$DEVICE_ROOT/override/BOOTABLE_IMAGES'"
            exit 1
        else
            $PACK_BOOTIMG_TOOL "$SRC_DIR" "$DEST_FILE"
            if [ $? -ne 0 ]; then
                echo "[ERROR] cannot make boot.img by $PACK_BOOTIMG_TOOL"
                exit 1
            fi
            record_generated_file "$DEST_FILE"
        fi
    fi
    
    touch $PROG_MAKE_BOOT_IMG
}

# 生成apkcerts.txt，两种方式：
# 1. 从package.xml读取
# 2. 从apk的manifest文件中读取并比较签名
is_odex_apk()
{
    local APK_FILE=$1
    local OTA_FILE=$DEVICE_ROOT/ota.zip
    # 格式: app/KeyChain.apk
    APK_FILE=${APK_FILE/.apk/.odex}
    APK_FILE="system/$APK_FILE"
    unzip -l "$OTA_FILE" | grep "$APK_FILE$" > /dev/null 2>&1
    if [ $? -eq 0 ]; then
        echo true
    else
        echo false
    fi
}

generate_apk_certs_from_manifest()
{
    local APKCERTS_TXT=$1
    local APK_PATH=$TARGET_PATH/SYSTEM
    local AAPT_TOOL=$PORT_TOOLS/android/aapt
    
    local APK_INFO_TEMP=$TEMP_PATH/apk_info.tmp
    local PLATFORM_CERT=
    local MEDIA_CERT=
    local SHARED_CERT=
    
    local TOS_SYSTEM_DIR=$PORT_DEVICE/tos/ota/system
	
    # 检查openssl是否存在
    openssl pkcs7 - > /dev/null 2>&1
    if [ $? -eq 127 ]; then
        echo "[ERROR] openssl not installed or not in PATH env"
        exit 1
    fi
    
    for APK_FILE in `find "$APK_PATH/" -iname "*.apk"`
    do
        local FILE_NAME=`basename "$APK_FILE"`
        # tos app在后面判断签名
        local TOS_FILE=`find "$TOS_SYSTEM_DIR" -name "$FILE_NAME"`
        if [ -n "$TOS_FILE" ]; then
            continue
        fi

        # 资源apk在反编译时可能去掉了META-INF目录，这里写死
        if [ ${APK_FILE/\/SYSTEM\/framework\//} != ${APK_FILE} ]; then
            echo "name=\"$FILE_NAME\" certificate=\"build/target/product/security/platform.x509.pem\" private_key=\"build/target/product/security/platform.pk8\"" >> "$APKCERTS_TXT"
            continue
        fi
        
        $AAPT_TOOL l -a "$APK_FILE" > "$APK_INFO_TEMP" 2>&1
        grep "android:sharedUserId.*=\"android.uid.system\"" "$APK_INFO_TEMP" > /dev/null 2>&1
        if [ $? -eq 0 ]; then
            if [ -z "$PLATFORM_CERT" ]; then
                # CERT文件不一定是CERT.RSA，也可能有多个RSA文件
                local RSA_FILE=`unzip -l "$APK_FILE" | egrep "META-INF/.*\.RSA|META-INF/.*\.DSA"  | head -n1 | awk '{print $NF}'`
                # TODO 一些apk可能没有META-INF目录，它们在反编译时被去掉了
                PLATFORM_CERT=`unzip -p "$APK_FILE" "$RSA_FILE" | openssl pkcs7 -inform DER -print_certs | md5sum | awk '{print $1}'`
            fi
            echo "name=\"$FILE_NAME\" certificate=\"build/target/product/security/platform.x509.pem\" private_key=\"build/target/product/security/platform.pk8\"" >> "$APKCERTS_TXT"
            continue
        fi
        
        grep "android:sharedUserId.*=\"android.media\"" "$APK_INFO_TEMP" > /dev/null 2>&1
        if [ $? -eq 0 ]; then
            if [ -z "$MEDIA_CERT" ]; then
                local RSA_FILE=`unzip -l "$APK_FILE" | egrep "META-INF/.*\.RSA|META-INF/.*\.DSA"  | head -n1 | awk '{print $NF}'`
                MEDIA_CERT=`unzip -p "$APK_FILE" "$RSA_FILE" | openssl pkcs7 -inform DER -print_certs | md5sum | awk '{print $1}'`
            fi
            echo "name=\"$FILE_NAME\" certificate=\"build/target/product/security/media.x509.pem\" private_key=\"build/target/product/security/media.pk8\"" >> "$APKCERTS_TXT"
            continue
        fi

        grep "android:sharedUserId.*=\"android.uid.shared\"" "$APK_INFO_TEMP" > /dev/null 2>&1
        if [ $? -eq 0 ]; then
            if [ -z "$SHARED_CERT" ]; then
                local RSA_FILE=`unzip -l "$APK_FILE" | egrep "META-INF/.*\.RSA|META-INF/.*\.DSA"  | head -n1 | awk '{print $NF}'`
                SHARED_CERT=`unzip -p "$APK_FILE" "$RSA_FILE" | openssl pkcs7 -inform DER -print_certs | md5sum | awk '{print $1}'`
            fi
            echo "name=\"$FILE_NAME\" certificate=\"build/target/product/security/shared.x509.pem\" private_key=\"build/target/product/security/shared.pk8\"" >> "$APKCERTS_TXT"
            continue
        fi
    done

    # 一些apk没有'sharedUserId'，这些apk我们可以将它们的签名与前面找到的已知apk的签名对比
    find "$APK_PATH/" -iname "*.apk" | while read APK_FILE
    do
        local FILE_NAME=`basename "$APK_FILE"`
        # tos app在后面判断签名
        local TOS_FILE=`find "$TOS_SYSTEM_DIR" -name "$FILE_NAME"`
        if [ -n "$TOS_FILE" ]; then
            continue
        fi
        
        grep -F "name=\"$FILE_NAME\"" "$APKCERTS_TXT" > /dev/null 2>&1
        if [ $? -eq 0 ]; then
            # 已经存在了
            continue
        fi
        
        # 资源apk在反编译时可能去掉了META-INF目录，这里写死
        if [ ${APK_FILE/\/SYSTEM\/framework\//} != ${APK_FILE} ]; then
            echo "name=\"$FILE_NAME\" certificate=\"build/target/product/security/platform.x509.pem\" private_key=\"build/target/product/security/platform.pk8\"" >> "$APKCERTS_TXT"
            continue
        fi
        
        local RSA_FILE=`unzip -l "$APK_FILE" | egrep "META-INF/.*\.RSA|META-INF/.*\.DSA"  | head -n1 | awk '{print $NF}'`
        # TODO 一些apk可能没有META-INF目录，它们在反编译时被去掉了
        local CURRENT_CERT=`unzip -p "$APK_FILE" "$RSA_FILE" | openssl pkcs7 -inform DER -print_certs | md5sum | awk '{print $1}'`
        if [ "$CURRENT_CERT" = "$PLATFORM_CERT" ]; then
            echo "name=\"$FILE_NAME\" certificate=\"build/target/product/security/platform.x509.pem\" private_key=\"build/target/product/security/platform.pk8\"" >> "$APKCERTS_TXT"
        elif [ "$CURRENT_CERT" = "$MEDIA_CERT" ]; then
            echo "name=\"$FILE_NAME\" certificate=\"build/target/product/security/media.x509.pem\" private_key=\"build/target/product/security/media.pk8\"" >> "$APKCERTS_TXT"
        elif [ "$CURRENT_CERT" = "$SHARED_CERT" ]; then
            echo "name=\"$FILE_NAME\" certificate=\"build/target/product/security/shared.x509.pem\" private_key=\"build/target/product/security/shared.pk8\"" >> "$APKCERTS_TXT"
        else
            # 那些进行过deodex的apk需要重新签名
            local ODEX_APK=`is_odex_apk "${APK_FILE:${#APK_PATH}+1}"`
            if [ $ODEX_APK = true ]; then
                # TODO 使用什么签名？
                echo "name=\"$FILE_NAME\" certificate=\"build/target/product/security/testkey.x509.pem\" private_key=\"build/target/product/security/testkey.pk8\"" >> "$APKCERTS_TXT"
            else
                echo "name=\"$FILE_NAME\" certificate=\"PRESIGNED\" private_key=\"\"" >> "$APKCERTS_TXT"
            fi
        fi
    done
    
    # 为tos的apk生成签名信息
    PLATFORM_CERT=
    MEDIA_CERT=
    SHARED_CERT=
    for APK_FILE in `find "$TOS_SYSTEM_DIR" -type f -iname "*.apk"`
	do
        local FILE_NAME=`basename "$APK_FILE"`
        # 资源apk在反编译时可能去掉了META-INF目录，这里写死
        if [ ${APK_FILE/\/system\/framework\//} != ${APK_FILE} ]; then
            echo "name=\"$FILE_NAME\" certificate=\"build/target/product/security/platform.x509.pem\" private_key=\"build/target/product/security/platform.pk8\"" >> "$APKCERTS_TXT"
            continue
        fi
        
        $AAPT_TOOL l -a "$APK_FILE" > "$APK_INFO_TEMP" 2>&1
        grep "android:sharedUserId.*=\"android.uid.system\"" "$APK_INFO_TEMP" > /dev/null 2>&1
        if [ $? -eq 0 ]; then
            if [ -z "$PLATFORM_CERT" ]; then
                # CERT文件不一定是CERT.RSA，也可能有多个RSA文件
                local RSA_FILE=`unzip -l "$APK_FILE" | egrep "META-INF/.*\.RSA|META-INF/.*\.DSA"  | head -n1 | awk '{print $NF}'`
                # TODO 一些apk可能没有META-INF目录，它们在反编译时被去掉了
                PLATFORM_CERT=`unzip -p "$APK_FILE" "$RSA_FILE" | openssl pkcs7 -inform DER -print_certs | md5sum | awk '{print $1}'`
            fi
            echo "name=\"$FILE_NAME\" certificate=\"build/target/product/security/platform.x509.pem\" private_key=\"build/target/product/security/platform.pk8\"" >> "$APKCERTS_TXT"
            continue
        fi
        
        grep "android:sharedUserId.*=\"android.media\"" "$APK_INFO_TEMP" > /dev/null 2>&1
        if [ $? -eq 0 ]; then
            if [ -z "$MEDIA_CERT" ]; then
                local RSA_FILE=`unzip -l "$APK_FILE" | egrep "META-INF/.*\.RSA|META-INF/.*\.DSA"  | head -n1 | awk '{print $NF}'`
                MEDIA_CERT=`unzip -p "$APK_FILE" "$RSA_FILE" | openssl pkcs7 -inform DER -print_certs | md5sum | awk '{print $1}'`
            fi
            echo "name=\"$FILE_NAME\" certificate=\"build/target/product/security/media.x509.pem\" private_key=\"build/target/product/security/media.pk8\"" >> "$APKCERTS_TXT"
            continue
        fi

        grep "android:sharedUserId.*=\"android.uid.shared\"" "$APK_INFO_TEMP" > /dev/null 2>&1
        if [ $? -eq 0 ]; then
            if [ -z "$SHARED_CERT" ]; then
                local RSA_FILE=`unzip -l "$APK_FILE" | egrep "META-INF/.*\.RSA|META-INF/.*\.DSA"  | head -n1 | awk '{print $NF}'`
                SHARED_CERT=`unzip -p "$APK_FILE" "$RSA_FILE" | openssl pkcs7 -inform DER -print_certs | md5sum | awk '{print $1}'`
            fi
            echo "name=\"$FILE_NAME\" certificate=\"build/target/product/security/shared.x509.pem\" private_key=\"build/target/product/security/shared.pk8\"" >> "$APKCERTS_TXT"
            continue
        fi
	done

    # 一些apk没有'sharedUserId'，这些apk我们可以将它们的签名与前面找到的已知apk的签名对比
    for APK_FILE in `find "$TOS_SYSTEM_DIR" -type f -iname "*.apk"`
	do
        local FILE_NAME=`basename "$APK_FILE"`
        grep -F "name=\"$FILE_NAME\"" "$APKCERTS_TXT" > /dev/null 2>&1
        if [ $? -eq 0 ]; then
            # 已经存在了
            continue
        fi
        
        # 资源apk在反编译时可能去掉了META-INF目录，这里写死
        if [ ${APK_FILE/\/system\/framework\//} != ${APK_FILE} ]; then
            echo "name=\"$FILE_NAME\" certificate=\"build/target/product/security/platform.x509.pem\" private_key=\"build/target/product/security/platform.pk8\"" >> "$APKCERTS_TXT"
            continue
        fi
        
        local RSA_FILE=`unzip -l "$APK_FILE" | egrep "META-INF/.*\.RSA|META-INF/.*\.DSA"  | head -n1 | awk '{print $NF}'`
        # TODO 一些apk可能没有META-INF目录，它们在反编译时被去掉了
        local CURRENT_CERT=`unzip -p "$APK_FILE" "$RSA_FILE" | openssl pkcs7 -inform DER -print_certs | md5sum | awk '{print $1}'`
        if [ "$CURRENT_CERT" = "$PLATFORM_CERT" ]; then
            echo "name=\"$FILE_NAME\" certificate=\"build/target/product/security/platform.x509.pem\" private_key=\"build/target/product/security/platform.pk8\"" >> "$APKCERTS_TXT"
        elif [ "$CURRENT_CERT" = "$MEDIA_CERT" ]; then
            echo "name=\"$FILE_NAME\" certificate=\"build/target/product/security/media.x509.pem\" private_key=\"build/target/product/security/media.pk8\"" >> "$APKCERTS_TXT"
        elif [ "$CURRENT_CERT" = "$SHARED_CERT" ]; then
            echo "name=\"$FILE_NAME\" certificate=\"build/target/product/security/shared.x509.pem\" private_key=\"build/target/product/security/shared.pk8\"" >> "$APKCERTS_TXT"
        else
            echo "name=\"$FILE_NAME\" certificate=\"PRESIGNED\" private_key=\"\"" >> "$APKCERTS_TXT"
        fi
	done
	
	rm "$APK_INFO_TEMP"
}

generate_apk_certs()
{
    echo -n "generating apkcerts.txt ... "

    local REGENERATE=true
    local APKCERTS_TXT=$TARGET_PATH/META/apkcerts.txt
    if [ -f "$APKCERTS_TXT" ]; then
        if [ `stat -c %s "$APKCERTS_TXT"` -gt 0 ]; then
            REGENERATE=false
        fi
    fi
    if [ $REGENERATE = false ]; then
        # 检查是否所有的系统apk在apkcerts文件都有指定签名
        # 如果没有，则重新生成
        for FILE in `find "$TARGET_PATH/SYSTEM" -name "*.apk" 2>/dev/null`
        do
            local FILE_NAME=`basename "$FILE"`
            grep -F "name=\"$FILE_NAME\"" "$APKCERTS_TXT" > /dev/null 2>&1
            if [ $? -ne 0 ]; then
                REGENERATE=true
            fi
        done
    fi
    
    if [ $REGENERATE = true ]; then
        rm -f "$PROG_GENERATE_APKCERTS"
    fi
    
    if [ -f "$PROG_GENERATE_APKCERTS" ]; then
        echo "skip."
        return
    fi
    
    # 解析manifest
    generate_apk_certs_from_manifest "$APKCERTS_TXT"
    
    sort "$APKCERTS_TXT" | uniq > $TEMP_PATH/apkcerts.tmp
    mv "$TEMP_PATH/apkcerts.tmp" "$APKCERTS_TXT"
    
    record_generated_file "$APKCERTS_TXT"
    
    touch "$PROG_GENERATE_APKCERTS"
    echo "done."
}

# 生成filesystem_config.txt。这个文件用来定义文件的owner/mode/selinux标签
# 1、对于官方OTA包，从file_contexts或updater-script生成
# 2、对于system.img，从本地文件系统生成
generate_filesystem_config_from_file_contexts()
{
    local FILE_CONTEXTS=$1
    local OUTPUT_FILE=$2
    local FS_CONFIG_TOOL=$PORT_TOOLS/android/fs_config
    
    local SYSTEM_PATH="$TARGET_PATH/SYSTEM/"
    find "$SYSTEM_PATH" | while read FILE
    do
        if [ -d "$FILE" -a "$FILE" != "$SYSTEM_PATH" ]; then
            # 注意：对于目录，需要在最后加上'/'
            echo "system/${FILE:${#SYSTEM_PATH}}/" | "$FS_CONFIG_TOOL" -CS "$FILE_CONTEXTS" >> "$OUTPUT_FILE"
        else
            echo "system/${FILE:${#SYSTEM_PATH}}" | "$FS_CONFIG_TOOL" -CS "$FILE_CONTEXTS" >> "$OUTPUT_FILE"
        fi
    done
	#TODO:should deal it in ota_from_target python script
	 if [ ! -d $SYSTEM_PATH/etc/security ]; then
		echo system/etc/security | "$FS_CONFIG_TOOL" -CS "$FILE_CONTEXTS" >> "$OUTPUT_FILE"
		echo system/etc/security/otacerts.zip | "$FS_CONFIG_TOOL" -CS "$FILE_CONTEXTS" >> "$OUTPUT_FILE"
	 fi
}

generate_filesystem_config_from_updater_script()
{
    local SCRIPT_FILE=$1
    local OUTPUT_FILE=$2
    
    # set_metadata("/system/bin/app_process", "uid", 0, "gid", 2000, "mode", 0755, "capabilities", 0x0, "selabel", "u:object_r:zygote_exec:s0");
    # set_metadata_recursive("/system", "uid", 0, "gid", 0, "dmode", 0755, "fmode", 0644, "capabilities", 0x0, "selabel", "u:object_r:system_file:s0");
    # TODO
    echo -e "\n[ERROR] generate from updater-script not implemented. you must put a file_contexts file in $CONFIG_PATH"
    exit 1
}

# 从本地文件系统生成，只能得到owner/mode信息
generate_filesystem_config_from_file_system()
{
    local SYSTEM_PATH=$1
    local OUTPUT_FILE=$2

    # TODO
    echo -e "\n[ERROR] generate from file system not implemented. you must put a file_contexts file in $CONFIG_PATH"
    exit 1
}

generate_filesystem_config()
{
    echo -n "generating filesystem_config.txt ... "
    if [ -f "$PROG_GENERATE_FS_CONFIG" ]; then
        echo "skip."
        return
    fi
    
    local FS_CONFIG_FILE=$TARGET_PATH/META/filesystem_config.txt
    if [ -f "$FS_CONFIG_FILE" ]; then
        if [ `stat -c %s "$FS_CONFIG_FILE"` -gt 0 ]; then
            echo "skip."
            touch "$PROG_GENERATE_FS_CONFIG"
            return
        fi
    fi

    if [ -f "$CONFIG_PATH/file_contexts" ]; then
        generate_filesystem_config_from_file_contexts "$CONFIG_PATH/file_contexts" "$FS_CONFIG_FILE"
    else
        local BOOT_FILE_CONTEXT=`find "$TARGET_PATH/BOOT/" -name file_contexts`
        if [ -n "$BOOT_FILE_CONTEXT" ]; then
            generate_filesystem_config_from_file_contexts "$BOOT_FILE_CONTEXT" "$FS_CONFIG_FILE"
        elif [ -f "$DEVICE_ROOT/ota/META-INF/com/google/android/updater-script" ]; then
            generate_filesystem_config_from_updater_script "$DEVICE_ROOT/ota/META-INF/com/google/android/updater-script" "$FS_CONFIG_FILE"
        else
            generate_filesystem_config_from_file_system "$TARGET_PATH/SYSTEM" "$FS_CONFIG_FILE"
        fi
    fi
    
    if [ $? -ne 0 ]; then
        exit 1
    fi
    
    record_generated_file "$FS_CONFIG_FILE"
    
    echo "done."
    touch "$PROG_GENERATE_FS_CONFIG"
}

# 生成linkinfo.txt
generate_link_info_from_updater_script()
{
    local LINK_FILE=$TARGET_PATH/META/linkinfo.txt
	
	# 格式: symlink("mksh", "/system/bin/sh");
    # symlink("toolbox", "/system/bin/cat", "/system/bin/chcon");
    local LINK_START=false
    local SOURCE=
    while read LINE
    do
        if [ -z "$LINE" ]; then
            continue
        fi
    
        if [ $LINK_START = false ]; then
            if [ ${LINE:0:8} == "symlink(" ]; then
                LINK_START=true
                LINE=${LINE:8}
            fi
        fi
        
        if [ $LINK_START = true ]; then
            local COUNT=`echo "$LINE" | awk -F',' '{print NF}'` 
            for((i=1;i<=$COUNT;i++))
            do
                local SECTION=`echo "$LINE" | cut -d',' -f $i | sed 's/\"//g' | sed 's/^[[:space:]]*//' | sed 's/[[:space:]]*$//'`
                if [ -z "$SOURCE" -a $i -eq 1 ]; then
                    SOURCE="$SECTION"
                    continue
                fi
                local TEMP_SECTION=${SECTION%%)*}
                if [ -z "$TEMP_SECTION" ]; then
                continue
                fi
                
                echo "$TEMP_SECTION|$SOURCE" >> "$LINK_FILE"
                if [ "$TEMP_SECTION" != "$SECTION" ]; then
                    LINK_START=false
                    SOURCE=
                fi
            done
        fi
    done < "$DEVICE_ROOT/ota/META-INF/com/google/android/updater-script"
}

generate_link_info_from_file_system()
{
    local LINK_FILE=$TARGET_PATH/META/linkinfo.txt
    
    cd $DEVICE_ROOT/ota
    find system/ | while read FILE
    do
        # 忽略删除的文件
        # 不是很必要及准确（可能是目录）
        grep "^${FILE:7}$" $CONFIG_PATH/remove_files.list > /dev/null 2>&1
        if [ $? -eq 0 ]; then
            continue
        fi
        
        if [ -L "$FILE" ]; then
            local LINK=`ls -l "$FILE" | awk '{print $NF}'`
            echo "$FILE|$LINK" >> "$LINK_FILE"
        fi
    done
    cd - > /dev/null 2>&1
}

generate_link_info()
{
    echo -n "generating linkinfo.txt ... "
    local LINK_FILE=$TARGET_PATH/META/linkinfo.txt
    
    if [ -f "$DEVICE_ROOT/ota/META-INF/com/google/android/updater-script" ]; then
        generate_link_info_from_updater_script
    else
        generate_link_info_from_file_system
    fi
    
    record_generated_file "$LINK_FILE"
    
    echo "done."
}

# 对系统文件生成链接信息
generate_link_for_system_files()
{
    local LINK_FILE=$TARGET_PATH/META/linkinfo.txt
    if [ ! -f "$LINK_FILE" ]; then
        generate_link_info
    else
        if [ `stat -c %s "$LINK_FILE"` -eq 0 ]; then
            generate_link_info
        fi
    fi

    echo -n "generating link for system files ... "
    if [ -f "$PROG_GENERATE_SYSTEM_LINK" ]; then
        echo "skip."
        return
    fi
    
    # 将大写的SYSTEM改成小写，因为一些链接可能使用绝对路径
    mv "$TARGET_PATH/SYSTEM" "$TARGET_PATH/system"
    while read LINE
    do
        # 格式: /system/bin/cat|toolbox
        local TARGET=`echo "$LINE" | cut -d'|' -f1`
        local SOURCE=`echo "$LINE" | cut -d'|' -f2`
        
        local DIR=`dirname "$TARGET"`
        local NAME=`basename "$TARGET"`
        # 文件可能在remove_files.list中
        if [ -d "$TARGET_PATH/$DIR" ]; then
            cd "$TARGET_PATH/$DIR"
            ln -sf "$SOURCE" "$NAME"
            cd - > /dev/null 2>&1
        fi
    done < "$LINK_FILE"
    mv "$TARGET_PATH/system" "$TARGET_PATH/SYSTEM"
    
    echo "done."
    touch "$PROG_GENERATE_SYSTEM_LINK"
}

generate_misc_info()
{
    echo "preparing misc_info.txt & recovery.fstab ... "
    echo "[IMPORTANT] please make sure you have configured misc_info.txt and recovery.fstab correctly!"
    
    local MISC_INFO_FILE=$CONFIG_PATH/misc_info.txt
    if [ ! -f "$MISC_INFO_FILE" ]; then
        echo "[ERROR] you should place misc_info.txt in '$CONFIG_PATH'"
        exit 1
    fi
    
    # 检查misc_info.txt的格式
    egrep "boot_size=[0-9]+" "$MISC_INFO_FILE"  > /dev/null 2>&1
    if [ $? -ne 0 ]; then
        echo "[ERROR] you should specify 'boot_size' in $MISC_INFO_FILE"
        exit 1
    fi

    egrep "recovery_size=[0-9]+" "$MISC_INFO_FILE"  > /dev/null 2>&1
    if [ $? -ne 0 ]; then
        echo "[ERROR] you should specify 'recovery_size' in $MISC_INFO_FILE"
        exit 1
    fi

    egrep "system_size=[0-9]+" "$MISC_INFO_FILE"  > /dev/null 2>&1
    if [ $? -ne 0 ]; then
        echo "[ERROR] you should specify 'system_size' in $MISC_INFO_FILE"
        exit 1
    fi

    egrep "cache_size=[0-9]+" "$MISC_INFO_FILE"  > /dev/null 2>&1
    if [ $? -ne 0 ]; then
        echo "[ERROR] you should specify 'cache_size' in $MISC_INFO_FILE"
        exit 1
    fi
    
    # 配置selinux_fc
    local SELINUX_FC=
    if [ -n "`ls "$TARGET_PATH/BOOT/"`" ]; then
        # 有boot文件，使用BOOT/RAMDISK/file_contexts
        SELINUX_FC=`find "$TARGET_PATH/BOOT/" -name file_contexts`
        SELINUX_FC=${SELINUX_FC:${#TARGET_PATH}+1}
    else
        # 没有boot文件，使用META/file_contexts
        SELINUX_FC="META/file_contexts"
    fi
    if [ -z "`grep "selinux_fc=" "$MISC_INFO_FILE"`" ]; then
        echo "selinux_fc=$SELINUX_FC" >> "$MISC_INFO_FILE"
    else
        sed -i "s#selinux_fc=.*#selinux_fc=$SELINUX_FC#" "$MISC_INFO_FILE"
    fi
    #add device assertions configuration
	sed -i "/recovery_device_assert=/d" "$MISC_INFO_FILE"
	echo "recovery_device_assert=$RECOVERY_DEVICE_ASSERT">> "$MISC_INFO_FILE"
	
    cp -f "$MISC_INFO_FILE" "$TARGET_PATH/META/"
    
    if [ -f "$CONFIG_PATH/recovery.fstab" ]; then
        mkdir -p "$TARGET_PATH/RECOVERY/RAMDISK/etc/"
        cp -f "$CONFIG_PATH/recovery.fstab" "$TARGET_PATH/RECOVERY/RAMDISK/etc/"
    fi
    
    if [ ! -f "$TARGET_PATH/RECOVERY/RAMDISK/etc/recovery.fstab" ]; then
        echo "[ERROR] cannot find '$TARGET_PATH/RECOVERY/RAMDISK/etc/recovery.fstab'"
        exit 1
    fi
    
    if [ `stat -c %s "$TARGET_PATH/RECOVERY/RAMDISK/etc/recovery.fstab"` -eq 0 ]; then
        echo "[ERROR] invalid '$TARGET_PATH/RECOVERY/RAMDISK/etc/recovery.fstab'"
        exit 1
    fi
    
    ignore_file_record "$TARGET_PATH/META/misc_info.txt"
    ignore_file_record "$TARGET_PATH/RECOVERY/RAMDISK/etc/recovery.fstab"

    echo "done."
}

generate_ota_package()
{
    echo "generating final ota package ... "
    if [ -f "$PROG_GENERATE_OTA_PACKAGE" ]; then
        echo "skip."
        return
    fi
    
    # TODO 命名规则？
    local OUTPUT_FILE=$PACKAGE_PATH/$DEVICE_NAME.zip

    local TARGET_FILES_UNSIGNED=$TEMP_PATH/target_files-unsigned.zip
    local TARGET_FILES=$PACKAGE_PATH/target_files.zip
    cd $TARGET_PATH
    zip -ry "$TARGET_FILES_UNSIGNED" *
    if [ $? -ne 0 ]; then
        echo "[ERROR] zip target files failed"
        rm "$TARGET_FILES_UNSIGNED"
        cd - > /dev/null 2>&1
        exit 1
    fi
    cd - > /dev/null 2>&1
	
    # 重新签名
    local RELEASE_TOOL=$PORT_TOOLS/releasetools
    "$RELEASE_TOOL/sign_target_files_apks" -d "$PORT_CONFIG/security" "$TARGET_FILES_UNSIGNED" "$TARGET_FILES"
    if [ $? -ne 0 ]; then
        echo "[ERROR] sign $TARGET_FILES_UNSIGNED failed"
        rm "$TARGET_FILES_UNSIGNED"
        rm "$TARGET_FILES"
        exit 1
    fi
    
    rm "$TARGET_FILES_UNSIGNED"
    
    local MAKE_OTA_CMD="-n -k $PORT_CONFIG/security/testkey"
    if [ "$SUITABLE_DEVICES" ]; then
        MAKE_OTA_CMD="$MAKE_OTA_CMD --suitable_devices $SUITABLE_DEVICES"
    fi
    MAKE_OTA_CMD="$MAKE_OTA_CMD $TARGET_FILES $OUTPUT_FILE"
    "$RELEASE_TOOL/ota_from_target_files" $MAKE_OTA_CMD
    if [ $? -ne 0 ]; then
        echo "[ERROR] generate ota package failed"
        rm "$TARGET_FILES"
        exit 1
    fi
    
    record_generated_file "$TARGET_FILES"
    record_generated_file "$OUTPUT_FILE"
    
    echo "done."
    touch "$PROG_GENERATE_OTA_PACKAGE"
}

# 将tos定制的build.prop合并到原厂build.prop
concat_build_prop()
{
    echo -n "concating build.prop ... "
    if [ -f "$PROG_CONCAT_BUILD_PROP" ]; then
        echo "skip."
        return
    fi
    
    # 检查定制的build.prop是否有正确配置
    local CUSTOMIZED_BUILD_PROP=$CONFIG_PATH/build.prop
    local DEST_BUILD_PROP=$PACKAGE_PATH/target_files/SYSTEM/build.prop
    if [ ! -f "$CUSTOMIZED_BUILD_PROP" ]; then
        echo -e "\n[ERROR] $CUSTOMIZED_BUILD_PROP not exist"
        exit 1
    fi
    
    local ANDROID_VER=`grep ro.qrom.build.os=.* "$CUSTOMIZED_BUILD_PROP" | cut -d'=' -f2`
    if [ -z "$ANDROID_VER" ]; then
        # 从原厂build.prop中提取android版本
        local ANDROID_VER=`grep ro.build.version.release=.* "$DEVICE_ROOT/ota/system/build.prop" | cut -d'=' -f2`
        if [ -n "$ANDROID_VER" ]; then
            echo "$ANDROID_VER" | grep -i "android" > /dev/null 2>&1
            if [ $? -ne 0 ]; then
                ANDROID_VER="android$ANDROID_VER"
            fi
            sed -i "s#ro.qrom.build.os=#ro.qrom.build.os=$ANDROID_VER#" "$CUSTOMIZED_BUILD_PROP"
        fi
    fi
    
    while read LINE
    do
        if [ -z "$LINE" ]; then
            continue
        fi
        
        if [ ${LINE:0:1} = "#" ]; then
            continue
        fi
        
        local NAME=`echo "$LINE" | cut -d'=' -f1`
        local VALUE=`echo "$LINE" | cut -d'=' -f2 | sed 's/^[[:space:]]*//' | sed 's/[[:space:]]*$//'`
        if [ -z "$VALUE" ]; then
            echo -e "\n[ERROR] you haven't config '$NAME' in '$CUSTOMIZED_BUILD_PROP'"
            exit 1
        fi
    done < "$CUSTOMIZED_BUILD_PROP"
    
    # 每次都基于原厂的build.prop
    cp -f "$DEVICE_ROOT/ota/system/build.prop" "$PACKAGE_PATH/target_files/SYSTEM/"
    echo -e "\n#\n# TOS properties\n#" >> "$DEST_BUILD_PROP"
    
    while read LINE
    do
        if [ -z "$LINE" ]; then
            continue
        fi
        
        if [ ${LINE:0:1} = "#" ]; then
            continue
        fi
        
        local NAME=`echo "$LINE" | cut -d'=' -f1 | sed 's/^[[:space:]]*//' | sed 's/[[:space:]]*$//'`
        local VALUE=`echo "$LINE" | cut -d'=' -f2 | sed 's/^[[:space:]]*//' | sed 's/[[:space:]]*$//'`
        local EXIST_LINE=`grep "^$NAME=.*" "$DEST_BUILD_PROP" 2>/dev/null`
        if [ -z "$EXIST_LINE" ]; then
            # 添加
            echo "$LINE" >> "$DEST_BUILD_PROP"
        else
            # 覆盖
            sed -i "s#$EXIST_LINE#$LINE#" "$DEST_BUILD_PROP"
        fi
    done < "$CUSTOMIZED_BUILD_PROP"
    
    record_generated_file "$DEST_BUILD_PROP"
    
    echo "done."
    touch "$PROG_CONCAT_BUILD_PROP"
}

copy_override_files()
{
    echo -n "copy override files ... "
    if [ -f "$PROG_COPY_OVERRIDE_FILES" ]; then
        echo "skip."
        return
    fi
    
    local OVERRIDE_PATH=$DEVICE_ROOT/override
    
    # 之前老的版本使用了小写的system，如果存在，则改为大写
    if [ -d "$OVERRIDE_PATH/system" ]; then
        if [ -d "$OVERRIDE_PATH/SYSTEM" ]; then
            # SYSTEM目录也存在，则拷贝文件
            cp -rf $OVERRIDE_PATH/system/* $OVERRIDE_PATH/SYSTEM/
            rm -r $OVERRIDE_PATH/system
        else
            # SYSTEM目录不存在，则直接重命名
            mv $OVERRIDE_PATH/system $OVERRIDE_PATH/SYSTEM
        fi
    fi
    
    cp -rf $OVERRIDE_PATH/* $TARGET_PATH/

    echo "done."
    touch "$PROG_COPY_OVERRIDE_FILES"
}

main()
{
    prepare_target_template
    prepare_patched_smali_files
    compile_smali_files
    prepare_system_files
    concat_build_prop
    copy_override_files
    make_boot_img
    generate_apk_certs
    generate_filesystem_config
    generate_link_for_system_files
    generate_misc_info
    generate_ota_package
}

main


