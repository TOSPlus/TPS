#!/bin/bash

# TODO should reuse patch_by_smali.sh

# for debug
#set -x

DEVICE_NAME=
if [ $# -eq 1 ]; then
    DEVICE_NAME=$1
fi

DEVICE_ROOT=
ORIGIN_PATH=
INTERMEDIATE_PATH=
TARGET_PATH_OLD
TARGET_PATH=
CONFIG_PATH=
CONFIG_PATH_NEW=
TEMP_PATH=

# copy file
copy_file()
{
    local SOURCE_FILE=$1
    local SOURCE_DIR=$2
    local DEST_DIR=$3
    local RELATIVE_PATH=${SOURCE_FILE:${#SOURCE_DIR}}
    # remove leading 2 directories, eg. /framework.jar/smali
    local DEST_FILE=$DEST_DIR${RELATIVE_PATH#/*/smali}
    mkdir -p `dirname $DEST_FILE`
    cp $SOURCE_FILE $DEST_FILE
}

prepare_smali_files_for_device()
{
    local DEVICE=$1
    local SOURCE_DIR=$PORT_DEVICE/$DEVICE/smali
    local DEST_DIR=$ORIGIN_PATH/$DEVICE
    if [ "$DEVICE" = "tos" ]; then
        DEST_DIR=$DEST_DIR"_new"
    fi

    ls $CONFIG_PATH_NEW/* | while read CLASS_NAME
    do
        CLASS_NAME=`basename $CLASS_NAME | sed 's/\./\//g' | sed 's/\/txt/\.smali/'`
	local SOURCE_FILE=`find $SOURCE_DIR -path "*/$CLASS_NAME"`
	if [ -f "$SOURCE_FILE" ]; then
            copy_file $SOURCE_FILE $SOURCE_DIR $DEST_DIR
	fi
    done
}

# prepare smali files
prepare_smali_files()
{
    echo "================================================"
    echo -n "preparing smali files that need to be patched..."

    prepare_smali_files_for_device tos
    prepare_smali_files_for_device aosp
    prepare_smali_files_for_device $DEVICE_NAME

    echo "done."
}

# remove line info for one single smali file
remove_lines_for_single_smali()
{
    echo -n "removing lines info for $1 ..."

    local SMALI_FILE=$1
    cp $SMALI_FILE "$SMALI_FILE.line"

    # remove line info
    sed -i -e '/^\s*\.line.*$/d' $SMALI_FILE

    # also remove jumbo from const-string/jumbo
    sed -i -e 's/\/jumbo//' $SMALI_FILE

    # generate patch between smali files with line info and without line info
    diff -B -u "$SMALI_FILE" "$SMALI_FILE.line" > "$SMALI_FILE.line.patch"

    echo "done."
}

# remove line info from smali files
remove_smali_lines()
{
    echo "================================================"
    echo "removing line info in smali files ..."

    for SMALI_FILE in `find $INTERMEDIATE_PATH/tos_new -name "*.smali"`
    do
        remove_lines_for_single_smali $SMALI_FILE
    done
}

# replace const value form of resource id to const variable name
# eg. 0x105004e->com.android.internal.R.dimen.textview_error_popup_default_width

# parse java file, output resource_name|resource_id|line to temp file
parse_java_file()
{
    local FILE=$1
    local IMPORT_RES=0
    # read file line by line and then grep is very slow, use grep for the whole file instead
    #grep "import android.R;" $FILE > /dev/null 2>&1
    #if [ $? -eq 0 ]; then
    #    IMPORT_RES=1
    #else
    #    grep "import com.android.internal.R;" $FILE > /dev/null 2>&1
    #    if [ $? -eq 0 ]; then
    #        IMPORT_RES=2
    #    fi
    #fi
    IMPORT_RES=`grep -o "^import .*\.R;$" $FILE`
    if [ "$IMPORT_RES" ]; then
        IMPORT_RES=${IMPORT_RES:7}
        local LENGTH=${#IMPORT_RES}
        ((LENGTH-=2))
        IMPORT_RES=${IMPORT_RES:0:$LENGTH}
    fi

    # grep android.R.xx, com.android.internel.R.xxx, R.xxx
    local OLD_IFS=$IFS
    IFS=$'\n'
    local LINE=
    local LINE_NUMS=
    local RESOURCE_NAMES=
    local LINE_NUM=
    local RESOURCE_NAME=
    local RESOURCE_ID=
    for LINE in `egrep -no "([^a-zA-Z0-9$_]R\.[a-zA-Z0-9$\_\.]+)|(^R\.[a-zA-Z0-9$\_\.]+)" $FILE`
    do
        if [ "$LINE" ]; then
	    # TODO it may be in comment line
	    # format: 2957:.R.id.menu_divider
	    # in case of more than one resource name in the same line, both LINE_NUM and RESOURCE_NAME have mone than one line
	    LINE_NUMS=`echo "$LINE" | cut -d ':' -f 1`
	    RESOURCE_NAMES=`echo "$LINE" | cut -d ':' -f 2`
	    local LINE_COUNT=`echo $LINE_NUMS | wc -l`
	    for((i=1;i<=$LINE_COUNT;i++))
	    do
	        LINE_NUM=`echo $LINE_NUMS | sed -n "$i p"`
		RESOURCE_NAME=`echo $RESOURCE_NAMES | sed -n "$i p"`
	        local INITIAL_LETTER=${RESOURCE_NAME:0:1}
                if [ $INITIAL_LETTER != "R" ]; then
	            if [ $INITIAL_LETTER = "." ]; then
		        # the resource id has a prefix, such as com.internal.R
		        LINE=`sed -n "$LINE_NUM p" $FILE`
                        # TODO there may be more than one resource name in the same line
		        # in this case, there are more than one result in RESOURCE_NAME, seperated by line feed
		        RESOURCE_NAME=`echo $LINE | egrep -o "[a-zA-Z0-9$\_\.]+\.R\.[a-zA-Z0-9$\_\.]+" | sed -n "$i p"`
		    else
	                RESOURCE_NAME=${RESOURCE_NAME:1}
		    fi
	        fi

	        if [ ${RESOURCE_NAME:0:1} = "R" ]; then
	            if [ -z $IMPORT_RES ]; then
		        RESOURCE_NAME="android."$RESOURCE_NAME
		    else
		        RESOURCE_NAME=$IMPORT_RES$RESOURCE_NAME
		    fi
	        fi

	        # now, the format of RESOURCE_NAME is "android.R.string.replace"
		# search corresponding const value
		#local PUBLIC_XML=
		#echo $RESOURCE_NAME | egrep "android\.R\.|com.android.internal\.R\." > /dev/null 2>&1
		#if [ $? -eq 0 ]; then
		#    # android resources. find them in framework-res/smali/res/values/pulibc.xml
		#    PUBLIC_XML=$PORT_DEVICE/tos/smali_new/framework-res.apk/res/values/public.xml
		#else
		#    # 3rd party rom resources
		#    PUBLIC_XML=`find $PORT_DEVICE/tos/smali_new/ -path "*/res/values/public.xml" ! -path "*/framework-res.apk/*"`
		#fi
		local TEMP=`echo $RESOURCE_NAME | grep -o "R\..*\..*"`
		local TYPE=`echo $TEMP | cut -d '.' -f2`
		local NAME=`echo $TEMP | cut -d '.' -f3`
		#TEMP=`grep "type=\"$TYPE\" name=\"$NAME\"" $PUBLIC_XML`
		# format of TEMP is "<public type="attr" name="name" id="0x01010003" />
		#RESOURCE_ID=`echo $TEMP | egrep -o "0x[0-9a-FA-F]+"`
		# search in R$xxx.smali, such as R$string.smali
		local SEARCH_PATH_PATTERN=$RESOURCE_NAME
		# remove last section: "android.R.string.replace"->"android.R$string"
		SEARCH_PATH_PATTERN=`echo $SEARCH_PATH_PATTERN | sed -e 's/R\.\(.*\)\.\(.*\)/R$\1/'`
		# convert to path: "android.R$string->android/R$string"
		SEARCH_PATH_PATTERN=`echo $SEARCH_PATH_PATTERN | sed -e 's/\./\//g'`
		SEARCH_PATH_PATTERN=$SEARCH_PATH_PATTERN.smali
		local SMALI_FILE=`find $PORT_DEVICE/tos/smali_new/ -path "*/$SEARCH_PATH_PATTERN" | head -n1`
		if [ -f "$SMALI_FILE" ]; then
		    # smali file format: .field public static final AbsListView_cacheColorHint:I = 0x6
		    TEMP=`grep "public static final $NAME:" $SMALI_FILE`
		    RESOURCE_ID=`echo $TEMP | egrep -o "0x[0-9a-FA-F]+"`
		    echo "$LINE_NUM|$RESOURCE_NAME|$RESOURCE_ID"
		fi
	    done
	fi
    done
    IFS=$OLD_IFS
}

resource_id_to_name_for_file()
{
    echo -n "converting resource id to name for $1 ..."

    local SMALI_FILE=$1
    local RESID_FILE=$2

    local LINE=
    local OLD_IFS=$IFS
    IFS=$'\n'
    while read LINE
    do
        local LINE_NUM=`echo $LINE | cut -d '|' -f1`
	local RES_NAME=`echo $LINE | cut -d '|' -f2`
	local RES_ID=`echo $LINE | cut -d '|' -f3`

	if [ -z "$RES_ID" ]; then
	    continue
	fi

	# search res id from LINE_NUM-5 to LINE_NUM+5 line
	for((i=$LINE_NUM-5;i<=$LINE_NUM+5;i++))
	do
	    local SMALI_LINES=`grep -n "\s*\.line $i$" $SMALI_FILE`
	    if [ -z "$SMALI_LINES" -o `echo "$SMALI_LINES" | wc -l` -eq 0 ]; then
	        # cannot find specified line
	        continue
	    fi
	    echo $SMALI_LINES | while read SMALI_LINE
	    do
	        SMALI_LINE=`echo "$SMALI_LINE" | cut -d ':' -f1`
		local TOTAL_LINES=`wc -l "$SMALI_FILE" | awk '{print $1}'`
                # read smali file from line 'SMALI_LINE + 1' to next line
	        while [ $SMALI_LINE -lt $TOTAL_LINES ]
                do
	            ((SMALI_LINE++))
	            LINE=`sed -n "$SMALI_LINE p" $SMALI_FILE`
		    echo "$LINE" | egrep "\s*\.line [0-9]+$" > /dev/null 2>&1
		    if [ $? -eq 0 ]; then
		        break
		    fi

		    echo $LINE | grep -wF "$RES_ID" > /dev/null 2>&1
		    if [ $? -ne 0 ]; then
		        continue
		    fi

                    # TODO how does sed do exact match?
		    sed -i "$SMALI_LINE s/$RES_ID/$RES_NAME/" $SMALI_FILE
		    #echo "$SMALI_FILE replaced"
	        done
	    done
	done
    done < $RESID_FILE
    IFS=$OLD_IFS

    echo "done."
}


resource_id_to_name()
{
    echo "================================================"
    echo "converting resource id to name ..."

    local SMALI_PATH=$INTERMEDIATE_PATH/tos_new
    local JAVA_PATH=$PORT_DEVICE/tos/source_new/frameworks/base/core/java
    local SMALI_FILE=

    # find main smali class file, ignore inner smali class file
    for SMALI_FILE in `find $SMALI_PATH -name "*.smali" ! -name "*\\\$*"`
    do
	local FILE_NAME=`basename $SMALI_FILE`
	local RELATIVE_PATH=`dirname ${SMALI_FILE:${#SMALI_PATH}}`
	# find corresponding java file
	FILE_NAME=`echo $FILE_NAME | sed 's/\.smali/\.java/'`
	RELATIVE_PATH=$RELATIVE_PATH/$FILE_NAME
	local JAVA_FILE=`find $JAVA_PATH -name $FILE_NAME | grep $RELATIVE_PATH`
	if [ ! -f $JAVA_FILE ]; then
	    echo "[ERROR] $JAVA_FILE not exist"
	    exit 1
	fi

	echo -n "parsing java file: $JAVA_FILE ..."

	local RESID_FILE=$SMALI_FILE.resid.txt
	parse_java_file $JAVA_FILE > $RESID_FILE

	echo "done."

	resource_id_to_name_for_file $SMALI_FILE $RESID_FILE

	SMALI_FILE_PATTERN=`dirname $SMALI_FILE`/`basename $SMALI_FILE .smali`"\\\$*"
	# TODO SMALI_FILE_PATTERN may not exist and will output error info. though it doesn't matter
	for SMALI_FILE in `ls $SMALI_FILE_PATTERN`
	do
	    resource_id_to_name_for_file $SMALI_FILE $RESID_FILE
	done
    done

    # target device no need to do resid to name
}

unify_access_id_for_single_file()
{
    echo -n "unifying access id for $1 ..."

    local SMALI_FILE=$1
    local DOLLAR_COUNT=`echo -n $SMALI_FILE | sed 's/[^\$]//g' | wc -c`

    # find all access method
    local OLD_IFS=$IFS
    IFS=$'\n'
    for ACCESS_LINE in `grep -nF ".method static synthetic access$" $SMALI_FILE`
    do
        # format: .method static synthetic access$2800(Landroid/widget/Editor;Z)V
	# access$2800->access$hash(invoke-qromSetLongClickMode(Z)V)
	local LINE_NUM=`echo $ACCESS_LINE | cut -d':' -f1`
	while true
	do
	    ((LINE_NUM++))
	    local SMALI_LINE=`sed -n "$LINE_NUM p" $SMALI_FILE`
	    local OPERATOR=`echo $SMALI_LINE | egrep -o '\s*(iput|iget|sput|sget|aput|aget|invoke)'`
	    if [ "$OPERATOR" ]; then
	        local METHOD_NAME=$OPERATOR-`echo ${SMALI_LINE#*;->}`
		METHOD_NAME="access$"`echo "$METHOD_NAME" | md5sum | awk '{print $1}'`
		#local ACCESS_NAME=`echo $ACCESS_LINE | egrep -o ' access\$[0-9]+\('`
		# for unknown reason, egrep in `` cannot match, use below solution
		echo "$ACCESS_LINE" | egrep -o 'access\$[0-9]+\(' | while read ACCESS_NAME
		do
		    METHOD_NAME="$METHOD_NAME("
		    # repalce host class smali file
		    sed -i "s/$ACCESS_NAME/$METHOD_NAME/g" $SMALI_FILE
		    # replace all inner class smali files
   	            # only replace direct inner class, that is only one '$' after
		    # maybe there is a good regex to do this
		    local FIND_PATTERN="${SMALI_FILE%.smali}*.smali"
		    echo $FIND_PATTERN | while read -d' ' FILE
		    do
		        # filter only one '$'
			local NEW_DOLLAR_COUNT=`echo -n $FILE | sed 's/[^\$]//g' | wc -c`
			# direct inner class has one more '$' than host class
			((NEW_DOLLAR_COUNT--))
			if [ $NEW_DOLLAR_COUNT -eq $DOLLAR_COUNT ]; then
			    sed -i "s/$ACCESS_NAME/$METHOD_NAME/g" $FILE
			fi
		    done
		    break
		done
	        break
	    fi
	done
    done
    IFS=$OLD_IFS

    echo "done."
}


unify_access_id()
{
    echo "================================================"
    echo "unifying access id ..."

    SMALI_PATH=$INTERMEDIATE_PATH/tos_new
    for SMALI_FILE in `find $SMALI_PATH -name "*.smali"`
    do
        unify_access_id_for_single_file $SMALI_FILE
    done
}

# fix the class name of member access, including fields and methods
# eg. invoke-virtual {v1}, Landroid/widget/TextView;->getContext()Landroid/content/Context; -> invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

find_member_belonged_class()
{
#set -x
    local SOURCE_DIR=$PORT_DEVICE/tos/smali_new
    local CLASS_NAME=$1
    local MEMBER_NAME=$2
    local MEMBER_SIGNATURE=$3
    local MEMBER_TYPE=$4

    # CLASS_NAME format: Landroid/widget/Editor;, convert to smali file name
    local SMALI_FILE=${CLASS_NAME:1:${#CLASS_NAME}-2}.smali
    SMALI_FILE=`find $SOURCE_DIR -path "*/$SMALI_FILE"`
    if [ "$SMALI_FILE" -a -f $SMALI_FILE ]; then
        # find member's definition
	local FIND_PATTERN=
	if [ "$MEMBER_TYPE" = "field" ]; then
	    # field definition format: .field mCursorCount:I
	    FIND_PATTERN="^\.field.*$MEMBER_NAME:$MEMBER_SIGNATURE"
	else
	    # method definition: .method private getLastTouchOffsets()J
	    FIND_PATTERN="^\.method.*$MEMBER_NAME$MEMBER_SIGNATURE"
	fi
	# replace escape characters
	FIND_PATTERN=${FIND_PATTERN//\[/\\\[}
	FIND_PATTERN=${FIND_PATTERN//\]/\\\]}
	FIND_PATTERN=${FIND_PATTERN//\(/\\\(}
	FIND_PATTERN=${FIND_PATTERN//\)/\\\)}
	local MATCHED=`egrep "$FIND_PATTERN" $SMALI_FILE`
	if [ "$MATCHED" ]; then
	    # find it
	    echo "$CLASS_NAME"
	else
	    # find in parent class
	    # format: .super Ljava/lang/Object;
	    local PARENT_CLASS=`head -n2 $SMALI_FILE | tail -n1 | grep -o "L.*;"`
	    find_member_belonged_class "$PARENT_CLASS" "$MEMBER_NAME" "$MEMBER_SIGNATURE" "$MEMBER_TYPE"
	fi
    else
        # TODO file not exist, is this possible?
	# it may be basic java class, such as Ljava/lang/Object;
	echo ""
    fi
#set +x
}

fix_class_members_for_file()
{
#set -x
    local SMALI_FILE=$1

    echo -n "fixing class members for file: $SMALI_FILE ..."
    # handle line by line
    OLD_IFS=$IFS
    IFS=$'\n'

    local CLASS_NAME=
    local MEMBER_NAME=
    local MEMBER_SIGNATURE=
    local MEMBER_TYPE=
    while read LINE
    do
        CLASS_NAME=
        MEMBER_NAME=
        MEMBER_SIGNATURE=
        MEMBER_TYPE=
        # field format: iput v1, p0, Landroid/widget/Editor;->mInputType:I
        local FIELD_MATCH=`echo "$LINE" | grep -o " L.*;->.*:.*" | sed 's/^ //' | sed 's/->/:/'`
	if [ "$FIELD_MATCH" ]; then
	    MEMBER_TYPE="field"
	    CLASS_NAME=`echo "$FIELD_MATCH" | cut -d':' -f1`
	    MEMBER_NAME=`echo "$FIELD_MATCH" | cut -d':' -f2`
	    MEMBER_SIGNATURE=`echo "$FIELD_MATCH" | cut -d':' -f3`
	else
	    # method format: invoke-direct {p0, p1}, Landroid/widget/Editor;->isOffsetVisible(I)Z
            local METHOD_MATCH=`echo "$LINE" | grep -o " L.*;->.*\(.*\).*" | sed 's/^ //'`
	    if [ "$METHOD_MATCH" ]; then
	        MEMBER_TYPE="method"
		# constructor <init> continas '>' too
	        METHOD_MATCH=`echo "$METHOD_MATCH" | sed 's/->/#/'`
	        CLASS_NAME=`echo "$METHOD_MATCH" | cut -d'#' -f1`
	        MEMBER_NAME=`echo "$METHOD_MATCH" | cut -d'#' -f2`
	        MEMBER_SIGNATURE="("`echo "$MEMBER_NAME" | cut -d'(' -f2`
		MEMBER_NAME=`echo "$MEMBER_NAME" | cut -d'(' -f1`
	    fi
	fi
	if [ "$MEMBER_TYPE" ]; then
	    local B_HAVE_FIXED=false
	    if [ -f "$FIXED_MEMBER_FILE" ]; then
	        fgrep "$MEMBER_TYPE|$CLASS_NAME|$MEMBER_NAME|$MEMBER_SIGNATURE" $FIXED_MEMBER_FILE > /dev/null
		if [ $? -eq 0 ]; then
		    B_HAVE_FIXED=true
		fi
	    fi
	    
	    B_HAVE_FIXED=false
	    if [ $B_HAVE_FIXED = false ]; then
	        # find out its real host class
	        local REAL_CLASS_NAME=`find_member_belonged_class "$CLASS_NAME" "$MEMBER_NAME" "$MEMBER_SIGNATURE" "$MEMBER_TYPE"`
	        if [ "$REAL_CLASS_NAME" -a "$REAL_CLASS_NAME" != "$CLASS_NAME" ]; then
	            #echo "$MEMBER_NAME: $CLASS_NAME->$REAL_CLASS_NAME"
		    # replace all smali method files
                    for METHOD_FILE in `find $INTERMEDIATE_PATH/tos_new -name "*.method"`
                    do
		        local SED_PATTERN=
			if [ "$MEMBER_TYPE" = "field" ]; then
			    SED_PATTERN="s#$CLASS_NAME->$MEMBER_NAME:$MEMBER_SIGNATURE#$REAL_CLASS_NAME>$MEMBER_NAME:$MEMBER_SIGNATURE#g"
			    # variable pattern not work
			    sed -i "s#$CLASS_NAME->$MEMBER_NAME:$MEMBER_SIGNATURE#$REAL_CLASS_NAME>$MEMBER_NAME:$MEMBER_SIGNATURE#g" $METHOD_FILE
			else
			    SED_PATTERN="s#$CLASS_NAME->$MEMBER_NAME$MEMBER_SIGNATURE#$REAL_CLASS_NAME>$MEMBER_NAME$MEMBER_SIGNATURE#g"
			    sed -i "s#$CLASS_NAME->$MEMBER_NAME$MEMBER_SIGNATURE#$REAL_CLASS_NAME->$MEMBER_NAME$MEMBER_SIGNATURE#g" $METHOD_FILE
			fi
			#sed '$SED_PATTERN' $METHOD_FILE
			#echo "sed '$SED_PATTERN' $METHOD_FILE"
                    done
	        else
	            # TODO find in derived class
		    REAL_CLASS_NAME=$CLASS_NAME
	        fi

	        echo "$MEMBER_TYPE|$CLASS_NAME|$MEMBER_NAME|$MEMBER_SIGNATURE" >> $FIXED_MEMBER_FILE
	    fi
	fi
    done < $SMALI_FILE
    IFS=$OLD_IFS

    echo "done."
#set +x
}

fix_class_members()
{
    echo "================================================"
    echo "fixing real class members ..."

    # record which fields or methods have been fixed to prevent repetitive work
    local FIXED_MEMBER_FILE=$TEMP_PATH/fixed_member.tos_new
    rm -f $FIXED_MEMBER_FILE

    SMALI_PATH=$INTERMEDIATE_PATH/tos_new
    #for SMALI_FILE in `find $SMALI_PATH -name "*.smali"`
    # fix upon splitted method file
    for SMALI_FILE in `find $SMALI_PATH -name "*.method"`
    do
        fix_class_members_for_file $SMALI_FILE
    done

    rm -f $FIXED_MEMBER_FILE
}

# split smali files to parts based on methods

split_single_smali_file()
{
    echo -n "splitting smali file by methods for $1 ..."

    local SMALI_FILE=$1
    local FILE_NAME=`basename $SMALI_FILE`
    # save method name to part file name map. part file name is the hash of method signature
    local METHOD_MAP=$SMALI_FILE.method.map
    local METHOD_DIR=`dirname $SMALI_FILE`/${FILE_NAME%\.smali}
    local HEAD_FILE=$METHOD_DIR/$FILE_NAME.head

    mkdir -p $METHOD_DIR
    rm -f $HEAD_FILE

    # read file line by line until the first method, normally the constructor
    # all lines ahead the first method save to file xxx.head
    OLD_IFS=$IFS
    IFS=$'\n'

    local BHEAD=true
    local BMETHOD=false
    local METHOD_NAME=
    local METHOD_SIGNATURE=
    local METHOD_FILE=
    local B_SAVE_METHOD=false
    local CLASS_NAME=

    while read LINE
    do
        if [ "$LINE" -a ${#LINE} -gt 7 -a "${LINE:0:7}" = ".method" ]; then
	    BHEAD=false
	    BMETHOD=true
	    # format: .method private getResourceId(II)I
	    # get its method signature: getResourceId(II)I
	    METHOD_SIGNATURE=`echo "$LINE" | egrep -o "[a-zA-Z0-9$_]+\(.*\).*" | md5sum | awk '{print $1}'`
	    # check if this method need to be handled
	    B_SAVE_METHOD=false
	    # if the size of config file is 0, it means this class is a new class
	    local CONFIG_FILE_SIZE=`wc -l $CONFIG_PATH/$CLASS_NAME.txt | awk '{print $1}'`
	    if [ $CONFIG_FILE_SIZE -eq 0 ]; then
	        B_SAVE_METHOD=true
	    else
	        while read CONFIG_LINE
	        do
	            # format: name|type|signature|mod_type|extra
		    TEMP_SIGNATURE=`echo $CONFIG_LINE | awk -F'|' '{print $1$3}' | md5sum | awk '{print $1}'`
		    if [ $METHOD_SIGNATURE = $TEMP_SIGNATURE ]; then
		        B_SAVE_METHOD=true
		        break
		    fi
	        done < $CONFIG_PATH/$CLASS_NAME.txt
	    fi
	    METHOD_FILE=$METHOD_DIR/$FILE_NAME.$METHOD_SIGNATURE.method
	    rm -f $METHOD_FILE
	fi

	if [ $BHEAD = true ];then
            echo "$LINE" >> $HEAD_FILE
	    if [ "$LINE" -a ${#LINE} -gt 6 -a "${LINE:0:6}" = ".class" ]; then
	        CLASS_NAME=`echo $LINE | awk '{print $NF}'`
		CLASS_NAME=${CLASS_NAME:1:${#CLASS_NAME}-2}
		CLASS_NAME=`echo $CLASS_NAME | sed 's/\//\./g'`
	    fi
	elif [ $BMETHOD = true ];then
	    if [ $B_SAVE_METHOD = true ]; then
	        echo "$LINE" >> $METHOD_FILE
	    fi
	else
	    echo "do nothing" > /dev/null
	fi

        if [ "$LINE" -a ${#LINE} -ge 11 -a "${LINE:0:11}" = ".end method" ]; then
	    BMETHOD=false
	fi

    done < $SMALI_FILE
    IFS=$OLD_IFS

    echo "done."
}

split_smali_files()
{
    echo "================================================"
    echo "splitting smali files ..."

    SMALI_PATH=$INTERMEDIATE_PATH/tos_new
    for SMALI_FILE in `find $SMALI_PATH -name "*.smali"`
    do
        split_single_smali_file $SMALI_FILE
    done
}

# unify inner class id. convert numeric id to its belonged host method
unify_inner_class_for_file()
{
    echo -n "unifying inner class name for $1 ..."

    SMALI_FILE=$1
    local PARENT_SMALI_FILE=${SMALI_FILE%\$*\.smali}.smali

    # find which method it belongs to
    # first line is the class name: .class Landroid/widget/Editor$1;
    local CLASS_NAME=`head -n1 $SMALI_FILE | awk '{print $NF}'`
    local PARENT_CLASS_NAME=`head -n1 $PARENT_SMALI_FILE | awk '{print $NF}'`
    local LINE_NUM=`grep -n "new-instance.*$CLASS_NAME" $PARENT_SMALI_FILE | cut -d':' -f1`

    # search forward to see if there are other inner class's new-instance until method start line
    local LINE=
    local B_MORE_THAN_ONE=false
    local METHOD_SIGNATURE=
    for((i=$LINE_NUM-1;i>=0;i--))
    do
        LINE=`sed -n "$i p" $PARENT_SMALI_FILE`
	if [ -z "$LINE" ]; then
	    continue
	fi

	if [ ${#LINE} -gt 7 -a "${LINE:0:7}" = ".method" ]; then
	    METHOD_SIGNATURE=`echo "$LINE" | egrep -o "[a-zA-Z0-9$_]+\(.*\).*"`
	    break
	fi

        echo "$LINE" | grep "new-instance.*${PARENT_CLASS_NAME:0:${#PARENT_CLASS_NAME}-1}\$.*;" > /dev/null
	if [ $? -eq 0 ]; then
	    B_MORE_THAN_ONE=true
	    break
	fi
    done

    if [ $B_MORE_THAN_ONE = false ]; then
        # search backward to see if there are other inner class's new-instance until method end line
        for((i=$LINE_NUM+1;i>0;i++))
        do
            LINE=`sed -n "$i p" $PARENT_SMALI_FILE`
	    if [ -z "$LINE" ]; then
	        continue
	    fi

	    if [ ${#LINE} -ge 11 -a "${LINE:0:11}" = ".end method" ]; then
	        break
	    fi

            echo "$LINE" | grep "new-instance.*${PARENT_CLASS_NAME:0:${#PARENT_CLASS_NAME}-1}\$.*;" > /dev/null
	    if [ $? -eq 0 ]; then
	        B_MORE_THAN_ONE=true
	        break
	    fi
        done
    fi

    if [ $B_MORE_THAN_ONE = false ]; then
        local NEW_CLASS_NAME=${CLASS_NAME%\$*;}"$"`echo "$METHOD_SIGNATURE" | md5sum | awk '{print $1}'`";"
	local NEW_SMALI_FILE=${NEW_CLASS_NAME##*/}
	NEW_SMALI_FILE=${NEW_SMALI_FILE:0:${#NEW_SMALI_FILE}-1}
	local SED_FILE_PATTERN=`echo "$NEW_SMALI_FILE" | cut -d '\$' -f 1`
	NEW_SMALI_FILE=${SMALI_FILE%/*}/$NEW_SMALI_FILE".smali"
	mv $SMALI_FILE $NEW_SMALI_FILE
	SED_FILE_PATTERN="`dirname $NEW_SMALI_FILE`/$SED_FILE_PATTERN*.smali"
	# variables contain '/', use '#' as seperator
	sed -i "s#$CLASS_NAME#$NEW_CLASS_NAME#g" `ls $SED_FILE_PATTERN`
    fi

    echo "done."
}

unify_inner_class()
{
    echo "================================================"
    echo "unifying anonymous inner class ..."

    SMALI_PATH=$INTERMEDIATE_PATH/tos_new
    # find supports regex not very well, use find + grep
    # egrep work not well in ``
    #for SMALI_FILE in `find $SMALI_PATH -name "*\\\$[0-9]*.smali" | egrep "\\\$[0-9]+\.smali"`
    find $SMALI_PATH -name "*\\\$[0-9]*.smali" | egrep "\\\$[0-9]+\.smali$" | while read SMALI_FILE
    do
        unify_inner_class_for_file $SMALI_FILE
    done
}

# final patch
do_patch()
{
    echo "================================================"
    echo "do final patching ..."

    local CONFLICT_FILE=$TARGET_PATH/patch_failed.txt
    rm -f $CONFLICT_FILE

    local TOS_NEW_PATH="$INTERMEDIATE_PATH/tos_new"
    for FILE in `find $TOS_NEW_PATH -name "*.head" -o -name "*.method"`
    do
	local RELATIVE_PATH=${FILE:${#TOS_NEW_PATH}+1}
        # do not patch anonymous inner classes, as their names may be different
	echo "$FILE" | egrep "\\\$[0-9]+\.smali$" > /dev/null
	if [ $? -eq 0 ]; then
            echo $RELATIVE_PATH >> $CONFLICT_FILE
	    continue
	fi

        echo -n "patching $FILE ..."
	local TOS_OLD_FILE=$INTERMEDIATE_PATH/tos/$RELATIVE_PATH
	local TARGET_FILE=$TARGET_PATH_OLD/$RELATIVE_PATH
	if [ -f "$TOS_OLD_FILE" ]; then
	    if [ -f $TARGET_FILE ]; then
	        # do patch
		diff3 -Em -L TARGET $TARGET_FILE -L TOS_OLD $TOS_OLD_FILE -L TOS_NEW $FILE > $TEMP_PATH/merge.smali
		if [ $? -eq 0 ]; then
		    # patch succeed
		    TARGET_FILE=$TARGET_PATH/$RELATIVE_PATH
		    mkdir -p `dirname $TARGET_FILE`
		    mv $TEMP_PATH/merge.smali $TARGET_FILE
		    echo "success."
		else
		    # patch failed, need handle conflict
		    echo $RELATIVE_PATH >> $CONFLICT_FILE
		    echo "fail."
		fi
	    else
	        # target method may be deleted
	        TARGET_FILE=$TARGET_PATH/$RELATIVE_PATH
		mkdir -p `dirname $TARGET_FILE`
		cp $FILE $TARGET_FILE
		echo "success"
	    fi
	else
	    # new method
            TARGET_FILE=$TARGET_PATH/$RELATIVE_PATH
	    mkdir -p `dirname $TARGET_FILE`
	    cp $FILE $TARGET_FILE
	    echo "success."
	fi
    done
}

# parse xml config file. convert it to plain text file
# handle <file> or <class> tag
CONFIG_FILE=$PORT_DEVICE/tos/ota/TPS/tos_code_mod_new.xml
CONFIG_FILE_LINE=1
CONFIG_FILE_TOTAL_LINE=0

ignore_comment()
{
    local LINE=$1
    local TAG=`echo $LINE | awk '{print $1}'`
    if [ ${#TAG}  -lt 4 ]; then
        return 0
    fi

    if [ ${TAG:0:4} == "<!--" ]; then
        ((CONFIG_FILE_LINE++))
        while [ $CONFIG_FILE_LINE -le $CONFIG_FILE_TOTAL_LINE ]
        do
            LINE=`sed -n "$CONFIG_FILE_LINE p" $CONFIG_FILE | sed 's/[\r\n]//'`
	    if [ ${#LINE} -ge 3 -a ${LINE:${#LINE}-3:3} = "-->" ]; then
	        ((CONFIG_FILE_LINE++))
	        return 1
	    fi

	    ((CONFIG_FILE_LINE++))
        done
    fi

    return 0
}

handle_class()
{
    local CLASS_INFO=$1
    local PARENT_CLASS=$2
    local CURRENT_CLASS=
    local CLASS_TYPE=
    local MODIFY_TYPE=

    # format: <file path="android/widget/Editor.java" type="modify"> or <class name="SelectionActionModeCallback" type="modify">
    for SECTION in $CLASS_INFO
    do
        if [ "$SECTION" = "/>" ]; then
	    return
	fi

        if [ ${#SECTION} -lt 4 ]; then
	    continue
	fi

	if [ ${SECTION:0:5} = "<file" ]; then
	    CLASS_TYPE="file"
	else
	    CLASS_TYPE="class"
	fi

	if [ ${SECTION:0:4} = "path" ]; then
	    # convert file path to class name
	    CURRENT_CLASS=`echo $SECTION | cut -d'=' -f2 | sed 's/\"//g' | sed 's/\//\./g' | sed 's/\.java//'`
	    if [ "$PARENT_CLASS" ]; then
	        CURRENT_CLASS=$PARENT_CLASS\$$CURRENT_CLASS
	    fi
	elif [ ${SECTION:0:4} = "name" ]; then
	    CURRENT_CLASS=`echo $SECTION | cut -d'=' -f2 | sed 's/\"//g'`
	    if [ "$PARENT_CLASS" ]; then
	        CURRENT_CLASS=$PARENT_CLASS\$$CURRENT_CLASS
	    fi
	elif [ ${SECTION:0:4} = "type" ]; then
	    #MODIFY_TYPE=`echo $SECTION | cut -d'=' -f2 | sed 's/\"//g'`
	    MODIFY_TYPE=`echo $SECTION | grep -o '\".*\"' | sed 's/\"//g'`
	fi

        # handle "<class ... />"
	if [ ${SECTION:${#SECTION}-2:2} = "/>" ]; then
	    # generate an empty file
            local OUTPUT_CONFIG_FILE=$CONFIG_PATH_NEW/$CURRENT_CLASS.txt
            rm -f $OUTPUT_CONFIG_FILE
	    touch $OUTPUT_CONFIG_FILE
	    return
	fi
    done

    local OUTPUT_CONFIG_FILE=$CONFIG_PATH_NEW/$CURRENT_CLASS.txt
    rm -f $OUTPUT_CONFIG_FILE

    ((CONFIG_FILE_LINE++))
    while [ $CONFIG_FILE_LINE -le $CONFIG_FILE_TOTAL_LINE ]
    do
        local LINE=`sed -n "$CONFIG_FILE_LINE p" $CONFIG_FILE | sed 's/[\r\n]//' | sed 's/^[[:space:]]*//' | sed 's/[[:space:]]*$//'`
        ignore_comment "$LINE"
	if [ $? -ne 0 ]; then
	    continue
	fi

	local VAR_TYPE=
	local NAME=
	local SIGN=
	local MOD_TYPE=
	local EXTRA=
	for SECTION in $LINE
	do
	    if [ -z $VAR_TYPE ]; then
	        if [ "$SECTION" = "</class>" -o "$SECTION" = "</file>" ]; then
	            return
	        fi

                local TAG=`echo $SECTION | cut -d'<' -f2`
                if [ "$TAG" = "field" ]; then
	            VAR_TYPE="field"
	        elif [ "$TAG" = "method" ]; then
	            VAR_TYPE="method"
	        elif [ "$TAG" = "class" ]; then
		    VAR_TYPE="class"
	            handle_class "$LINE" "$CURRENT_CLASS"
		    break
		elif [ "$TAG" = "file" ]; then
		    # it seems that recursive return work not very well in shell, handle <file> tag here too
		    VAR_TYPE="class"
	            handle_class "$LINE"
	        fi
	    else
	        local ATTR_NAME=`echo "$SECTION" | cut -d'=' -f1`
		if [ "$ATTR_NAME" = "/>"  ]; then
		    break
		fi
		local ATTR_VALUE=`echo "$SECTION" | grep -o '\".*\"' | sed 's/\"//g'`
		# xml attribute value may contain escape characters: 
		ATTR_VALUE=${ATTR_VALUE//&amp;/&}
		ATTR_VALUE=${ATTR_VALUE//&lt;/<}
		ATTR_VALUE=${ATTR_VALUE//&gt;/>}
		ATTR_VALUE=${ATTR_VALUE//&quot;/\"}
		ATTR_VALUE=${ATTR_VALUE//&apos;/\'}
		if [ "$ATTR_NAME" = "name" ]; then
		    NAME=$ATTR_VALUE
		elif [ "$ATTR_NAME" = "signature" ]; then
		    SIGN=$ATTR_VALUE
		elif [ "$ATTR_NAME" = "type" ]; then
		    MOD_TYPE=$ATTR_VALUE
		else
		    EXTRA=$ATTR_VALUE
		fi
	    fi
	done

	if [ "$VAR_TYPE" = "field" -o "$VAR_TYPE" = "method" ]; then
	    echo "$NAME|$VAR_TYPE|$SIGN|$MOD_TYPE|$EXTRA" >> $OUTPUT_CONFIG_FILE
	fi

	((CONFIG_FILE_LINE++))
    done
}

parse_config_file()
{
    echo "================================================"
    echo -n "parsing code change config file ..."

    CONFIG_FILE_TOTAL_LINE=`wc -l $CONFIG_FILE | awk '{print $1}'`
    while [ $CONFIG_FILE_LINE -le $CONFIG_FILE_TOTAL_LINE ]
    do
        # sed v4.1.5 doesn't support sed 's/^[ \t]*//' syntax
        local LINE=`sed -n "$CONFIG_FILE_LINE p" $CONFIG_FILE | sed 's/[\r\n]//' | sed 's/^[[:space:]]*//' | sed 's/[[:space:]]*$//'`
        ignore_comment "$LINE"
	if [ $? -ne 0 ]; then
	    continue
	fi

	for SECTION in $LINE
	do
	    if [ -z "$SECTION" ]; then
	        continue
	    fi

	    if [ ${SECTION:0:1} = "<" ]; then
	        # tag
		SECTION=${SECTION:1}
		if [ $SECTION = "file" -o $SECTION = "class" ]; then
		    handle_class "$LINE"
		    break
		fi
	    fi
	done

	((CONFIG_FILE_LINE++))
    done

    # TODO handle overrided tos_code_mod_override.xml

    echo "done."
}

do_incremental_patch_for_device()
{
    local DEVICE=$1

    if [ "$DEVICE" = "tos" -o "$DEVICE" = "aosp" ]; then
        echo "[ERROR] you cannot execute 'make incpatch' under '$DEVICE'"
        exit 1
    fi

    if [ ! -f $PORT_DEVICE/$DEVICE/patch/smali/target/patch_failed.txt ]; then
        echo "[ERROR] you must execute 'make patch' first over device '$DEVICE' fisrt."
	echo "or if you just want do patch via latest tos rom. just run 'make patch' is what you want."
	exit 1
    fi

    # make sure all conflicts have been solved
    while read -d$'\n' LINE
    do
        if [ ! -f "$PORT_DEVICE/$DEVICE/patch/smali/target/$LINE" ]; then
	    echo "[ERROR] there are unsolved conflicts: $LINE"
	    echo "please solve all the conflicts first"
	    exit 1
	fi
    done < $PORT_DEVICE/$DEVICE/patch/smali/target/patch_failed.txt

    DEVICE_NAME=$DEVICE
    DEVICE_ROOT=$PORT_DEVICE/$DEVICE_NAME
    ORIGIN_PATH=$DEVICE_ROOT/patch/smali/original
    INTERMEDIATE_PATH=$DEVICE_ROOT/patch/smali/intermediate
    TARGET_PATH_OLD=$DEVICE_ROOT/patch/smali/target_old
    TARGET_PATH=$DEVICE_ROOT/patch/smali/target
    CONFIG_PATH=$DEVICE_ROOT/patch/config
    CONFIG_PATH_NEW=$DEVICE_ROOT/patch/config_new
    TEMP_PATH=$DEVICE_ROOT/temp

    # make work directories
    mv $TARGET_PATH $TARGET_PATH_OLD
    mkdir -p $ORIGIN_PATH/aosp
    mkdir -p $ORIGIN_PATH/tos
    mkdir -p $ORIGIN_PATH/$DEVICE_NAME
    mkdir -p $INTERMEDIATE_PATH/aosp
    mkdir -p $INTERMEDIATE_PATH/tos
    mkdir -p $INTERMEDIATE_PATH/$DEVICE_NAME
    mkdir -p $TARGET_PATH
    mkdir -p $CONFIG_PATH
    mkdir -p $CONFIG_PATH_NEW
    mkdir -p $TEMP_PATH

    parse_config_file
    prepare_smali_files
    cp -R $ORIGIN_PATH/* $INTERMEDIATE_PATH/
    resource_id_to_name
    unify_access_id
    unify_inner_class
    remove_smali_lines
    split_smali_files
    fix_class_members
    do_patch
}

main()
{
    if [ -z "$DEVICE_NAME" ]; then
        # not device name, do it for all devices
	for DIR in `ls $PORT_DEVICE`
	do
	    if [ "$DIR" = "tos" -o "$DIR" = "aosp" ]; then
	        continue
	    fi
	    do_incremental_patch_for_device $DIR
	done
    else
        do_incremental_patch_for_device $DEVICE_NAME
    fi
}

main