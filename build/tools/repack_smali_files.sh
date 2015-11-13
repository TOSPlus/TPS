#!/bin/bash

# for debug
#set -x

if [ $# -ne 1 ]; then
    echo "usage: $0 device_name"
    echo "notice: you should also export PORT_CONFIG and PORT_DEVICE env variable"
    exit 1
fi

if [ -z $PORT_DEVICE ]; then
    echo "you should export PORT_DEVICE env variable point to the PORT_ROOT/devices directory"
    exit 1
fi

if [ $1 = "tos" -o $1 = "aosp" ]; then
    echo "[ERROR] you cannot run this command upon device '$1'"
    exit 1
fi

# 配置java环境
source $PORT_TOOLS/java_setup.sh $1
if [ $? -ne 0 ]; then
    exit 1
fi

DEVICE_NAME=$1
DEVICE_ROOT=$PORT_DEVICE/$DEVICE_NAME
TARGET_PATH=$DEVICE_ROOT/patch/smali/target
CONFIG_PATH=$DEVICE_ROOT/patch/config
TEMP_PATH=$DEVICE_ROOT/temp
PROGRESS_PATH=$DEVICE_ROOT/progress
PATCH_PATH=$DEVICE_ROOT/patch
PACK_PATH=$DEVICE_ROOT/patch/smali/pack
PATCH_FILE_RECORD_PATH=$DEVICE_ROOT/config/file_record/patch/files.txt
PACK_FILE_RECORD_PATH=$DEVICE_ROOT/config/file_record/patch/smali/pack/files.txt
FILE_RECORD_IGNORE=$DEVICE_ROOT/config/file_record/ignore.txt

mkdir -p "$TEMP_PATH"
mkdir -p `dirname "$PATCH_FILE_RECORD_PATH"`
touch "$PATCH_FILE_RECORD_PATH"
mkdir -p `dirname "$PACK_FILE_RECORD_PATH"`
touch "$PACK_FILE_RECORD_PATH"

# 进度控制文件
PROG_REPACK_JARS=$PROGRESS_PATH/repack_jars
PROG_COPY_ORIGINAL_FILES=$PROGRESS_PATH/copy_original_files
PROG_COPY_OVERWRITE_FILES=$PROGRESS_PATH/copy_overwrite_files

# 记录自动生成的文件
record_generated_file()
{
    local FILE=$1
    local BASE_PATH=$2
    local RECORD_FILE=$3
    if [ ! -f "$FILE" ]; then
        return
    fi
    
    local RELATIVE_PATH=${FILE:${#BASE_PATH}+1}
    local FILE_MD5=`md5sum "$FILE" | awk '{print $1}'`
    local EXIST_LINE=`grep "^$RELATIVE_PATH|.*" "$RECORD_FILE" 2>/dev/null`
    if [ -z "$EXIST_LINE" ]; then
        echo "$RELATIVE_PATH|$FILE_MD5" >> "$RECORD_FILE"
    else
        sed -i "s#$EXIST_LINE#$RELATIVE_PATH|$FILE_MD5#" "$RECORD_FILE"
    fi
}

record_generated_patch_file()
{
    record_generated_file "$1" "$PATCH_PATH" "$PATCH_FILE_RECORD_PATH"
}

record_generated_pack_file()
{
    record_generated_file "$1" "$PACK_PATH" "$PACK_FILE_RECORD_PATH"
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

# 检查是否所有文件都准备好了
check_preparation()
{
    if [ -f "$PROG_COMBINE_SMALI_PARTS" ]; then
        return 0
    fi

    # 所有patch失败的文件都必须被手工或自动解决了
    local PATCH_FAIL_SMALI=$TARGET_PATH/patch_failed.txt

    OLD_IFS=$IFS
    IFS=$'\n'
    while read LINE
    do
        
        # 格式: android/widget/Editor/Editor.smali
        local SMALI_TARGET_FILE=$TARGET_PATH/$LINE
        if [ -f "$SMALI_TARGET_FILE" ]; then
            continue
        fi
        echo "[ERROR] '$SMALI_TARGET_FILE' not exist. you can mannually solve 'make patch' conflicts or execute 'make javapatch'"
        exit 1
    done < "$PATCH_FAIL_SMALI"
    IFS=$OLD_IFS
}

# 将smali文件重新打包成jar包
repack_jars()
{
    echo "================================================"
    echo "repacking framework jars ... "
    if [ -f "$PROG_REPACK_JARS" ]; then
        echo "skip."
        return 0
    fi

    local ORIGINAL_PATH=$DEVICE_ROOT/smali

    if [ ! -f "$PROG_COPY_ORIGINAL_FILES" ]; then
        # 拷贝原始的smali文件到pack目录
        # TODO 需要先做删除吗？
        echo -n "copying original files ... "
        cp -rf $ORIGINAL_PATH/* $PACK_PATH
        if [ $? -ne 0 ]; then
            echo "[ERROR] copy original files failed."
            exit 1
        fi
        touch "$PROG_COPY_ORIGINAL_FILES"
        echo "done."
    fi

    # 拷贝需要覆盖的smali文件到pack目录
    if [ ! -f "$PROG_COPY_OVERWRITE_FILES" ]; then
        for SMALI_FILE in `find "$TARGET_PATH" -name "*.smali"`
        do
            local RELATIVE_PATH=${SMALI_FILE:${#TARGET_PATH}+1}
            local ORIGINAL_FILE=`find "$ORIGINAL_PATH" -path "*/$RELATIVE_PATH" | head -n1`
            if [ -f "$ORIGINAL_FILE" ]; then
                RELATIVE_PATH=${ORIGINAL_FILE:${#ORIGINAL_PATH}+1}
                cp -f "$SMALI_FILE" "$PACK_PATH/$RELATIVE_PATH"
            else
                # 新加的文件，在tos目录中查找
                local TOS_PATH=$PORT_DEVICE/tos/smali
                ORIGINAL_FILE=`find "$TOS_PATH" -path "*/$RELATIVE_PATH" | head -n1`
                if [ -f "$ORIGINAL_FILE" ]; then
                    RELATIVE_PATH=${ORIGINAL_FILE:${#TOS_PATH}+1}
                    mkdir -p `dirname "$PACK_PATH/$RELATIVE_PATH"`
                    cp -f "$SMALI_FILE" "$PACK_PATH/$RELATIVE_PATH"
                else
                    # TODO 是不是可以直接放到android.policy下面？
                    echo "[ERROR] cannot find destination folder for $SMALI_FILE"
                    exit 1
                fi
            fi
        done

        touch "$PROG_COPY_OVERWRITE_FILES"
    fi
    
    # 将framework-qrom.jar中所有的smali文件拷贝到android.policy.jar中
    cp -rf "$PORT_DEVICE/tos/smali/framework-qrom.jar/smali" "$PACK_PATH/android.policy.jar/"
    
    for SMALI_FOLDER in `ls "$PACK_PATH/"`
    do
        if [ "$SMALI_FOLDER" = "smali" ]; then
            continue
        fi

        ignore_file_record "$PACK_PATH/$SMALI_FOLDER"
    done    

    # 将smali编译回jar包
    APKTOOL="java -jar $APKTOOL_JAR"
    if [ "$AAPT_PATH" -a "$AAPT_PATH" != "default" ]; then
        APKTOOL="$APKTOOL -a \"$AAPT_PATH\""
    fi
    
    for SMALI_FOLDER in `ls "$PACK_PATH/"`
    do
        if [ "$SMALI_FOLDER" = "smali" ]; then
            continue
        fi

        echo "compiling $PACK_PATH/$SMALI_FOLDER to jar ... "
        $APKTOOL b $PACK_PATH/$SMALI_FOLDER/
        if [ $? -ne 0 ]; then
            echo "[ERROR] compile $PACK_PATH/$SMALI_FOLDER to jar failed"
            exit 1
        fi
    done

    touch "$PROG_REPACK_JARS"
}

main()
{
    check_preparation
    repack_jars
}

main