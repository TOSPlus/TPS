
PROG_UNZIP_OTA := unzip_ota
PROG_UNPACK_BOOTIMG := unpack_bootimg
PROG_DEODEX := prog_deodex
PROG_INSTALL_FRAMEWORK := install_framework
PROG_DECOMPILE_SMALI := decompile_smali
PROG_GEN_CODE_MOD_XML := gen_code_mod_xml
FILE_RECORD_IGNORE := $(DEVICE_ROOT)/config/file_record/ignore.txt

define ignore_record_file
    FILE=$1; \
    mkdir -p `dirname "$(FILE_RECORD_IGNORE)"`; \
    TEMP_ROOT=$(DEVICE_ROOT);\
    LENGTH=$${#TEMP_ROOT}; \
    RELATIVE_PATH=$${FILE:$$LENGTH+1}; \
    EXIST_LINE=`grep "^$$RELATIVE_PATH$$" "$(FILE_RECORD_IGNORE)" 2>/dev/null`; \
    if [ -z "$$EXIST_LINE" ]; then \
        echo "$$RELATIVE_PATH" >> "$(FILE_RECORD_IGNORE)"; \
    fi
endef

define prepare_init
    $(hide) mkdir -p $(DEVICE_ROOT)/progress
    $(hide) $(call ignore_record_file,"$(DEVICE_ROOT)/progress")
endef

# 检查ota.zip是否存在
# 检查ota.zip的格式是否正确
define check_ota_exist
	$(hide) if [ ! -f $(DEVICE_ROOT)/ota.zip ];then \
			echo "[ERROR] no ota.zip exist in '$(DEVICE_ROOT)/ota.zip'"; \
			exit 1; \
		fi; \
        unzip -l $(DEVICE_ROOT)/ota.zip system/* > /dev/null 2>&1; \
        if [ $$? -ne 0 ]; then \
            echo "[ERROR] ota.zip is not valid. cannot find 'system' directory in ota.zip. please make sure you downloaded the correct ota.zip"; \
            exit 1; \
        fi;
endef

# 解压ota.zip
define unzip_ota
	$(hide) if [ ! -f $(DEVICE_ROOT)/progress/$(PROG_UNZIP_OTA) ]; then \
            rm -rf ota; \
			unzip -o $(DEVICE_ROOT)/ota.zip -d ota; \
			if [ $$? -ne 0 ]; then \
				echo "[ERROR] unzip ota.zip failed"; \
				exit 1; \
			fi; \
            md5sum $(DEVICE_ROOT)/ota.zip | awk '{print $$1}' > $(DEVICE_ROOT)/ota/ota.zip.checksum; \
			touch $(DEVICE_ROOT)/progress/$(PROG_UNZIP_OTA); \
	        fi
    $(hide) $(call ignore_record_file,"$(DEVICE_ROOT)/ota")
endef

# 执行deodex
define deodex_dir
	$(hide) if [ ! -f $(DEVICE_ROOT)/progress/$(PROG_DEODEX) ]; then \
            source $(PORT_TOOLS)/makefile_var_setup.sh $(DEVICE_NAME); \
            source $(PORT_TOOLS)/java_setup.sh $(DEVICE_NAME); \
            if [ $$? -ne 0 ]; then \
                exit 1; \
            fi; \
			$(PORT_TOOLS)/apktool/deodex.sh $(DEVICE_ROOT)/ota/system $(DEVICE_NAME); \
			touch $(DEVICE_ROOT)/progress/$(PROG_DEODEX); \
		fi
endef

# 安装framework-res
define install_framework
	$(hide) if [ ! -f $(DEVICE_ROOT)/progress/$(PROG_INSTALL_FRAMEWORK) ]; then \
            source $(PORT_TOOLS)/makefile_var_setup.sh $(DEVICE_NAME); \
            source $(PORT_TOOLS)/java_setup.sh $(DEVICE_NAME); \
            if [ $$? -ne 0 ]; then \
                exit 1; \
            fi; \
			$(PORT_TOOLS)/install_framework.sh $(DEVICE_ROOT)/ota/system/framework $(IF_TAG_PREFIX)$(DEVICE_NAME); \
			if [ $$? -ne 0 ]; then \
				exit 1; \
			fi; \
			touch $(DEVICE_ROOT)/progress/$(PROG_INSTALL_FRAMEWORK); \
		fi
endef

# 如果没有指定第三方定制的res apk，尝试查找
ifeq ($(CUSTOM_RESOURCE_PACKAGE),none)
	CUSTOM_RESOURCE_PACKAGE := $(foreach FILE, $(shell find $(DEVICE_ROOT)/ota/system/framework/ -name "*.apk" ! -name "framework-res.apk" 2>/dev/null), $(shell basename $(FILE)))
endif

# 反编译成smali
define decompile_smali
	$(hide) if [ ! -f $(DEVICE_ROOT)/progress/$(PROG_DECOMPILE_SMALI) ]; then \
            source $(PORT_TOOLS)/makefile_var_setup.sh $(DEVICE_NAME); \
            source $(PORT_TOOLS)/java_setup.sh $(DEVICE_NAME); \
            if [ $$? -ne 0 ]; then \
                exit 1; \
            fi; \
            echo "decompile framework jars & apks ..."; \
			$(PORT_TOOLS)/decompile.sh $(DEVICE_ROOT)/ota/system $(DEVICE_ROOT)/smali $(IF_TAG_PREFIX)$(DEVICE_NAME) $(DECOMPILE_PACKAGES) $(CUSTOM_RESOURCE_PACKAGE); \
			if [ $$? -ne 0 ]; then \
				exit 1; \
			fi; \
            if [ -n "$(EXTRA_DECOMPILE_PACKAGES)" ]; then \
                echo "decompile extras apps ..."; \
                TOS_EXTRA_PACKAGES=; \
                for PACKAGE in $(EXTRA_DECOMPILE_PACKAGES); \
                do \
                    if [ $${PACKAGE:0:4} = "TOS:" ]; then \
                        TOS_EXTRA_PACKAGES="$$TOS_EXTRA_PACKAGES $${PACKAGE:4}"; \
                    fi; \
                done; \
                if [ -n "$$TOS_EXTRA_PACKAGES" ]; then \
                    $(PORT_TOOLS)/decompile.sh $(PORT_DEVICE)/tos/ota/system $(DEVICE_ROOT)/package/modified_apps/tos $(IF_TAG_PREFIX)tos $$TOS_EXTRA_PACKAGES; \
                fi; \
                TARGET_EXTRA_PACKAGES=; \
                for PACKAGE in $(EXTRA_DECOMPILE_PACKAGES); \
                do \
                    if [ $${PACKAGE:0:7} = "TARGET:" ]; then \
                        TARGET_EXTRA_PACKAGES="$$TARGET_EXTRA_PACKAGES $${PACKAGE:7}"; \
                    fi; \
                done; \
                if [ -n "$$TARGET_EXTRA_PACKAGES" ]; then \
                    $(PORT_TOOLS)/decompile.sh $(DEVICE_ROOT)/ota/system $(DEVICE_ROOT)/package/modified_apps/target $(IF_TAG_PREFIX)$(DEVICE_NAME) $$TARGET_EXTRA_PACKAGES; \
                fi; \
                $(PORT_TOOLS)/record_generated_files.sh $(DEVICE_ROOT) $(DEVICE_ROOT)/package/modified_apps; \
            fi; \
			touch $(DEVICE_ROOT)/progress/$(PROG_DECOMPILE_SMALI); \
		fi
    $(hide) $(call ignore_record_file,"$(DEVICE_ROOT)/smali")
endef

# 解boot.img
define unpack_bootimg
	$(hide) if [ $(DEVICE_NAME) != "tos" -a $(DEVICE_NAME) != "aosp" ]; then \
                if [ ! -f $(DEVICE_ROOT)/progress/$(PROG_UNPACK_BOOTIMG) ]; then \
                    UNPACK_BOOT_IMG=; \
                    if [ -f $(DEVICE_ROOT)/ota/boot.img ]; then \
                        source $(PORT_TOOLS)/makefile_var_setup.sh $(DEVICE_NAME); \
                        if [ $(UNPACK_BOOTIMG_TOOL) = "default" -o -z "$(UNPACK_BOOTIMG_TOOL)" ]; then \
                            UNPACK_BOOT_IMG=$(PORT_TOOLS)/unpackbootimg.sh; \
                        elif [ -f "$(UNPACK_BOOTIMG_TOOL)" ]; then \
                            UNPACK_BOOT_IMG=$(UNPACK_BOOTIMG_TOOL); \
                        else \
                            UNPACK_BOOT_IMG=$(DEVICE_ROOT)/$(UNPACK_BOOTIMG_TOOL); \
                        fi; \
                        mkdir -p $(DEVICE_ROOT)/boot; \
                        $$UNPACK_BOOT_IMG $(DEVICE_ROOT)/ota/boot.img $(DEVICE_ROOT)/boot; \
                        if [ $$? -ne 0 ]; then \
                            echo "unpack boot.img failed."; \
                            exit 1; \
                        fi; \
                        $(PORT_TOOLS)/record_generated_files.sh $(DEVICE_ROOT) $(DEVICE_ROOT)/boot; \
                        touch $(DEVICE_ROOT)/progress/$(PROG_UNPACK_BOOTIMG); \
                    fi; \
                fi; \
            fi 
endef

define reset_progresses
    if [ -d $(DEVICE_ROOT)/progress ]; then \
        cd $(DEVICE_ROOT)/progress/; \
        rm -f $(PROG_UNZIP_OTA) $(PROG_UNPACK_BOOTIMG) $(PROG_DEODEX) $(PROG_INSTALL_FRAMEWORK) $(PROG_DECOMPILE_SMALI) $(PROG_GEN_CODE_MOD_XML); \
        cd - > /dev/null 2>&1; \
    fi
endef

# 检查ota.zip是否有改动。如果有，应该重新执行prepare步骤
define check_ota_changed
    $(hide) OTA_CHANGED=true;\
            if [ -f $(DEVICE_ROOT)/ota.zip -a -f $(DEVICE_ROOT)/ota/ota.zip.checksum ]; then \
                OLD_OTA_CHECKSUM=`cat $(DEVICE_ROOT)/ota/ota.zip.checksum`; \
                NEW_OTA_CHECKSUM=`md5sum $(DEVICE_ROOT)/ota.zip | awk '{print $$1}'`; \
                if [ $$OLD_OTA_CHECKSUM = $$NEW_OTA_CHECKSUM ]; then \
                    OTA_CHANGED=false; \
                fi; \
            fi; \
            if [ $$OTA_CHANGED = true ]; then \
                $(call reset_progresses); \
            fi
endef

.PHONY: prepare
FORCE=$(force)
prepare:
	@echo "prepare start"
	$(hide) if [ "$(FORCE)" = true ]; then \
			$(call reset_progresses); \
	fi
	$(call check_ota_changed)
	$(call check_ota_exist)
	$(call prepare_init)
	$(call unzip_ota)
	$(call unpack_bootimg)
	$(call deodex_dir)
	$(call install_framework)
	$(call decompile_smali)
	@echo "done."
