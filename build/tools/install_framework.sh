#!/bin/bash

if [ $# -ne 2 ];then
    echo "usage: $0 system_framework_dir tag"
    exit 1
fi

if [ ! -d $1 ]; then
    echo "you must specify the system framework dir as the first parameter"
    exit 1
fi

FRAMEWORK_DIR=$1
TAG=$2

APKTOOL="java -jar $APKTOOL_JAR"
VERSION=`$APKTOOL --version`

if [ ${VERSION:0:1} -gt 1 ]; then
    # apktool版本大于1的需要加'-t'参数
    TAG="-t $TAG"
fi

# 安装framework下面的所有apk
for APK in $FRAMEWORK_DIR/*.apk
do
    $APKTOOL install-framework $APK $TAG
done
