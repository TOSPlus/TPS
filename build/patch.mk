
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

.PHONY: patch javapatch incpatch

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
