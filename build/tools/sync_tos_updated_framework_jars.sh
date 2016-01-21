#!/bin/bash

if [ $# -ne 1 ]; then
    echo "usage: $0 device_name"
    exit 1
fi

if [ -z $PORT_DEVICE ]; then
    echo "you should excute the build/envsetup.sh to init the enviroment"
    exit 1
fi


ERROR_METHOD_DEF_NOT_FOUND=1
ERROR_CONSTRUCTOR_NOT_FOUND=2
ERROR_REPLACE_NORMAL_METHOD=3
ERROR_NEW_TOS_PATH_NOT_FOUND=4
ERROR_MORE_THAN_ONE_METHOD_DEF_FOUND=5
ERROR_UNRECOGNIZED_ACCESS_COMMENT=6
ERROR_CANNOT_FIND_ACCESS_SMALI_FILE=7


DEVICE_NAME=$1
DEVICE_ROOT=$PORT_DEVICE/$DEVICE_NAME
VENDOR_SMALI_PACK_PATH=$DEVICE_ROOT/patch/smali/pack
TOS_UPDATED_JARS_SMALI=$PORT_DEVICE/tos/smali
BACKUP_PACK_SMALI_DIR=$DEVICE_ROOT/temp/"$DEVICE_NAME"_pack_backup
PATCH_FAILED_RESULT=

RET_POSTFIX="_return"
MERGE_POSTFIX="_merge"

pattern_escape()
{
    local RESULT=${1//\[/\\\[}
    RESULT=${RESULT//\]/\\\]}
    RESULT=${RESULT//\$/\\\$}
    RESULT=${RESULT//\./\\\.}
    echo "$RESULT"
}

main() {
	backup_previous_pack_smali
    detos_patched_vendor_smali
	sync_tos_updated_framework_jars
	handle_tos_added_files
	echo "sync patch done."
}

backup_previous_pack_smali(){
	if [ ! -d $BACKUP_PACK_SMALI_DIR ]; then
		echo "--------------------------------------------"
		echo ">>>backup the pack smali files to $BACKUP_PACK_SMALI_DIR"
		rm -rf $BACKUP_PACK_SMALI_DIR
		mkdir -p $BACKUP_PACK_SMALI_DIR
		cp -rf $VENDOR_SMALI_PACK_PATH/* $BACKUP_PACK_SMALI_DIR
	fi
	 
}

detos_patched_vendor_smali() {
	echo "--------------------------------------------"
	echo ">>>delete tos relative part from the patched vendor smali files in patch/smali/pack directory"
    for FILE in `find "$VENDOR_SMALI_PACK_PATH" -name "*.smali"`
    do
        grep "^\.method.* tos_.*" "$FILE" > /dev/null 2>&1
        if [ $? -ne 0 ]; then
            continue
        fi
        
        echo "dealing $FILE ..."
		del_tos_genaral_method "$FILE"
		del_tos_constructor_method "$FILE"
		mv "$FILE""$RET_POSTFIX" "$FILE"
    done
    
    # deal newly added files
    for FILE in `find "$VENDOR_SMALI_PACK_PATH" -name "Tos*.smali"`
    do
		rm -f "$FILE"
    done
}


sync_tos_updated_framework_jars() {
	echo "--------------------------------------------"
	echo ">>>sync tos framework updation "
    # merge smali files
    for FILE in `find "$TOS_UPDATED_JARS_SMALI" -name "*.smali"`
    do
        grep "^\.method.* tos_.*" "$FILE" > /dev/null 2>&1
        if [ $? -ne 0 ]; then
            continue
        fi
        
        echo "sync patching $FILE ..."
        merge_tos_smali_to_vendor "$FILE"
    done
    
    # handle newly added files
    for FILE in `find "$TOS_UPDATED_JARS_SMALI" -name "Tos*.smali"`
    do
		#echo "$FILE"
        local RELATIVE_PATH=${FILE:${#TOS_UPDATED_JARS_SMALI}}
		#echo "RELATIVE_PATH1=$RELATIVE_PATH"
        # /framework2/smali/com/android/internal/os/TosPlugTestUsed.smali
        RELATIVE_PATH=${RELATIVE_PATH#/*/smali/}
        # com/android/internal/os/TosPlugTestUsed.smali
		#echo "RELATIVE_PATH2=$RELATIVE_PATH"
        RELATIVE_PATH=`dirname "$RELATIVE_PATH"`
		
        # com/android/internal/os
        local DEST_PATH=`find $VENDOR_SMALI_PACK_PATH -path "*/$RELATIVE_PATH" 2>/dev/null`
		#echo "$RELATIVE_PATH, $DEST_PATH"
        if [ -z "$DEST_PATH" ]; then
            echo "[ERROR] cannot find destination path for tos newly added file: $FILE"
            exit $ERROR_NEW_TOS_PATH_NOT_FOUND
        fi
        
        cp -f "$FILE" "$DEST_PATH/"
    done
	
	echo -e $PATCH_FAILED_RESULT

}
del_tos_genaral_method()
{
	local TOS_FILE=$1
	local TARGET_FILE="$TOS_FILE""$RET_POSTFIX"
    cp -f "$TOS_FILE" "$TARGET_FILE"
    # handle normal methods
    local OLD_IFS=$IFS
    IFS=$'\n'
    for LINE in `grep -n "^\.method.* tos_org" "$TARGET_FILE"`
    do
        # LINE format: 744:.method public static tos_org_open()Landroid/hardware/Camera;
		#echo "line : $LINE, tos_file : $TARGET_FILE"
        local START_LINE=`echo "$LINE" | cut -d':' -f1`
        local FULL_METHOD_DEFINE=`echo "$LINE" | cut -d':' -f2`
        # method modifiers may be different
        local METHOD_DEFINE=`echo "$FULL_METHOD_DEFINE" | awk '{print $NF}'`
        local ORIG_METHOD_DEFINE=`echo "$METHOD_DEFINE" | sed 's/tos_org_//'`
        # replace original method definition
        local ORIG_METHOD_DEFINE_ESCAPED=`pattern_escape "$ORIG_METHOD_DEFINE"`
        local METHOD_DEFINE_ESCAPED=`pattern_escape "$METHOD_DEFINE"`
        local MD5_BEFORE=`md5sum "$TARGET_FILE" | awk '{print $1}'`
		#echo "vale: $START_LINE, $FULL_METHOD_DEFINE, $METHOD_DEFINE, $ORIG_METHOD_DEFINE"
		
		# del tos definition to the end of the target file
        LINE=`grep -n "^\.method.* $ORIG_METHOD_DEFINE_ESCAPED" "$TARGET_FILE"`
        if [ -z "$LINE" ]; then
            echo "[ERROR] cannot find the original definition of '$ORIG_METHOD_DEFINE'"
            exit $ERROR_METHOD_DEF_NOT_FOUND
        fi
        
        if [ `echo "$LINE" | wc -l` -gt 1 ]; then
            echo "[ERROR] more than one method definition found for '$ORIG_METHOD_DEFINE' int '$TARGET_FILE'"
            exit $ERROR_MORE_THAN_ONE_METHOD_DEF_FOUND
        fi
        
        local LINE_NUM=`echo "$LINE" | cut -d':' -f1`
        #echo "LINE_NUM = $LINE_NUM"
        local PREV_LINE=
		local LINE_NUM_BEGIN=$LINE_NUM
		while true
        do
            LINE=`sed -n "$LINE_NUM p" "$TARGET_FILE"`
			
            if [ "${LINE:0:11}" = ".end method" ]; then
                break;
            fi
			((LINE_NUM++))
            
        done
		#more one blank line
		((LINE_NUM_BEGIN--))
		LINE=`sed -n "$LINE_NUM_BEGIN p" "$TARGET_FILE"`
		if [ "${LINE:0:11}" = ".end method" ]; then
            ((LINE_NUM_BEGIN++))
        fi
		sed -i "$LINE_NUM_BEGIN, $LINE_NUM d" "$TARGET_FILE"
		
        # only replace the method definition, add a space ahead
        #sed -i "s# $ORIG_METHOD_DEFINE_ESCAPED# $METHOD_DEFINE_ESCAPED#" "$TARGET_FILE"
		sed -i "s# $METHOD_DEFINE_ESCAPED# $ORIG_METHOD_DEFINE_ESCAPED#" "$TARGET_FILE"
        local MD5_AFTER=`md5sum "$TARGET_FILE" | awk '{print $1}'`
        if [ "$MD5_BEFORE" == "$MD5_AFTER" ]; then
            echo "[ERROR] del tos part for $METHOD_DEFINE failed"
            exit $ERROR_REPLACE_NORMAL_METHOD
        fi
        
    done
    IFS=$OLD_IFS
	
}


del_tos_constructor_method() {
	local TOS_FILE=$1
	local TARGET_FILE="$TOS_FILE""$RET_POSTFIX"
  # handle constructors
    local CLASS_NAME=`basename "$TOS_FILE" | awk -F'$' '{print $NF}' | sed 's/\.smali//'`
    local CLASS_SIGNATURE=`head -n1 "$TOS_FILE" | awk '{print $NF}'`

    local TOS_METHOD_NAME=tos_"$CLASS_NAME"_init
	
	local OLD_IFS=$IFS
    IFS=$'\n'
	
    for LINE in `grep -n "^\.method.* $TOS_METHOD_NAME(" "$TARGET_FILE" 2>/dev/null`
    do
        local LINE_NUM=`echo "$LINE" | cut -d':' -f1`
        local TOS_METHOD_SIGNATURE=`echo "$LINE" | awk '{print $NF}'`
        local METHOD_SIGNATURE=`echo "$LINE" | cut -d'(' -f2`
        METHOD_SIGNATURE="($METHOD_SIGNATURE"
        METHOD_SIGNATURE=`pattern_escape "$METHOD_SIGNATURE"`
        # append tos_xxx_init method to the end of the target file
        #echo "del_tos_constructor_method $LINE_NUM, $TOS_METHOD_SIGNATURE, $METHOD_SIGNATURE"
		local LINE_NUM_BEGIN=$LINE_NUM
        while true
        do
            LINE=`sed -n "$LINE_NUM p" "$TARGET_FILE"`
			
            if [ "${LINE:0:11}" = ".end method" ]; then
                break;
            fi
            ((LINE_NUM++))
        done
		#more one blank line
		((LINE_NUM_BEGIN--))
		LINE=`sed -n "$LINE_NUM_BEGIN p" "$TARGET_FILE"`
		if [ "${LINE:0:11}" = ".end method" ]; then
            ((LINE_NUM_BEGIN++))
        fi
		sed -i "$LINE_NUM_BEGIN, $LINE_NUM d" "$TARGET_FILE"
        
        # add tos_xxx_init to the end of the original constructor
        # find invoke position of tos_xxx_init
        local MD5_BEFORE=`md5sum "$TARGET_FILE" | awk '{print $1}'`
		
		while true
        do
			INVOKE_LINE=`grep -n "invoke\-.*\->$TOS_METHOD_NAME$METHOD_SIGNATURE" "$TARGET_FILE" | head -n1`
			if [ -n "$INVOKE_LINE" ]; then
				#break
				LINE_NUM=`echo "$INVOKE_LINE" | cut -d':' -f1`
				INVOKE_LINE=`echo "$INVOKE_LINE" | cut -d':' -f2`
				# find the invoke method, del
				#echo "INVOKE_LINE $INVOKE_LINE, $LINE_NUM"
				sed -i "$LINE_NUM d" "$TARGET_FILE"  
			else	
				#echo "INVOKE_LINE: $INVOKE_LINE"
				break
			fi
        done
		
        local MD5_AFTER=`md5sum "$TARGET_FILE" | awk '{print $1}'`
        if [ "$MD5_BEFORE" == "$MD5_AFTER" ]; then
            echo "[ERROR] del $TOS_METHOD_SIGNATURE invoke failed"
            exit $ERROR_REPLACE_NORMAL_METHOD
        fi
        #echo "md5:  $MD5_AFTER, $MD5_BEFORE"
    done
    IFS=$OLD_IFS
    
}


merge_tos_smali_to_vendor()
{
    # VENDOR_SMALI_FILE format: ../tos-new-jars/smalis/framework/smali/android/hardware/Camera.smali
    local N5_SMALI_FILE=$1
    # RELATIVE_PATH format: /framework/smali/android/hardware/Camera.smali
    local RELATIVE_PATH=${N5_SMALI_FILE:${#TOS_UPDATED_JARS_SMALI}}
    # RELATIVE_PATH format: android/hardware/Camera.smali
    RELATIVE_PATH=${RELATIVE_PATH#/*/smali/}
	#echo "RELATIVE_PATH  : $RELATIVE_PATH"
    local VENDOR_SMALI_FILE=`find "$VENDOR_SMALI_PACK_PATH" -path "*/$RELATIVE_PATH" 2>/dev/null`
	
	local TARGET_FILE="$VENDOR_SMALI_FILE""$MERGE_POSTFIX"
	
	cp -f "$VENDOR_SMALI_FILE" "$TARGET_FILE"
	#cp -f "$VENDOR_SMALI_FILE""$RET_POSTFIX" "$TARGET_FILE"
	
    if [ -z "$TARGET_FILE" ]; then
        echo "[ERROR] cannot find corresponding target smali file of $RELATIVE_PATH"
        exit $ERROR_CANNOT_FIND_TARGET_SMALI
    fi
    
    # handle normal methods
    local OLD_IFS=$IFS
    IFS=$'\n'
    for LINE in `grep -n "^\.method.* tos_org" "$N5_SMALI_FILE"`
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
		#echo "$ORIG_METHOD_DEFINE_ESCAPED, $METHOD_DEFINE_ESCAPED"
        # only replace the method definition, add a space ahead
        sed -i "s# $ORIG_METHOD_DEFINE_ESCAPED# $METHOD_DEFINE_ESCAPED#" "$TARGET_FILE"
        local MD5_AFTER=`md5sum "$TARGET_FILE" | awk '{print $1}'`
        if [ "$MD5_BEFORE" == "$MD5_AFTER" ]; then
            echo "[ERROR] replace $METHOD_DEFINE failed"
            #exit $ERROR_REPLACE_NORMAL_METHOD
			PATCH_FAILED_RESULT="$PATCH_FAILED_RESULT \n tos smalifile:$N5_SMALI_FILE  method:$METHOD_DEFINE patch failed "
			continue
        fi
        # add tos definition to the end of the target file
        LINE=`grep -n "^\.method.* $ORIG_METHOD_DEFINE_ESCAPED" "$N5_SMALI_FILE"`
        if [ -z "$LINE" ]; then
            echo "[ERROR] cannot find the original definition of '$ORIG_METHOD_DEFINE'"
            exit $ERROR_METHOD_DEF_NOT_FOUND
        fi
        
        if [ `echo "$LINE" | wc -l` -gt 1 ]; then
            echo "[ERROR] more than one method definition found for '$ORIG_METHOD_DEFINE' int '$N5_SMALI_FILE'"
            exit $ERROR_MORE_THAN_ONE_METHOD_DEF_FOUND
        fi
        
        local LINE_NUM=`echo "$LINE" | cut -d':' -f1`
        echo >> "$TARGET_FILE"
        local PREV_LINE=
        while true
        do
            LINE=`sed -n "$LINE_NUM p" "$N5_SMALI_FILE"`
            if [ "${LINE:0:11}" = ".end method" ]; then
                echo "$LINE" >> "$TARGET_FILE"
                break;
            fi
            # check if it's a access invocation
            local ACCESS_NUM=`echo "$LINE" | grep -o 'access\$[0-9]\+'`
            if [ -n "$ACCESS_NUM" ]; then
				echo "$!!!!!!!!!!N5_SMALI_FILE, ACCESS_NUM = $ACCESS_NUM"
                # check if access number is correct
                # last line format: 
                # getter for: Lcom/android/server/VibratorService$Vibration;->mPackageName:Ljava/lang/String;
                # invokes: Lcom/android/server/VibratorService;->doVibratorOn(JI)V
                # setter for: Lcom/android/server/VibratorService;->mImmVibeTouchMagnitude:I
                local ACCESS_TYPE=`echo "$PREV_LINE" | awk '{print $2}'`
                local ACCESS_MEMBER=`echo "$PREV_LINE" | awk '{print $NF}'`
                local CLASS_NAME=`echo "$ACCESS_MEMBER" | cut -d'-' -f1`
                CLASS_NAME=${CLASS_NAME:1:${#CLASS_NAME}-2}
                local ACCESS_SMALI_FILE=`find "$VENDOR_SMALI_PACK_PATH" -path "*/$CLASS_NAME.smali"`
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
    
	#mv "$TARGET_FILE" "$VENDOR_SMALI_FILE" 
	handle_construtor "$N5_SMALI_FILE" "$VENDOR_SMALI_FILE" "$TARGET_FILE" 
}

handle_construtor() {
    # handle constructors
	local N5_SMALI_FILE=$1
	local VENDOR_SMALI_FILE=$2
    local TARGET_FILE=$3
	#echo "N5_SMALI_FILE  : $N5_SMALI_FILE, $VENDOR_SMALI_FILE, $TARGET_FILE"
	
	#"$VENDOR_SMALI_FILE""$MERGE_POSTFIX"
	#cp -f "$VENDOR_SMALI_FILE""$RET_POSTFIX" "$TARGET_FILE"
	
    local CLASS_NAME=`basename "$N5_SMALI_FILE" | awk -F'$' '{print $NF}' | sed 's/\.smali//'`
    local CLASS_SIGNATURE=`head -n1 "$TARGET_FILE" | awk '{print $NF}'`
    OLD_IFS=$IFS
    IFS=$'\n'
    local TOS_METHOD_NAME=tos_"$CLASS_NAME"_init
    for LINE in `grep -n "^\.method.* $TOS_METHOD_NAME(" "$N5_SMALI_FILE" 2>/dev/null`
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
            LINE=`sed -n "$LINE_NUM p" "$N5_SMALI_FILE"`
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
        for INVOKE_LINE in `grep -n "invoke\-.*\->$TOS_METHOD_NAME$METHOD_SIGNATURE" "$N5_SMALI_FILE"`
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
                LINE=`sed -n "$LINE_NUM p" "$N5_SMALI_FILE"`
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
            exit $ERROR_REPLACE_NORMAL_METHOD
        fi
        
    done
    IFS=$OLD_IFS
	
	mv "$TARGET_FILE" "$VENDOR_SMALI_FILE" 
}

handle_tos_added_files()
{
	# 将framework-qrom.jar中所有的smali文件拷贝到android.policy.jar中
    cp -rf "$PORT_DEVICE/tos/smali/framework-qrom.jar/smali" "$VENDOR_SMALI_PACK_PATH/android.policy.jar/"

    local TOS_SMALI_PATH=$PORT_DEVICE/tos/smali
    for FILE in `find "$TOS_SMALI_PATH" -name "Tos*.smali"`
    do
        local RELATIVE_PATH=${FILE:${#TOS_SMALI_PATH}+1}
        # /framework2/smali/com/android/internal/os/TosPlugTestUsed.smali
		mkdir -p `dirname "$VENDOR_SMALI_PACK_PATH/$RELATIVE_PATH"`
		cp -f "$FILE" "$VENDOR_SMALI_PACK_PATH/$RELATIVE_PATH"
    done					
}

main
