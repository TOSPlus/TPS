#!/bin/bash

# 删除文件或目录，在此之前，备份开发者修改过的文件

#set -x

if [ $# -lt 3 ]; then
    echo "usage: $0 device_name file_or_folder clean_time"
    exit 1
fi

FORCE=false
if [ $# -gt 3 ]; then
    FORCE=$4
fi

DEVICE_NAME=$1
DEVICE_ROOT=$PORT_DEVICE/$DEVICE_NAME
REMOVE_FILE=$2
CLEAN_TIME=$3
BACKUP_PATH=$DEVICE_ROOT/backup/$CLEAN_TIME
FILE_RECORD_PATH=$DEVICE_ROOT/config/file_record
IGNORE_FILE=$FILE_RECORD_PATH/ignore.txt

remove_single_file()
{
    local FILE_PATH=$1
    local NEED_BACKUP=false
    
    # 检查是否在忽略列表里
    local RELATIVE_PATH=${FILE_PATH:${#DEVICE_ROOT}+1}
    local TEMP_PATH=$RELATIVE_PATH
    while true
    do
        local MATCH_LINE=`grep -n "^$TEMP_PATH$" "$IGNORE_FILE" 2>/dev/null | cut -d':' -f1`
        if [ -n "$MATCH_LINE" ]; then
	    # 忽略这个文件，不要备份
            echo "cleaning $FILE_PATH ..."
            rm -f "$FILE_PATH"
            if [ -f "$TEMP_PATH" ]; then
		# 从ignore.txt中删除
                sed -i "$MATCH_LINE d" "$IGNORE_FILE"
            fi
            return
        fi
        TEMP_PATH=`dirname "$TEMP_PATH"`
        if [ "$TEMP_PATH" = "." ]; then
            break
        fi
    done
    
    # 检查是否在文件记录列表里以及是否文件有修改过
    local FILE_RECORD_FILE=$FILE_RECORD_PATH
    local FOUND=false
    TEMP_PATH=`dirname "$RELATIVE_PATH"`
    while true
    do
        if [ -f "$FILE_RECORD_FILE/$TEMP_PATH/files.txt" ]; then
            local MATCH_LINE=`grep -n "^${RELATIVE_PATH:${#TEMP_PATH}+1}|" "$FILE_RECORD_FILE/$TEMP_PATH/files.txt" 2>/dev/null`
            if [ -n "$MATCH_LINE" ]; then
                local LINE_NUM=`echo "$MATCH_LINE" | cut -d':' -f1`
                local OLD_MD5=`echo "$MATCH_LINE" | cut -d'|' -f2`
                local NEW_MD5=`md5sum "$FILE_PATH" | awk '{print $1}'`
                if [ "$OLD_MD5" != "$NEW_MD5" ]; then
                    NEED_BACKUP=true
                fi
		# 从列表文件中删除
                sed -i "$LINE_NUM d" "$FILE_RECORD_FILE/$TEMP_PATH/files.txt"
                FOUND=true
            fi
            break
        fi
        TEMP_PATH=`dirname "$TEMP_PATH"`
        if [ "$TEMP_PATH" = "." ]; then
            break
        fi
    done
    
    if [ "$FOUND" = false ]; then
        NEED_BACKUP=true
    fi
    
    if [ "$NEED_BACKUP" = true ]; then
	# 备份文件
        local DEST_FILE=$BACKUP_PATH/$RELATIVE_PATH
        mkdir -p `dirname "$DEST_FILE"`
        cp -f "$FILE_PATH" "$DEST_FILE"
    fi
    
    echo "cleaning $FILE_PATH ..."
    rm -f "$FILE_PATH"
}

main()
{
    if [ "$FORCE" = true ]; then
        rm -rf $REMOVE_FILE
        return
    fi

    local KEEP_FOLDER=true
    if [ -f "$REMOVE_FILE" ]; then
        remove_single_file "$REMOVE_FILE"
        return
    elif [ -d "$REMOVE_FILE" ]; then
        KEEP_FOLDER=false
    else
	# 是通配符
        KEEP_FOLDER=true
	# 去掉通配符
        if [ "${REMOVE_FILE:${#REMOVE_FILE}-2}" = "/*" ]; then
            REMOVE_FILE=${REMOVE_FILE:0:${#REMOVE_FILE}-2}
        fi
    fi

    while true
    do
        local EMPTY=true
        for FILE in `find $REMOVE_FILE 2>/dev/null`
        do
            EMPTY=false
            if [ -d "$FILE" ]; then
		# 检查是否在ingore.txt中
                local RELATIVE_PATH=${FILE:${#DEVICE_ROOT}+1}
                local MATCH_LINE=`grep -n "^$RELATIVE_PATH$" "$IGNORE_FILE" 2>/dev/null | cut -d':' -f1`
                if [ -n "$MATCH_LINE" ]; then
                    if [ "$FILE" != "$REMOVE_FILE" ]; then
                        echo "cleaning $FILE ..."
                        rm -rf "$FILE"
                    else
                        echo "cleaning $FILE ..."
                        rm -rf $FILE/*
                        EMPTY=true
                    fi
		    # 从ignore.txt中删除
                    sed -i "$MATCH_LINE d" "$IGNORE_FILE"
		    # 跳出循环，重建文件列表
                    break
                else
		    # 删除空目录
                    local DIR_FILE_LIST=`ls "$FILE"`
                    if [ -z "$DIR_FILE_LIST" ]; then
                        if [ "$FILE" != "$REMOVE_FILE" ]; then
                            echo "cleaning $FILE ..."
                            rm -rf "$FILE"
                        else
                            EMPTY=true
                        fi
                    fi
                fi
            elif [ -f "$FILE" ]; then
                remove_single_file "$FILE"
		# 如果父目录为空
                local PARENT_DIR=`dirname "$FILE"`
                local PARENT_DIR_FILE_LIST=`ls "$PARENT_DIR"`
                if [ -z "$PARENT_DIR_FILE_LIST" ]; then
                    if [ "$PARENT_DIR" != "$REMOVE_FILE" ]; then
                        echo "cleaning $PARENT_DIR ..."
                        rm -rf "$PARENT_DIR"
                    fi
                fi
            else
		# 可能是链接文件或者文件已经不存在了，因为父目录已经被删掉了
                echo "cleaning $FILE ..."
                rm -f "$FILE"
            fi
        done
        
        if [ "$EMPTY" = true ]; then
            break
        fi
    done
    
    echo "cleaning $REMOVE_FILE ..."
    if [ "$KEEP_FOLDER" = true ]; then
        rm -rf $REMOVE_FILE/*
    else
        rm -rf "$REMOVE_FILE"
    fi
}

main
