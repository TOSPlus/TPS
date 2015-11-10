#!/bin/bash

#set -x

if [ $# -lt 4 ]; then
    echo "usage: $0 system_dir output_dir framework_res_tag package_list"
    exit 1
fi

if [ ! -d $1 ]; then
    echo "you must specify the system dir as the first parameter"
    exit 1
fi

SYSTEM_DIR=$1
OUTPUT_DIR=$2
FRAMEWORK_RES_TAG=$3

APKTOOL="java -jar $APKTOOL_JAR"
VERSION=`$APKTOOL --version`
OUTPUT_OPTION=

if [ ! -d $OUTPUT_DIR ]; then
    mkdir -p $OUTPUT_DIR
fi

if [ ${VERSION:0:1} -gt 1 ]; then
    # apktool版本大于1的需要加'-o'参数
    OUTPUT_OPTION="-o"
fi

if [ "$AAPT_PATH" -a "$AAPT_PATH" != "default" ]; then
    APKTOOL="$APKTOOL -a \"$AAPT_PATH\""
fi

# 遍历包列表参数
i=1
for P in $@
do
    if [ $i -gt 3 ]; then
        FILE=`find $SYSTEM_DIR -name $P`
        if [ -f "$FILE" ]; then
            NAME=`basename "$FILE"`
            $APKTOOL d -f -t $FRAMEWORK_RES_TAG $OUTPUT_OPTION $OUTPUT_DIR/$NAME $FILE
            if [ $? -ne 0 ]; then
                echo "[ERROR] decompile $FILE failed"
                exit 1
            fi
        fi
    fi

    let i=i+1
done
