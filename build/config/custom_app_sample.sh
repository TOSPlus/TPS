custom_apk=$1
apk_smali_dir=$2

if [ "$custom_apk" = "qphone" ];then 
	echo ">>>add origin vendor field to qhone"
	sed -i '/\.field private static sInstance:Lcom\/android\/phone\/PhoneInterfaceManager;/r qphone/PhoneInterfaceManager.field.part' $apk_smali_dir/smali/com/android/phone/PhoneInterfaceManager.smali
	echo ">>>add origin vendor method to qhone"
	sed -i '/# virtual methods/r qphone/PhoneInterfaceManager.method.part' $apk_smali_dir/smali/com/android/phone/PhoneInterfaceManager.smali
	
elif [ "$custom_apk" = "systemui" ];then
	echo "no configuration"
fi
