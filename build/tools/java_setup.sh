#!/bin/bash

#set -x

if [ $# -lt 1 ]; then
    echo "[ERROR] usage: source $0 device_name"
    return 1
fi

DEVICE_NAME=$1
DEVICE_ROOT=$PORT_DEVICE/$DEVICE_NAME
MAKEFILE=$DEVICE_ROOT/Makefile

java_setup()
{
    if [ -z "$APKTOOL_JAR" ]; then
        echo "[ERROR] please specify apktool jar path in $DEVICE_ROOT/Makefile"
        return 1
    fi
    local UNSUPPORT=`java -jar $APKTOOL_JAR -version 2>&1 | grep -i unsupported`
    if [ -z "$UNSUPPORT" ]; then
        # apktool与java的版本是匹配的
        return 0
    fi
    
    # 找到匹配的java版本
    local JAVA_SEARCH_PATHS="/usr/java /usr/local"
    local FIND_JAVA=
    for JAVA_SEARCH_PATH in $JAVA_SEARCH_PATHS
    do
        if [ ! -d "$JAVA_SEARCH_PATH" ]; then
            continue
        fi
        
        for JAVA_EXEC in `find "$JAVA_SEARCH_PATH" -name java -type f 2>/dev/null`
        do
            UNSUPPORT=`$JAVA_EXEC -jar $APKTOOL_JAR -version 2>&1 | grep -i unsupported`
            if [ -z "$UNSUPPORT" ]; then
                FIND_JAVA=$JAVA_EXEC
                break
            fi
        done
        if [ "$FIND_JAVA" ]; then
            break
        fi
    done
    
    if [ -z "$FIND_JAVA" ]; then
        echo "[ERROR] cannot find match java version for specified apktool version"
        return 1
    fi
    
    # TODO JAVA_EXEC可能位于JRE中，如果有JDK，应该使用JDK
    
    local JAVA_PATH=`dirname "$FIND_JAVA"`
    
    # export JAVA_HOME & PATH
    # 检查java是不是已经在PATH中了，如果是先从PATH中去掉
    local NEW_PATH=
    OLD_IFS=$IFS
    IFS=':'
    for SINGLE_PATH in $PATH
    do
        if [ ${SINGLE_PATH:${#SINGLE_PATH}-1} = "/" ]; then
            SINGLE_PATH=${SINGLE_PATH:0:${#SINGLE_PATH}}
        fi
    
        if [ "$SINGLE_PATH" = "$JAVA_PATH" ]; then
            continue
        fi
        
        if [ -z "$NEW_PATH" ]; then
            NEW_PATH=$SINGLE_PATH
        else
            NEW_PATH="$NEW_PATH:$SINGLE_PATH"
        fi
    done
    IFS=$OLD_IFS
    
    local JAVA_HOME=`dirname "$JAVA_PATH"`
    export JAVA_HOME="$JAVA_HOME"
    export PATH="$JAVA_PATH:$NEW_PATH"
}

java_setup
return $?
