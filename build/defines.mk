
# refer to android build system, need build the MAKECMDGOALDS variable
SHOW_COMMANDS:= $(filter showcommands,$(MAKECMDGOALS))

ifeq ($(strip $(SHOW_COMMANDS)),)
hide := @
else
hide :=
endif

# apktool安装framework时的TAG前缀
IF_TAG_PREFIX := TPS_


APKTOOL:=java -jar $(PORT_TOOLS)/apktool/apktool.jar

# install framework resouce apks
define install_framework_res_apk
$(shell $(APKTOOL) install-framework $1 -t $2)
endef

define decompile_apk
$(APKTOOL) d -f -t $1 -o $2 $3 -r
endef

define compile_apk
$(APKTOOL) b $1 -o $2
endef

define custom_app
$(hide)if [ -f $(1) ]; then $(1) $(2) $(3); fi
endef
