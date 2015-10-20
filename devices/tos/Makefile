# makefile template

# ro.product.brand
DEVICE_BRAND := tencent
# ro.product.model
DEVICE_NAME := tos
# ro.build.display.id
SW_VERSION := KTU84P dev-keys

# packages need to be decompiled
DECOMPILE_PACKAGES := framework.jar services.jar android.policy.jar framework2.jar telephony-common.jar ext.jar framework-qrom.jar

# custom resource package
CUSTOM_RESOURCE_PACKAGE := framework-qrom-res.apk

# extra packages need to be decompiled
#EXTRA_DECOMPILE_PACKAGES := TOS:qgallery.apk TARGET:Camera2.apk framework-qrom.jar

# unpack boot.img tool
# support relative path & variables
# e.g. $(PORT_TOOLS)/unpackbootimg.sh
UNPACK_BOOTIMG_TOOL := default

# pack boot.img too
# support relative path & variables
# e.g. $(PORT_TOOLS)/mkbootimg.sh
PACK_BOOTIMG_TOOL := default

# device list that is suitable for. these devices will be added to the ota updater-script assertion statement
SUITABLE_DEVICES :=

# apktool/smali/baksmali selection
# support relative path & variables
# e.g. $(PORT_TOOLS)/apktool/apktool.jar
APKTOOL_JAR := default
SMALI_JAR := default
BAKSMALI_JAR := default

# aapt tool
# support relative path & variables
# e.g. $(PORT_TOOLS)/android/aapt
AAPT_PATH := default

include $(PORT_BUILD)/main.mk
