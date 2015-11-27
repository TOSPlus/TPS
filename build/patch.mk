
# 检查设备。make patch不能用于aosp及tos设备
define check_patch_device
	$(hide) if [ $(DEVICE_NAME) = "aosp" -o $(DEVICE_NAME) = "tos" ]; then \
			echo "[ERROR] target 'patch/javapatch' cannot used upon device '$(DEVICE_NAME)'"; \
			exit 1; \
		fi
endef

SMALI_PATCH_FAIL_FILE := $(PORT_DEVICE)/$(DEVICE_NAME)/patch/smali/target/patch_failed.txt

# 基于smali的合并
define patch_by_smali
	$(hide) if [ -f $(SMALI_PATCH_FAIL_FILE) ]; then \
			echo "patch has already been done. please see $(PORT_DEVICE)/$(DEVICE_NAME)/patch/smali/target. you can run make javapatch now"; \
			exit; \
		fi; \
        source $(PORT_TOOLS)/makefile_var_setup.sh $(DEVICE_NAME); \
		$(PORT_TOOLS)/patch_by_smali.sh $(DEVICE_NAME); \
		if [ $$? -ne 0 ];then \
			exit 1; \
		fi
endef

.PHONY: patch javapatch incpatch syncpatch

##############################################################################################
patch:
	$(call check_patch_device)
	$(call patch_by_smali)

TOS_OTA_NEW := $(PORT_DEVICE)/tos/ota_new
TOS_OTA_NEW_SMALI := $(PORT_DEVICE)/tos/smali_new

$(TOS_OTA_NEW):
	$(hide) if [ ! -f $(PORT_DEVICE)/tos/ota_new.zip ]; then \
			echo "[ERROR] $(PORT_DEVICE)/tos/ota_new.zip not found. you should put new version ota.zip of tos under '$(PORT_DEVICE)/tos'"; \
			exit 1; \
		fi; \
		unzip $(PORT_DEVICE)/tos/ota_new.zip -d $(PORT_DEVICE)/tos/ota_new; \
		if [ $$? -ne 0 ]; then \
			echo "[ERROR] unzip $(PORT_DEVICE)/tos/ota_new.zip failed"; \
			exit 1; \
		fi


$(TOS_OTA_NEW_SMALI): $(TOS_OTA_NEW)
	$(hide) source $(PORT_TOOLS)/makefile_var_setup.sh $(DEVICE_NAME); \
        $(PORT_TOOLS)/install_framework.sh $(PORT_DEVICE)/tos/ota_new/system/framework $(IF_TAG_PREFIX)tos_new; \
		if [ $$? -ne 0 ];then \
			exit 1; \
		fi; \
		SHELL_DECOMPILE_PACKAGES=$(DECOMPILE_PACKAGES); \
		if [ -z "$$SHELL_DECOMPILE_PACKAGES" ]; then \
			SHELL_DECOMPILE_PACKAGES=`grep -F "DECOMPILE_PACKAGES" $(PORT_DEVICE)/tos/Makefile | cut -d'=' -f2`; \
		fi; \
		SHELL_CUSTOM_RESOURCE_PACKAGE=$(CUSTOM_RESOURCE_PACKAGE); \
		if [ -z "$$SHELL_CUSTOM_RESOURCE_PACKAGE" ]; then \
			SHELL_CUSTOM_RESOURCE_PACKAGE=`grep -F "CUSTOM_RESOURCE_PACKAGE" $(PORT_DEVICE)/tos/Makefile | cut -d'=' -f2`; \
			if [ -z "$$SHELL_CUSTOM_RESOURCE_PACKAGE" ]; then \
				for FILE in `find $(PORT_DEVICE)/tos/ota_new/system/framework/ -name "*.apk" ! -name "framework-res.apk"`; \
				do \
					if [ -z "$$SHELL_CUSTOM_RESOURCE_PACKAGE" ]; then \
						SHELL_CUSTOM_RESOURCE_PACKAGE=`basename $$FILE`; \
					else \
						SHELL_CUSTOM_RESOURCE_PACKAGE="$$SHELL_CUSTOM_RESOURCE_PACKAGE `basename $$FILE`"; \
					fi;\
				done \
			fi; \
		fi; \
		$(PORT_TOOLS)/decompile.sh $(PORT_DEVICE)/tos/ota_new/system $(PORT_DEVICE)/tos/smali_new $(IF_TAG_PREFIX)tos_new $$SHELL_DECOMPILE_PACKAGES $$SHELL_CUSTOM_RESOURCE_PACKAGE; \
		if [ $$? -ne 0 ];then \
			exit 1; \
		fi

incpatch: $(TOS_OTA_NEW_SMALI) 
	$(hide) echo "$(CURDIR) is absolute path, $(PORT_ROOT) maybe a link path, so cannot compare directly" > /dev/null ; \
        source $(PORT_TOOLS)/makefile_var_setup.sh $(DEVICE_NAME); \
		if [ "`cat $(CURDIR)/Makefile | md5sum`" != "`cat $(PORT_ROOT)/Makefile | md5sum`" ];  then \
			$(PORT_TOOLS)/incremental_patch.sh $(DEVICE_NAME); \
		else \
			$(PORT_TOOLS)/incremental_patch.sh; \
		fi

##############################################################################################
incpackage:
	$(hide) if [ "`cat $(CURDIR)/Makefile | md5sum`" != "`cat $(PORT_ROOT)/Makefile | md5sum`" ];  then \
			$(PORT_TOOLS)/incremental_package.sh $(DEVICE_NAME); \
		else \
			$(PORT_TOOLS)/incremental_package.sh; \
		fi
		
##############################################################################################

TOS_SYSTEM:=$(PORT_DEVICE)/tos/ota/system/
TOS_FRAMEWORK:=$(TOS_SYSTEM)/framework
PACKAGE_SYSTEM_PATH=$(PORT_DEVICE)/$(DEVICE_NAME)/package/target_files/SYSTEM/

USER_CUSTOM_APP_SH := $(PORT_DEVICE)/$(DEVICE_NAME)/custom_app.sh

TOS_FRAMEWORK_RES_APK:=$(TOS_FRAMEWORK)/framework-qrom-res.apk
TAG:=TPS_$(DEVICE_NAME)
OUTPUT_DIR:=$(PORT_DEVICE)/$(DEVICE_NAME)/out
OUTPUT_DIST_DIR:=$(PORT_DEVICE)/$(DEVICE_NAME)/out/dist


define tos_custom_apk_build
$(eval MODIFIED_APK:=$(shell find $(TOS_SYSTEM) -name $1.apk)) 
$(if $(strip $(MODIFIED_APK)),,\
	$(error $1.apk is not exit in tos system file,please check the variable TOS_CUSTOM_APPS configuration in Makefile))
$(eval DEST_APK:=$(OUTPUT_DIST_DIR)/$1.apk) 
$(eval tempSmaliPath:=$(shell mktemp -u $(OUTPUT_DIR)/$(apk).XXX.out)) 
$(DEST_APK) : $(MODIFIED_APK)
	@echo ">>>deal customed app: $(1).apk"
	$(hide)mkdir -p $(OUTPUT_DIST_DIR)
	$(hide)$(call decompile_apk,$(TAG),$(tempSmaliPath),$(MODIFIED_APK)) 
	$(hide)$(call custom_app,$(USER_CUSTOM_APP_SH),$(apk),$(tempSmaliPath)) 
	$(hide)$(call compile_apk,$(tempSmaliPath),$$@)
endef

ifneq ($(TOS_CUSTOM_APPS),)
$(foreach apk,$(TOS_CUSTOM_APPS),$(eval $(call tos_custom_apk_build,$(apk))))

TARGET_TOS_CUSTOM_APPS:=$(addprefix $(OUTPUT_DIST_DIR)/,$(TOS_CUSTOM_APPS))
TARGET_TOS_CUSTOM_APPS:=$(addsuffix .apk,$(TARGET_TOS_CUSTOM_APPS))
syncpatch:$(TARGET_TOS_CUSTOM_APPS)

endif


syncpatch:
	$(hide)$(PORT_TOOLS)/sync_tos_updated_framework_jars.sh $(DEVICE_NAME)
	
	