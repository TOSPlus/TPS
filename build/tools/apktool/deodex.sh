#!/bin/bash
set +x

APKTOOL_PATH=${PORT_TOOLS}/apktool
SMALI_JAR=${APKTOOL_PATH}/smali.jar
BAKSMALI_JAR=${APKTOOL_PATH}/baksmali.jar
SMALI="java -jar ${SMALI_JAR}"
BAKSMALI="java -jar ${BAKSMALI_JAR}"

systemdir=

function deodex_one_file() {
    if [ "$1" = '-a' ]
    then
        apilevel=$2
        classpath=$3
        file=$4
        tofile=${file/odex/$5} 
        echo "processing $tofile"
		if [ "$classpath" = "" ];then
            $BAKSMALI -a $apilevel -d $systemdir/framework -I -x $file > /dev/null || return -2
	    else
            $BAKSMALI -a $apilevel -c $classpath -d $systemdir/framework -I -x $file > /dev/null || return -2
	    fi
    else
        classpath=$1
        file=$2
        tofile=${file/odex/$3}
        echo "processing $tofile"
		if [ "$classpath" = "" ];then
        $BAKSMALI -d $systemdir/framework -I -x $file || return -2
		else
        $BAKSMALI -c $classpath -d $systemdir/framework -I -x $file || return -2
		fi
    fi
    $SMALI out -o classes.dex || return -2
    jar uf $tofile classes.dex || return -2
    rm classes.dex || return -2
    rm -rf out || return -2
    rm $file || return -2
    ${APKTOOL_PATH}/zipalign 4 $tofile $tofile.aligned || return -2
    mv $tofile.aligned $tofile || return -2
}

#usage
if [ $1 = '--help' ] 
then
    echo "usage: ./deodex.sh [-a APILevel] absolute_path_to_system_dir "
    echo "  -a    specify APILevel, default Level is 15"
    exit 0
fi 

if [ $1 = '-a' ]
then 
    apilevel=$2
    systemdir=$3
else
    systemdir=$1
fi

if [ -f $systemdir/framework/core.odex ] 
then
    if [ $1 = '-a' ]
    then
        deodex_one_file -a $apilevel "" $systemdir/framework/core.odex jar
    else
        deodex_one_file "" $systemdir/framework/core.odex jar
    fi

    if [[ $? != 0 ]];then
        echo "Process $systemdir/framework/core.odex error"
    fi
fi

for f in $systemdir/framework/*.jar
do
    classpath=$classpath:`basename $f`
done

#echo "classpath=$classpath"

for file in `find $systemdir -name "*.odex"`
do
    totype=

    if [ -f ${file/%.odex/.apk} ]
    then
        totype=apk
    elif [ -f ${file/%.odex/.jar} ]
    then
        totype=jar
    else
        totype=
        echo "Error: Can not detemine which ${file} belonged to "
        continue
    fi

    if [ $1 = '-a' ]
    then
        deodex_one_file -a $apilevel $classpath $file ${totype}
    else
        deodex_one_file $classpath $file ${totype}
    fi

    if [ $? -ne 0 ]
    then
        echo "Error: deodex $file"
	# ignore failure of apk deodex
	if [ totype = "jar" ]; then
	    exit 1
	fi
    else
        echo "$file finish"
    fi
done
