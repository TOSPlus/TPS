#!/bin/bash

# setup variables in makefile

#set -x

if [ $# -lt 1 ]; then
    echo "[ERROR] usage: source $0 device_name"
    return 1
fi

DEVICE_NAME=$1
DEVICE_ROOT=$PORT_DEVICE/$DEVICE_NAME
MAKEFILE=$DEVICE_ROOT/Makefile

export DEVICE_NAME=$DEVICE_NAME
export DEVICE_ROOT=$DEVICE_ROOT

if [ ! -f "$MAKEFILE" ]; then
    echo "[ERROR] $MAKEFILE not exist "
    return 1
fi

setup()
{
    local MAKEFILE_LIST="$MAKEFILE $PORT_BUILD/defines.mk"
    for MAKE_FILE in `echo "$MAKEFILE_LIST"`
    do
        while read LINE
        do
            if [ -z "$LINE" ]; then
                continue
            fi
            
            if [ ${LINE:0:1} = "#" ]; then
                continue
            fi
            
            if [ "${LINE/:=/}" = "$LINE" ]; then
                # TODO 目前仅支持':='定义
                continue
            fi
            
            local VAR_NAME=`echo "$LINE" | awk -F":=" '{print $1}' | sed 's/^[[:space:]]*//' | sed 's/[[:space:]]*$//'`
            local VAR_VALUE=`echo "$LINE" | awk -F":=" '{print $NF}' | sed 's/(//g' | sed 's/)//g' | sed 's/^[[:space:]]*//' | sed 's/[[:space:]]*$//'`
            VAR_VALUE=`eval echo $VAR_VALUE`
            
            # 对特殊变量进行特殊处理
            if [ "$VAR_NAME" = "APKTOOL_JAR" ]; then
                if [ -z "$VAR_VALUE" -o "$VAR_VALUE" == "default" ]; then
                    VAR_VALUE="$PORT_TOOLS/apktool/apktool.jar"
                fi
            elif [ "$VAR_NAME" = "SMALI_JAR" ]; then
                if [ -z "$VAR_VALUE" -o "$VAR_VALUE" == "default" ]; then
                    VAR_VALUE="$PORT_TOOLS/apktool/smali.jar"
                fi
            elif [ "$VAR_NAME" = "BAKSMALI_JAR" ]; then
                if [ -z "$VAR_VALUE" -o "$VAR_VALUE" == "default" ]; then
                    VAR_VALUE="$PORT_TOOLS/apktool/baksmali.jar"
                fi
            elif [ "$VAR_NAME" = "AAPT_PATH" ]; then
                if [ -z "$VAR_VALUE" -o "$VAR_VALUE" == "default" ]; then
                    VAR_VALUE="$PORT_TOOLS/android/aapt"
                fi
            elif [ "$VAR_NAME" = "UNPACK_BOOTIMG_TOOL" ]; then
                if [ -z "$VAR_VALUE" -o "$VAR_VALUE" == "default" ]; then
                    VAR_VALUE="$PORT_TOOLS/unpackbootimg.sh"
                fi
            elif [ "$VAR_NAME" = "PACK_BOOTIMG_TOOL" ]; then
                if [ -z "$VAR_VALUE" -o "$VAR_VALUE" == "default" ]; then
                    VAR_VALUE="$PORT_TOOLS/mkbootimg.sh"
                fi
            fi
            VAR_VALUE=`eval echo $VAR_VALUE`
            if [ ! -f "$VAR_VALUE" ]; then
                # 可能是相对路径
                local TEMP_PATH=$DEVICE_ROOT/$VAR_VALUE
                if [ -f "$TEMP_PATH" ]; then
                    VAR_VALUE="$TEMP_PATH"
                fi
            fi
            VAR_VALUE=`eval echo $VAR_VALUE`
            # TODO 检查路径是否存在，如果不存在抛出异常
            
            export $VAR_NAME="$VAR_VALUE"
        done < "$MAKE_FILE"
    done
    
    # TODO 处理makefile包含
}

setup
return $?
