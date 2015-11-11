#!/bin/bash

#
# Fuction:
#		针对单个tos修改的smali文件进行patch
# Pram list
# 		$1:需要patch的tos源文件，利用包名和类名以下划线分隔的方式命名，如:android_hardware_Camera.smali
# 		$2:目标机型的反编译的smali文件夹，用于搜索与tos文件对应的目标机型源文件
# 		$3:输出目录
# usage example:.
#		./patch_single_file.sh android_hardware_Camera.smali devices/i9500/smali/ out_dir
#

if [ $# -ne 3 ]; then
    echo "usage: $0 tos_modified_file target_smali_dir output_path" 
    exit 1
fi

TOS_MODIFIED_FILE=$1
TARGET_SMALI_DIR=$2
OUTPUT_PATH=$3

if [[ ! -d $OUTPUT_PATH ]]; then
    mkdir -p $OUTPUT_PATH
fi

main()
{
	grep "^\.method.* tos_.*" "$TOS_MODIFIED_FILE" > /dev/null 2>&1
    if [ $? -ne 0 ]; then
		echo "The file doesn't need to patch"
		exit 1
	fi
	echo -n "handling $TOS_MODIFIED_FILE ..."
	merge "$TOS_MODIFIED_FILE"

}

# 拷贝文件
copy_file()
{
    local SOURCE_FILE=$1
    local SOURCE_DIR=$2
    local DEST_DIR=$3
    local RELATIVE_PATH=${SOURCE_FILE:${#SOURCE_DIR}}
    # 去掉前面的2个目录，比如/framework.jar/smali
    local DEST_FILE=$DEST_DIR/${RELATIVE_PATH#/*/smali}
    mkdir -p `dirname $DEST_FILE`
    cp -f $SOURCE_FILE $DEST_FILE
}

merge()
{
    # TOS_FILE format: framework/smali/android_hardware_Camera.smali
    local TOS_FILE=$1
	# FILE format: android_hardware_Camera.smali
	local TOS_FILE_NAME=`basename $TOS_FILE`		
	# RELATIVE_PATH format: android/hardware/Camera.smali
	local RELATIVE_PATH=`echo $TOS_FILE_NAME |sed 's/_/\//g'`

    local ORG_TARGET_FILE=`find "$TARGET_SMALI_DIR" -path "*/$RELATIVE_PATH" 2>/dev/null`

    if [ -z "$ORG_TARGET_FILE" ]; then
        echo "[ERROR] cannot find corresponding target smali file of $RELATIVE_PATH"
        exit 1
    fi
	copy_file "$ORG_TARGET_FILE" "$TARGET_SMALI_DIR" "$OUTPUT_PATH"

	TARGET_FILE=`find "$OUTPUT_PATH" -path "*/$RELATIVE_PATH" 2>/dev/null`
	if [ -z "$ORG_TARGET_FILE" ]; then
        echo "[ERROR] cannot find corresponding target smali file of $RELATIVE_PATH"
        exit 1
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
            echo "[ERROR] replace $METHOD_DEFINE failed"
            exit $ERROR_REPLACE_NORMAL_METHOD
        fi
        # add tos definition to the end of the target file
        LINE=`grep -n "^\.method.* $ORIG_METHOD_DEFINE_ESCAPED" "$TOS_FILE"`
        if [ -z "$LINE" ]; then
            echo "[ERROR] cannot find the original definition of '$ORIG_METHOD_DEFINE'"
            exit $ERROR_METHOD_DEF_NOT_FOUND
        fi
        
        if [ `echo "$LINE" | wc -l` -gt 1 ]; then
            echo "[ERROR] more than one method definition found for '$ORIG_METHOD_DEFINE' int '$TOS_FILE'"
            exit $ERROR_MORE_THAN_ONE_METHOD_DEF_FOUND
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
                local ACCESS_SMALI_FILE=`find "$TARGET_JAR_TEMP_PATH" -path "*/$CLASS_NAME.smali"`
                if [ -z "$ACCESS_SMALI_FILE" ]; then
                    echo "[ERROR] cannot find smali file for $CLASS_NAME"
                    exit $ERROR_CANNOT_FIND_ACCESS_SMALI_FILE
                fi
                local ACCESS_MEMBER_ESCAPE=`pattern_escape "$ACCESS_MEMBER"`
                if [ "$ACCESS_TYPE" = "getter" ]; then
                    GREP_PATTERN="iget|sget|aget"
                elif [ "$ACCESS_TYPE" = "setter" ]; then
                    GREP_PATTERN="iput|sput|aput"
                elif [ "$ACCESS_TYPE" = "invokes" ]; then
                    GREP_PATTERN="invoke-.*"
                else
                    echo "[ERROR] unrecognized access comment: $PREV_LINE"
                    exit $ERROR_UNRECOGNIZED_ACCESS_COMMENT
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
                    echo "[ERROR] cannot find access method for $ACCESS_MEMBER"
                    exit $ERROR_CANNOT_FIND_ACCESS_METHOD
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
                            echo "[ERROR] cannot find the corresponding original constructor of $TOS_METHOD_NAME"
                            exit $ERROR_CONSTRUCTOR_NOT_FOUND
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
            echo "[ERROR] add $TOS_METHOD_SIGNATURE invoke failed"
            exit 1
        fi
        
    done
    IFS=$OLD_IFS
    
    echo "done."
}

pattern_escape()
{
    local RESULT=${1//\[/\\\[}
    RESULT=${RESULT//\]/\\\]}
    RESULT=${RESULT//\$/\\\$}
    RESULT=${RESULT//\./\\\.}
    echo "$RESULT"
}

main



 