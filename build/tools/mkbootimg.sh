#!/bin/bash

#set -x

if [ $# -ne 2 ]; then
    echo "usage: $0 source_dir output_file"
    exit 1
fi

if [ -z $PORT_TOOLS ]; then
    echo "you should export PORT_TOOLS env variable point to the PORT_ROOT/tools directory"
    exit 1
fi

SOURCE_DIR=$1
OUTPUT=$2

MK_BOOTFS=$PORT_TOOLS/android/mkbootfs
MK_BOOTIMG=$PORT_TOOLS/android/mkbootimg
FS_CONFIG=$PORT_TOOLS/android/fs_config
MINIGZIP=$PORT_TOOLS/android/minigzip
RAMDISK_PATH=$SOURCE_DIR/RAMDISK

#BOOT_FS_CONFIG=$SOURCE_DIR/META/boot_filesystem_config.txt
BOOT_FS_CONFIG=
if [ -f "$RAMDISK_PATH/file_contexts" ]; then
    BOOT_FS_CONFIG=`mktemp`
    # 生成boot_filesystem_config.txt
	find "$RAMDISK_PATH/" | while read FILE
	do
	    RELATIVE_PATH=${FILE:${#RAMDISK_PATH}+1}
		echo "$RELATIVE_PATH" | $FS_CONFIG -CS "$RAMDISK_PATH/file_contexts" >> "$BOOT_FS_CONFIG"
	done
fi

# mkbootfs
MK_BOOTFS_CMD=$MK_BOOTFS
if [ -f "$BOOT_FS_CONFIG" ]; then
    MK_BOOTFS_CMD="$MK_BOOTFS_CMD -f $BOOT_FS_CONFIG"
fi
MK_BOOTFS_CMD="$MK_BOOTFS_CMD $RAMDISK_PATH"

TEMP_RAMDISK=`mktemp`
$MK_BOOTFS_CMD | $MINIGZIP > "$TEMP_RAMDISK"
rm -rf "$BOOT_FS_CONFIG"

MKBOOT_SUCC=false
if [ -f "$TEMP_RAMDISK" ]; then
    file "$TEMP_RAMDISK" | grep "gzip" > /dev/null 2>&1
	if [ $? -eq 0 ]; then
	    MKBOOT_SUCC=true
	fi
fi

if [ $MKBOOT_SUCC = false ]; then
    echo "[ERROR] make ramdisk of boot.img failed"
	rm "$TEMP_RAMDISK"
    exit 1
fi

KERNEL=
SECOND=
CMDLINE=
BASE=
KERNEL_OFFSET=
RAMDISK_OFFSET=
SECOND_OFFSET=
TAGS_OFFSET=
BOARD=
PAGESIZE=

KERNEL=`find "$SOURCE_DIR" -maxdepth 1 -iname "*kernel*" | grep -v "offset" | head -n1`
if [ -z "$KERNEL" ]; then
    KERNEL=`find "$SOURCE_DIR" -maxdepth 1 -iname "*zImage*" | head -n1`
fi
if [ -z "$KERNEL" ]; then
    echo "[ERROR] cannot find kernel in $SOURCE_DIR"
	rm "$TEMP_RAMDISK"
    exit 1
fi
KERNEL_OFFSET=`find "$SOURCE_DIR" -maxdepth 1 -iname "*kernel_offset*" | head -n1 | xargs cat`

SECOND=`find "$SOURCE_DIR" -maxdepth 1 -iname "*second*" | grep -v "offset" | head -n1`
if [ "$SECOND" ]; then
    SECOND_OFFSET=`find "$SOURCE_DIR" -maxdepth 1 -iname "*second_offset*" | head -n1 | xargs cat`
    if [ "$SECOND" = "$SECOND_OFFSET" ]; then
        SECOND=""
        SECOND_OFFSET=""
    fi
fi

CMDLINE=`find "$SOURCE_DIR" -maxdepth 1 -iname "*cmdline*" | head -n1 | xargs cat`
BASE=`find "$SOURCE_DIR" -maxdepth 1 -iname "*base*" | head -n1 | xargs cat`
RAMDISK_OFFSET=`find "$SOURCE_DIR" -maxdepth 1 -iname "*ramdisk_offset*" | head -n1 | xargs cat`
TAGS_OFFSET=`find "$SOURCE_DIR" -maxdepth 1 -iname "*tags_offset*" | head -n1 | xargs cat`
BOARD=`find "$SOURCE_DIR" -maxdepth 1 -iname "*board*" | head -n1 | xargs cat`
PAGESIZE=`find "$SOURCE_DIR" -maxdepth 1 -iname "*pagesize*" | head -n1 | xargs cat`

MK_BOOTIMG_CMD="--kernel \"$KERNEL\" --ramdisk \"$TEMP_RAMDISK\""

if [ "$KERNEL_OFFSET" ]; then
    MK_BOOTIMG_CMD="$MK_BOOTIMG_CMD --kernel_offset \"$KERNEL_OFFSET\""
fi

if [ "$RAMDISK_OFFSET" ]; then
    MK_BOOTIMG_CMD="$MK_BOOTIMG_CMD --ramdisk_offset \"$RAMDISK_OFFSET\""
fi

if [ -n "$SECOND" ]; then
    if [ `stat -c %s "$SECOND"` -gt 0 ]; then
        MK_BOOTIMG_CMD="$MK_BOOTIMG_CMD --second \"$SECOND\""
        if [ "$SECOND_OFFSET" ]; then
            MK_BOOTIMG_CMD="$MK_BOOTIMG_CMD --second_offset \"$SECOND_OFFSET\""
        fi
    fi
fi

if [ "$CMDLINE" ]; then
    MK_BOOTIMG_CMD="$MK_BOOTIMG_CMD --cmdline \"$CMDLINE\""
fi

if [ "$BASE" ]; then
    MK_BOOTIMG_CMD="$MK_BOOTIMG_CMD --base \"$BASE\""
fi

if [ "$TAGS_OFFSET" ]; then
    MK_BOOTIMG_CMD="$MK_BOOTIMG_CMD --tags_offset \"$TAGS_OFFSET\""
fi

if [ "$BOARD" ]; then
    MK_BOOTIMG_CMD="$MK_BOOTIMG_CMD --board \"$BOARD\""
fi

if [ "$PAGESIZE" ]; then
    MK_BOOTIMG_CMD="$MK_BOOTIMG_CMD --pagesize \"$PAGESIZE\""
fi

MK_BOOTIMG_CMD="$MK_BOOTIMG_CMD --output \"$OUTPUT\""

echo "$MK_BOOTIMG $MK_BOOTIMG_CMD"

#$MK_BOOTIMG "$MK_BOOTIMG_CMD"
# 上面的写法会导致不能使用双引号引用参数
echo "$MK_BOOTIMG_CMD" | xargs $MK_BOOTIMG
RETURN_VALUE=$?

rm "$TEMP_RAMDISK"
exit $RETURN_VALUE
