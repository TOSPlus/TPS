#!/bin/bash

#set -x

if [ $# -ne 2 ]; then
    echo "usage: $0 input_bootimg output_dir"
    exit 1
fi

if [ -z $PORT_TOOLS ]; then
    echo "you should export PORT_TOOLS env variable point to the PORT_ROOT/tools directory"
    exit 1
fi

INPUT=$1
OUTPUT=$2

UNPACK_BOOTIMG=$PORT_TOOLS/android/unpackbootimg

mkdir -p $OUTPUT/RAMDISK

# 解包
$UNPACK_BOOTIMG -i $INPUT -o $OUTPUT
if [ $? -ne 0 ]; then
	exit 1
fi

# 解压ramdisk
RAMDISK_FILE=
for FILE in `ls $OUTPUT/*`
do
    FILE_TYPE=`file $FILE`
    if [ -z "$FILE_TYPE" ]; then
        continue
    fi

    # TODO 处理其它压缩格式
    if [ "${FILE_TYPE//gzip/}" != "${FILE_TYPE}" ]; then
        # gzip type
	gunzip -f "$FILE"
	RAMDISK_FILE=${FILE%\.*}
	break
    fi
done

if [ -z "$RAMDISK_FILE" ]; then
    echo "cannot find the ramdisk file"
    exit 1
fi

cd $OUTPUT/RAMDISK
cpio -i -d -m --no-absolute-filenames < "$RAMDISK_FILE"
rm "$RAMDISK_FILE"
cd - > /dev/null
