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

DEVICE_NAME=$1
DEVICE_ROOT=$PORT_DEVICE/$DEVICE_NAME
ORIGINAL_PATH=$DEVICE_ROOT/smali
PATCH_PATH=$DEVICE_ROOT/patch
TARGET_PATH=$PATCH_PATH/smali/target
PACK_PATH=$PATCH_PATH/smali/pack
PACK_SMALI_PATH=$PACK_PATH/smali
CONFIG_PATH=$PATCH_PATH/config
TEMP_PATH=$DEVICE_ROOT/temp
PROGRESS_PATH=$DEVICE_ROOT/progress
PATCH_FILE_RECORD_PATH=$DEVICE_ROOT/config/file_record/patch/files.txt
PACK_FILE_RECORD_PATH=$DEVICE_ROOT/config/file_record/patch/smali/pack/files.txt
FILE_RECORD_IGNORE=$DEVICE_ROOT/config/file_record/ignore.txt
PATCH_FAIL_FILE=$TARGET_PATH/patch_failed.txt
CUSTOM_PATCH_DIR=$PORT_ROOT/custom_patch

# 进度控制文件

# 创建工作目录
mkdir -p $TARGET_PATH
mkdir -p $PACK_SMALI_PATH
mkdir -p $CONFIG_PATH
mkdir -p $TEMP_PATH
mkdir -p $PROGRESS_PATH
mkdir -p `dirname "$PATCH_FILE_RECORD_PATH"`
touch "$PATCH_FILE_RECORD_PATH"
mkdir -p `dirname "$PACK_FILE_RECORD_PATH"`
touch "$PACK_FILE_RECORD_PATH"

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

generate_file_list_for_dir()
{
    local DIR_PATH=$1
    local BASE_PATH=$2
    local OUTPUT_FILE=$3
    local FILE_MD5=
    for FILE in `find "$DIR_PATH"`
    do
        if [ -f "$FILE" -a ! -L "$FILE" ]; then
            FILE_MD5=`md5sum "$FILE" | awk '{print $1}'`
            FILE=${FILE:${#BASE_PATH}}
            if [ ${FILE:0:1} = "/" ]; then
                FILE=${FILE:1}
            fi
            local EXIST_LINE=`grep "^$FILE|.*" "$PATCH_FILE_RECORD_PATH" 2>/dev/null`
            if [ -z "$EXIST_LINE" ]; then
                echo "$FILE|$FILE_MD5" >> "$OUTPUT_FILE"
            else
                sed -i "s#$EXIST_LINE#$FILE|$FILE_MD5#" "$OUTPUT_FILE"
            fi
        fi
    done
}

record_generated_files_for_dir()
{
    generate_file_list_for_dir $1 $PATCH_PATH "$PATCH_FILE_RECORD_PATH"
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

# 拷贝文件
copy_file()
{
    local SOURCE_FILE=$1
    local SOURCE_DIR=$2
    local DEST_DIR=$3
    local RELATIVE_PATH=${SOURCE_FILE:${#SOURCE_DIR}}
    # 去掉前面的2个目录，比如/framework.jar/smali
    local DEST_FILE=$DEST_DIR${RELATIVE_PATH#/*/smali}
    mkdir -p `dirname $DEST_FILE`
    cp -f $SOURCE_FILE $DEST_FILE
    # 记录自动生成的文件
    if [ "${DEST_DIR:0:${#PACK_PATH}}" = "$PACK_PATH" ]; then
        record_generated_pack_file "$DEST_FILE"
    else
        record_generated_patch_file "$DEST_FILE"
    fi
}

# 拷贝目录
copy_dir()
{
#set -x
    local SOURCE_DIR=$1
    local DEST_DIR=$2
    
    mkdir -p "$DEST_DIR"
    cp -rf $SOURCE_DIR/* "$DEST_DIR/"

    local BASE_PATH=$PATCH_PATH
    local RECORD_FILE=$PATCH_FILE_RECORD_PATH
    if [ "${DEST_DIR:0:${#PACK_PATH}}" = "$PACK_PATH" ]; then
        BASE_PATH=$PACK_PATH
        RECORD_FILE=$PACK_FILE_RECORD_PATH
    fi
    
    local TEMP_FILE_LIST=$TEMP_PATH/file_list.tmp
    rm -f "$TEMP_FILE_LIST"
    touch "$TEMP_FILE_LIST"
    generate_file_list_for_dir "$SOURCE_DIR" "$SOURCE_DIR" "$TEMP_FILE_LIST"
    
    local RELATIVE_PATH=${DEST_DIR:${#BASE_PATH}+1}/
    sed -i "s#^#$RELATIVE_PATH#g" "$TEMP_FILE_LIST"
    
    #cat "$TEMP_FILE_LIST" >> "$RECORD_FILE"
    # 处理重复的项目
    local FILE=
    local FILE_MD5=
    local EXIST_MD5=
    while read LINE
    do
        FILE=`echo "$LINE" | cut -d'|' -f1`
        FILE_MD5=`echo "$LINE" | cut -d'|' -f2`
        local EXIST_LINE=`grep "^$FILE|.*" "$RECORD_FILE" 2>/dev/null`
        if [ -z "$EXIST_LINE" ]; then
            echo "$FILE|$FILE_MD5" >> "$RECORD_FILE"
        else
            EXIST_MD5=`echo "$EXIST_LINE" | cut -d'|' -f2`
            if [ "$EXIST_MD5" != "$FILE_MD5" ]; then
                sed -i "s#$EXIST_LINE#$FILE|$FILE_MD5#" "$RECORD_FILE"
            fi
        fi
    done < "$TEMP_FILE_LIST"
    
    rm -f "$TEMP_FILE_LIST"
#set +x
}

pattern_escape()
{
    local RESULT=${1//\[/\\\[}
    RESULT=${RESULT//\]/\\\]}
    RESULT=${RESULT//\$/\\\$}
    RESULT=${RESULT//\./\\\.}
    echo "$RESULT"
}

find_exact_match()
{
    local SEARCH_BASE_PATH=$1
    local RELATIVE_PATH=$2
    local SEARCH_RESULT=
    
    # find level by level
    # 1. full search. brand/model/os/baseband
    local SEARCH_PATH=$SEARCH_BASE_PATH/$DEVICE_BRAND/$DEVICE_NAME/$SW_VERSION
    while true
    do
        if [ "`basename "$SEARCH_PATH"`" != "$SW_VERSION" ]; then
            SEARCH_PATH=$SEARCH_PATH/general
        fi
        
        if [ -d "$SEARCH_PATH" ]; then
            # TODO should find both smali file and method file
            SEARCH_RESULT=`find "$SEARCH_PATH" -type f -path "*/$RELATIVE_PATH"`
            if [ -n "$SEARCH_RESULT" ]; then
                echo "$SEARCH_RESULT"
                return 0
            fi
            SEARCH_RESULT=`find "$SEARCH_PATH" -type f -path "*/$RELATIVE_PATH*.method"`
            if [ -n "$SEARCH_RESULT" ]; then
                echo "$SEARCH_RESULT"
                return 0
            fi
        fi
        
        if [ "`dirname "$SEARCH_PATH"`" = "$SEARCH_BASE_PATH" ]; then
            break
        fi

        SEARCH_PATH=`dirname "$SEARCH_PATH"`
    done
}

handle_override_smali()
{
    if [ -d "$CUSTOM_PATCH_DIR/override" ]; then
        local SEARCH_PATH=$CUSTOM_PATCH_DIR/override
        local SEARCH_LEVELS="$DEVICE_BRAND $DEVICE_NAME $SW_VERSION"
        for LEVEL in `echo "$SEARCH_LEVELS"`
        do
            SEARCH_PATH=$SEARCH_PATH/$LEVEL
            if [ "`basename "$SEARCH_PATH"`" != "$SW_VERSION" ]; then
                SEARCH_PATH=$SEARCH_PATH/general
            fi
            
            if [ -d "$SEARCH_PATH" ]; then
                for FILE in `find "$SEARCH_PATH" -type f`
                do
                    local RELATIVE_PATH=${FILE:${#SEARCH_PATH}+1}
                    local EXT_NAME=${RELATIVE_PATH##*/*\.}
                    if [ "$EXT_NAME" = "smali" ]; then
                        # if no the last level(os band), the override files should be in general folder
                        local TARGET_FILE=`find "$TARGET_PATH" -path "*/$RELATIVE_PATH" 2>/dev/null`
                        if [ -z "$TARGET_FILE" ]; then
                            TARGET_FILE=$TARGET_PATH/$RELATIVE_PATH
                            mkdir -p `dirname "$TARGET_FILE"`
                        fi
                        cp -f "$FILE" "$TARGET_FILE"
                    elif [ "$EXT_NAME" = "method" ]; then
                        RELATIVE_PATH=${RELATIVE_PATH}
                        local FILE_NAME=`basename "$RELATIVE_PATH"`
                        FILE_NAME=${FILE_NAME%%\.*}
                        RELATIVE_PATH=`dirname "$RELATIVE_PATH"`/$FILE_NAME.smali
                        local TARGET_FILE=`find "$TARGET_PATH" -path "*/$RELATIVE_PATH" 2>/dev/null`
                        if [ -n "$TARGET_FILE" ]; then
                            replace_method_in_smali "$TARGET_FILE" "$FILE"
                        else
                            echo "[WARNING] cannot find corresponding target file for override method '$RELATIVE_PATH'"
                        fi
                    fi
                done
            fi

            SEARCH_PATH=`dirname "$SEARCH_PATH"`
        done
    fi
}

replace_method_in_smali()
{
    local SMALI_FILE=$1
    local METHOD_FILE=$2
    local EMPTY_LINE='\\'
    
    local METHOD_START=false
    local METHOD_DEFINE=
    local LINE_NUM=
    local OLD_IFS=$IFS
    local REPLACE_LINE=false
    # to keep white space of each line
    IFS=''
    while read LINE
    do  
        REPLACE_LINE=false
        if [ "${LINE:0:7}" = ".method" ]; then
            # method define
            if [ $METHOD_START = false ]; then
                METHOD_START=true
                METHOD_DEFINE=$LINE
                METHOD_DEFINE=`pattern_escape "$METHOD_DEFINE"`
                # delete the original method
                local METHOD_LINE=`grep -n "$METHOD_DEFINE" "$SMALI_FILE"`
                if [ -z "$METHOD_LINE" ]; then
                    echo "[WARNING] cannot find `head -n1 $METHOD_FILE` in $SMALI_FILE"
                    return 1
                fi
                
                LINE_NUM=`echo "$METHOD_LINE" | cut -d':' -f1`
                while true
                do
                    local LINE=`sed -n "$LINE_NUM p" "$SMALI_FILE"`
                    # delete line
                    sed -i "$LINE_NUM d" "$SMALI_FILE"
                    if [ "${LINE:0:11}" = ".end method" ]; then
                        break
                    fi
                done
            else
                # if there are 2 lines of method define
                # the 1st line is the original definition of this method
                # the 2nd line is the new definition that should be replaced
                REPLACE_LINE=true
            fi
        elif [ "${LINE:0:11}" = ".end method" ]; then
            # method end
            METHOD_START=false
            REPLACE_LINE=true
        else
            # normal line
            if [ $METHOD_START = true ]; then
                REPLACE_LINE=true
            fi
        fi
        
        if [ $REPLACE_LINE = true ]; then
            LINE=`pattern_escape "$LINE"`
            if [ -n "$LINE" ]; then
                # \\ means keeep white spaces
                sed -i "$LINE_NUM i\\$LINE" "$SMALI_FILE"
            else
                # add empty line
                sed -i "$LINE_NUM i$EMPTY_LINE" "$SMALI_FILE"
            fi
            ((LINE_NUM++))
        fi
    done < "$METHOD_FILE"
    IFS=$OLD_IFS
}

merge_single_file()
{
    echo -n "patching $FILE ... "

    # TOS_FILE format: output_jars/temp/tos/framework/smali/android/hardware/Camera.smali
    local TOS_FILE=$1
    local TOS_SMALI_PATH=$2
    # RELATIVE_PATH format: framework/smali/android/hardware/Camera.smali
    local RELATIVE_PATH=${TOS_FILE:${#TOS_SMALI_PATH}+1}
    # RELATIVE_PATH format: android/hardware/Camera.smali
    RELATIVE_PATH=${RELATIVE_PATH#*/smali/}
    local ORIGIANL_FILE=`find "$ORIGINAL_PATH" -path "*/$RELATIVE_PATH" 2>/dev/null`
    if [ -z "$ORIGIANL_FILE" ]; then
        echo "fail."
        echo "[ERROR] cannot find corresponding original smali file of $RELATIVE_PATH"
        echo $RELATIVE_PATH >> $PATCH_FAIL_FILE
        return 1
    fi
    
    copy_file "$ORIGIANL_FILE" "$ORIGINAL_PATH" "$TARGET_PATH"
    local TARGET_FILE=`find "$TARGET_PATH" -path "*/$RELATIVE_PATH" 2>/dev/null`
    if [ -z "$TARGET_FILE" ]; then
        echo "fail."
        echo "[ERROR] cannot find corresponding target smali file of $RELATIVE_PATH"
        echo $RELATIVE_PATH >> $PATCH_FAIL_FILE
        return 1
    fi

    if [ -n "$CUSTOM_PATCH_DIR" ]; then
        # check custom patch rule
        if [ -d "$CUSTOM_PATCH_DIR/source" ]; then
            # check if has customized tos source smali file
            local TEMP_TOS_FILE=
            local SOURCE_SMALI=`find_exact_match "$CUSTOM_PATCH_DIR/source/tos" "$RELATIVE_PATH"`
            if [ -n "$SOURCE_SMALI" ]; then
                local OLD_IFS=$IFS
                IFS=$'\n'
                for LINE in `echo "$SOURCE_SMALI"`
                do
                    if [ "${LINE:${#LINE}-6}" = ".smali" ]; then
                        # smali file
                        TOS_FILE=$LINE
                        # ignore other possible method files
                        break
                    elif [ "${LINE:${#LINE}-7}" = ".method" ]; then
                        # method file
                        if [ -z "$TEMP_TOS_FILE" ]; then
                            TEMP_TOS_FILE=$TEMP_PATH/$RELATIVE_PATH
                            mkdir -p `dirname "$TEMP_PATH/$RELATIVE_PATH"`
                            cp -f "$TOS_FILE" "$TEMP_TOS_FILE"
                            TOS_FILE=$TEMP_TOS_FILE
                        fi
                        replace_method_in_smali "$TEMP_TOS_FILE" "$LINE"
                    fi
                done
                IFS=$OLD_IFS
            fi
            
            # check if has customized vendor source smali file
            SOURCE_SMALI=`find_exact_match "$CUSTOM_PATCH_DIR/source/vendor" "$RELATIVE_PATH"`
            if [ -n "$SOURCE_SMALI" ]; then
                local OLD_IFS=$IFS
                IFS=$'\n'
                for LINE in `echo "$SOURCE_SMALI"`
                do
                    if [ "${LINE:${#LINE}-6}" = ".smali" ]; then
                        # smali file
                        cp -f "$LINE" "$TARGET_FILE"
                        # ignore other possible method files
                        break
                    elif [ "${LINE:${#LINE}-7}" = ".method" ]; then
                        # method file
                        replace_method_in_smali "$TARGET_FILE" "$LINE"
                    fi
                done
                IFS=$OLD_IFS
            fi
        fi
        
        if [ -d "$CUSTOM_PATCH_DIR/patch" ]; then
            # TODO do custom patch
            echo "" > /dev/null
        fi
    fi
    
    # handle normal methods
    local OLD_IFS=$IFS
    IFS=$'\n'
    for LINE in `grep -n "^\.method.* tos_org" "$TOS_FILE"`
    do
        # LINE format: 744:.method public static tos_org_open()Landroid/hardware/Camera;
        local START_LINE=`echo "$LINE" | cut -d':' -f1`
        local FULL_METHOD_DEFINE=`echo "$LINE" | cut -d':' -f2`
        # method modifiers may be different
        local METHOD_DEFINE=`echo "$FULL_METHOD_DEFINE" | awk '{print $NF}'`
        local ORIG_METHOD_DEFINE=`echo "$METHOD_DEFINE" | sed 's/tos_org_//'`
        # replace original method definition
        local ORIG_METHOD_DEFINE_ESCAPED=`pattern_escape "$ORIG_METHOD_DEFINE"`
        local METHOD_DEFINE_ESCAPED=`pattern_escape "$METHOD_DEFINE"`
        local MD5_BEFORE=`md5sum "$TARGET_FILE" | awk '{print $1}'`
        # only replace the method definition, add a space ahead
        sed -i "s# $ORIG_METHOD_DEFINE_ESCAPED# $METHOD_DEFINE_ESCAPED#" "$TARGET_FILE"
        local MD5_AFTER=`md5sum "$TARGET_FILE" | awk '{print $1}'`
        if [ "$MD5_BEFORE" == "$MD5_AFTER" ]; then
            echo "fail."
            echo "[ERROR] replace $METHOD_DEFINE failed"
            echo $RELATIVE_PATH >> $PATCH_FAIL_FILE
            return 1
        fi
        # add tos definition to the end of the target file
        LINE=`grep -n "^\.method.* $ORIG_METHOD_DEFINE_ESCAPED" "$TOS_FILE"`
        if [ -z "$LINE" ]; then
            echo "fail."
            echo "[ERROR] cannot find the original definition of '$ORIG_METHOD_DEFINE'"
            echo $RELATIVE_PATH >> $PATCH_FAIL_FILE
            return 1
        fi
        
        if [ `echo "$LINE" | wc -l` -gt 1 ]; then
            echo "fail."
            echo "[ERROR] more than one method definition found for '$ORIG_METHOD_DEFINE' int '$TOS_FILE'"
            echo $RELATIVE_PATH >> $PATCH_FAIL_FILE
            return 1
        fi
        
        local LINE_NUM=`echo "$LINE" | cut -d':' -f1`
        echo >> "$TARGET_FILE"
        local PREV_LINE=
        while true
        do
            LINE=`sed -n "$LINE_NUM p" "$TOS_FILE"`
            if [ "${LINE:0:11}" = ".end method" ]; then
                echo "$LINE" >> "$TARGET_FILE"
                break;
            fi
            # check if it's a access invocation
            local ACCESS_NUM=`echo "$LINE" | grep -o 'access\$[0-9]\+'`
            if [ -n "$ACCESS_NUM" ]; then
                # check if access number is correct
                # last line format: 
                # getter for: Lcom/android/server/VibratorService$Vibration;->mPackageName:Ljava/lang/String;
                # invokes: Lcom/android/server/VibratorService;->doVibratorOn(JI)V
                # setter for: Lcom/android/server/VibratorService;->mImmVibeTouchMagnitude:I
                local ACCESS_TYPE=`echo "$PREV_LINE" | awk '{print $2}'`
                local ACCESS_MEMBER=`echo "$PREV_LINE" | awk '{print $NF}'`
                local CLASS_NAME=`echo "$ACCESS_MEMBER" | cut -d'-' -f1`
                CLASS_NAME=${CLASS_NAME:1:${#CLASS_NAME}-2}
                local ACCESS_SMALI_FILE=`find "$ORIGINAL_PATH" -path "*/$CLASS_NAME.smali"`
                if [ -z "$ACCESS_SMALI_FILE" ]; then
                    echo "fail."
                    echo "[ERROR] cannot find smali file for $CLASS_NAME"
                    echo $RELATIVE_PATH >> $PATCH_FAIL_FILE
                    return 1
                fi
                local ACCESS_MEMBER_ESCAPE=`pattern_escape "$ACCESS_MEMBER"`
                if [ "$ACCESS_TYPE" = "getter" ]; then
                    GREP_PATTERN="iget|sget|aget"
                elif [ "$ACCESS_TYPE" = "setter" ]; then
                    GREP_PATTERN="iput|sput|aput"
                elif [ "$ACCESS_TYPE" = "invokes" ]; then
                    GREP_PATTERN="invoke-.*"
                else
                    echo "fail."
                    echo "[ERROR] unrecognized access comment: $PREV_LINE"
                    echo $RELATIVE_PATH >> $PATCH_FAIL_FILE
                    return 1
                fi
                local FIND_ACCESS=false
                for GREP_LINE in `grep -n "$ACCESS_MEMBER_ESCAPE" "$ACCESS_SMALI_FILE" | egrep "$GREP_PATTERN"`
                do
                    local ACCESS_LINE_NUM=`echo "$GREP_LINE" | cut -d':' -f1`
                    # search backward to find the access method definition
                    while true
                    do
                        ((ACCESS_LINE_NUM--))
                        local ACCESS_LINE=`sed -n "$ACCESS_LINE_NUM p" "$ACCESS_SMALI_FILE"`
                        if [ "${ACCESS_LINE:0:7}" = ".method" ]; then
                            # is it an access method?
                            local REAL_ACCESS_NUM=`echo "$ACCESS_LINE" | grep -o 'access\$[0-9]\+'`
                            if [ -n "$REAL_ACCESS_NUM" ]; then
                                FIND_ACCESS=true
                                if [ "$REAL_ACCESS_NUM" != "$ACCESS_NUM" ]; then
                                    # replace
                                    LINE=`echo "$LINE" | sed "s/$ACCESS_NUM/$REAL_ACCESS_NUM/"`
                                fi
                            fi
                            break;
                        fi
                    done
                    if [ "$FIND_ACCESS" = true ]; then
                        break
                    fi
                done
                if [ "$FIND_ACCESS" = false ]; then
                    echo "fail."
                    echo "[ERROR] cannot find access method for $ACCESS_MEMBER"
                    echo $RELATIVE_PATH >> $PATCH_FAIL_FILE
                    return 1
                fi
            fi
            echo "$LINE" >> "$TARGET_FILE"
            PREV_LINE=$LINE
            ((LINE_NUM++))
        done
    done
    IFS=$OLD_IFS
    
    # handle constructors
    local CLASS_NAME=`basename "$TOS_FILE" | awk -F'$' '{print $NF}' | sed 's/\.smali//'`
    local CLASS_SIGNATURE=`head -n1 "$TARGET_FILE" | awk '{print $NF}'`
    OLD_IFS=$IFS
    IFS=$'\n'
    local TOS_METHOD_NAME=tos_"$CLASS_NAME"_init
    for LINE in `grep -n "^\.method.* $TOS_METHOD_NAME(" "$TOS_FILE" 2>/dev/null`
    do
        local LINE_NUM=`echo "$LINE" | cut -d':' -f1`
        local TOS_METHOD_SIGNATURE=`echo "$LINE" | awk '{print $NF}'`
        local METHOD_SIGNATURE=`echo "$LINE" | cut -d'(' -f2`
        METHOD_SIGNATURE="($METHOD_SIGNATURE"
        METHOD_SIGNATURE=`pattern_escape "$METHOD_SIGNATURE"`
        # append tos_xxx_init method to the end of the target file
        echo >> "$TARGET_FILE"
        while true
        do
            LINE=`sed -n "$LINE_NUM p" "$TOS_FILE"`
            if [ "${LINE:0:11}" = ".end method" ]; then
                echo "$LINE" >> "$TARGET_FILE"
                break;
            fi
            echo "$LINE" >> "$TARGET_FILE"
            ((LINE_NUM++))
        done
        
        # add tos_xxx_init to the end of the original constructor
        # find invoke position of tos_xxx_init
        local MD5_BEFORE=`md5sum "$TARGET_FILE" | awk '{print $1}'`
        for INVOKE_LINE in `grep -n "invoke\-.*\->$TOS_METHOD_NAME$METHOD_SIGNATURE" "$TOS_FILE"`
        do
            LINE_NUM=`echo "$INVOKE_LINE" | cut -d':' -f1`
            INVOKE_LINE=`echo "$INVOKE_LINE" | cut -d':' -f2`
            INVOKE_LINE="    $INVOKE_LINE"
            local HAS_PARAM=false
            echo "$INVOKE_LINE" | grep "()" > /dev/null 2>&1
            if [ $? -ne 0 ]; then
                HAS_PARAM=true
                # replace all invoke-xxx {p0, p1} to invoke-xxx/range { p0 .. p1 }
                echo "$INVOKE_LINE" | grep "invoke-.*/range" > /dev/null 2>&1
                if [ $? -ne 0 ]; then
                    local INVOKE_TYPE=`echo "$INVOKE_LINE" | awk '{print $1}'`
                    local FIRST_PARAM=`echo "$INVOKE_LINE" | awk -F'{|}' '{print $2}' | awk -F',' '{print $1}'`
                    local LAST_PARAM=`echo "$INVOKE_LINE" | awk -F'{|}' '{print $2}' | awk -F',' '{print $NF}' | sed 's/^[[:space:]]*//'`
                    INVOKE_LINE=`echo "$INVOKE_LINE" | sed "s#$INVOKE_TYPE {.*}#$INVOKE_TYPE/range {$FIRST_PARAM .. $LAST_PARAM}#"`
                fi
            fi
            # find the invoke method, search backward
            while true
            do
                LINE=`sed -n "$LINE_NUM p" "$TOS_FILE"`
                if [ "${LINE:0:7}" = ".method" ]; then
                    local CALLER_SIGNATURE=`echo "$LINE" | awk '{print $NF}'`
                    CALLER_SIGNATURE=`pattern_escape "$CALLER_SIGNATURE"`
                    local LINES=`grep -n "^\.method.* $CALLER_SIGNATURE" "$TARGET_FILE" 2>/dev/null`
                    if [ -z "$LINES" ]; then
                        # cannot find corresponding constructor
                        # check if tos_xxx_init has no param, then invoke it at all the constructors
                        if [ $HAS_PARAM = true ]; then
                            echo "fail."
                            echo "[ERROR] cannot find the corresponding original constructor of $TOS_METHOD_NAME"
                            echo $RELATIVE_PATH >> $PATCH_FAIL_FILE
                            return 1
                        fi
                        # add to the end of all original constructors
                        LINES=`grep -n "constructor <init>" "$TARGET_FILE" 2>/dev/null`
                    fi
                    
                    # find the return-void statement
                    for LINE in `echo "$LINES"`
                    do
                        LINE_NUM=`echo "$LINE" | cut -d':' -f1`
                        while true
                        do
                            LINE=`sed -n "$LINE_NUM p" "$TARGET_FILE" | sed 's/^[[:space:]]*//' | sed 's/[[:space:]]*$//'`
                            if [ "$LINE" = "return-void" ]; then
                                # insert before this line
                                sed -i "$LINE_NUM i$INVOKE_LINE" "$TARGET_FILE"
                                break;
                            fi
                            ((LINE_NUM++))            
                        done
                    done
                    break
                fi
                ((LINE_NUM--))
            done
        done
        local MD5_AFTER=`md5sum "$TARGET_FILE" | awk '{print $1}'`
        if [ "$MD5_BEFORE" == "$MD5_AFTER" ]; then
            echo "fail."
            echo "[ERROR] add $TOS_METHOD_SIGNATURE invoke failed"
            echo $RELATIVE_PATH >> $PATCH_FAIL_FILE
            return 1
        fi
        
    done
    IFS=$OLD_IFS
    
    echo "success."
}

do_patch()
{
    rm -f "$PATCH_FAIL_FILE"
    touch "$PATCH_FAIL_FILE"

    local TOS_SMALI_PATH=$PORT_DEVICE/tos/smali
    for FILE in `find "$TOS_SMALI_PATH" -name "*.smali"`
    do
        grep "^\.method.* tos_.*" "$FILE" > /dev/null 2>&1
        if [ $? -ne 0 ]; then
            continue
        fi
        
        if [ -n "$CUSTOM_PATCH_DIR" ]; then
            # check if this file has been customized
            local RELATIVE_PATH=${FILE/#*\/smali\/}
            local CUSTOM_FILE=`find "$CUSTOM_PATCH_DIR" -path "*/$RELATIVE_PATH"`
            if [ -n "$CUSTOM_FILE" ]; then
                cp -f "$CUSTOM_FILE" "$FILE"
            fi
        fi
        
        merge_single_file "$FILE" "$TOS_SMALI_PATH"
    done
}

handle_newly_added_files()
{
    local TOS_SMALI_PATH=$PORT_DEVICE/tos/smali
    for FILE in `find "$TOS_SMALI_PATH" -name "Tos*.smali"`
    do
        local RELATIVE_PATH=${FILE:${#TOS_SMALI_PATH}}
        # /framework2/smali/com/android/internal/os/TosPlugTestUsed.smali
        RELATIVE_PATH=${RELATIVE_PATH#/*/smali/}
        # com/android/internal/os/TosPlugTestUsed.smali
        RELATIVE_PATH=`dirname "$RELATIVE_PATH"`
        # com/android/internal/os
        local DEST_PATH=$TARGET_PATH/$RELATIVE_PATH
        mkdir -p "$DEST_PATH"
        cp -f "$FILE" "$DEST_PATH/"
    done
}

main()
{
    do_patch
    handle_newly_added_files
    handle_override_smali
}

main