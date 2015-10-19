
# refer to android build system, need build the MAKECMDGOALDS variable
SHOW_COMMANDS:= $(filter showcommands,$(MAKECMDGOALS))

ifeq ($(strip $(SHOW_COMMANDS)),)
hide := @
else
hide :=
endif

# apktool安装framework时的TAG前缀
IF_TAG_PREFIX := TPS_
