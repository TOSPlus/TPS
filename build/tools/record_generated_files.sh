#!/bin/bash

# 记录所有自动生成的但可能被开发者后面修改的文件，clean时先备份修改过的文件

#set -x

if [ $# -ne 2 ]; then
    echo "usage: $0 device_root_dir record_dir"
    exit 1
fi

DEVICE_ROOT=$1
if [ ${DEVICE_ROOT:${#DEVICE_ROOT}-1:1} = "/" ]; then
    DEVICE_ROOT=${DEVICE_ROOT:0:${#DEVICE_ROOT}-1}
fi

main()
{
    local SOURCE_DIR=$1
    local RELATIVE_PATH=${SOURCE_DIR:${#DEVICE_ROOT}}
    if [ ${RELATIVE_PATH:0:1} = "/" ]; then
        RELATIVE_PATH=${RELATIVE_PATH:1}
    fi
    local OUTPUT_FILE=$DEVICE_ROOT/config/file_record/$RELATIVE_PATH/files.txt
    mkdir -p `dirname "$OUTPUT_FILE"`
    rm -f "$OUTPUT_FILE"
    local FILE_MD5=
    for FILE in `find "$SOURCE_DIR"`
    do
        if [ -f "$FILE" -a ! -L "$FILE" ]; then
            FILE_MD5=`md5sum "$FILE" | awk '{print $1}'`
            FILE=${FILE:${#SOURCE_DIR}}
            if [ ${FILE:0:1} = "/" ]; then
                FILE=${FILE:1}
            fi
            echo "$FILE|$FILE_MD5" >> "$OUTPUT_FILE"
        fi
    done
}

main $2

