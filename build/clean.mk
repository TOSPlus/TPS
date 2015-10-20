
.PHONY: clean clean-prepare clean-patch clean-javapatch clean-repack clean-package clean-incpatch clean-debug

FORCE := $(force)

CLEAN_TIME := $(shell date +%Y%m%d%H%M%S)

# 删除所有生成的文件
clean:
	$(hide) $(PORT_TOOLS)/remove.sh $(DEVICE_NAME) "$(DEVICE_ROOT)/boot/*" $(CLEAN_TIME) $(FORCE)
	$(hide) $(PORT_TOOLS)/remove.sh $(DEVICE_NAME) "$(DEVICE_ROOT)/ota/*" $(CLEAN_TIME) $(FORCE) 
	$(hide) $(PORT_TOOLS)/remove.sh $(DEVICE_NAME) "$(DEVICE_ROOT)/package/*" $(CLEAN_TIME) $(FORCE) 
	$(hide) $(PORT_TOOLS)/remove.sh $(DEVICE_NAME) "$(DEVICE_ROOT)/patch/*" $(CLEAN_TIME) $(FORCE)
	$(hide) $(PORT_TOOLS)/remove.sh $(DEVICE_NAME) "$(DEVICE_ROOT)/progress/*" $(CLEAN_TIME) $(FORCE) 
	$(hide) $(PORT_TOOLS)/remove.sh $(DEVICE_NAME) "$(DEVICE_ROOT)/smali/*" $(CLEAN_TIME) $(FORCE) 
	$(hide) rm -rf $(DEVICE_ROOT)/temp $(DEVICE_ROOT)/config/file_record
            
# 清除$DEBUG_CLASS环境变量指定的单个类的中间文件
clean-debug:
	$(hide) if [ -z "$(DEBUG_CLASS)" ]; then \
                echo "clean for debug purpose only. you should set the DEBUG_CLASS env variable first"; \
            else \
                $(PORT_TOOLS)/debug.sh clean $(DEVICE_NAME); \
            fi
            
# 删除make prepare步骤生成的文件
clean-prepare:
	$(hide) $(PORT_TOOLS)/remove.sh $(DEVICE_NAME) "$(DEVICE_ROOT)/boot/*" $(CLEAN_TIME) $(FORCE)
	$(hide) $(PORT_TOOLS)/remove.sh $(DEVICE_NAME) "$(DEVICE_ROOT)/ota/*" $(CLEAN_TIME) $(FORCE) 
	$(hide) $(PORT_TOOLS)/remove.sh $(DEVICE_NAME) "$(DEVICE_ROOT)/smali/*" $(CLEAN_TIME) $(FORCE) 
	$(hide) $(PORT_TOOLS)/remove.sh $(DEVICE_NAME) "$(DEVICE_ROOT)/package/modified_apps" $(CLEAN_TIME) $(FORCE) 
	$(hide) rm -rf $(DEVICE_ROOT)/progress/unzip_ota $(DEVICE_ROOT)/progress/unpack_bootimg $(DEVICE_ROOT)/progress/prog_deodex \
	$(DEVICE_ROOT)/progress/install_framework $(DEVICE_ROOT)/progress/decompile_smali $(DEVICE_ROOT)/progress/gen_code_mod_xml

# 删除所有patch步骤生成的文件，包括make patch、make javapatch、make repack以及make package
clean-patch:
	$(hide) $(PORT_TOOLS)/remove.sh $(DEVICE_NAME) "$(DEVICE_ROOT)/patch/*" $(CLEAN_TIME) $(FORCE) 
	$(hide) for FILE in `ls $(DEVICE_ROOT)/package/`; \
        do if [ "$$FILE" = "modified_apps" ]; then continue; fi; $(PORT_TOOLS)/remove.sh $(DEVICE_NAME) "$(DEVICE_ROOT)/package/$$FILE" $(CLEAN_TIME) $(FORCE) ; done
	$(hide) rm -rf $(DEVICE_ROOT)/temp
	$(hide) rm -rf $(DEVICE_ROOT)/progress/parse_config_file $(DEVICE_ROOT)/progress/prepare_smali_files $(DEVICE_ROOT)/progress/resource_id_to_name \
	$(DEVICE_ROOT)/progress/unify_access_id $(DEVICE_ROOT)/progress/unify_inner_class $(DEVICE_ROOT)/progress/remove_smali_lines \
	$(DEVICE_ROOT)/progress/split_smali_files $(DEVICE_ROOT)/progress/fix_class_members $(DEVICE_ROOT)/progress/handle_anonymous_inner_class \
	$(DEVICE_ROOT)/progress/parse_patch_fail_list $(DEVICE_ROOT)/progress/smali_to_java $(DEVICE_ROOT)/progress/prepare_source_files \
	$(DEVICE_ROOT)/progress/java_patch $(DEVICE_ROOT)/progress/java_to_smali $(DEVICE_ROOT)/progress/combine_smali_parts \
	$(DEVICE_ROOT)/progress/restore_lines_info $(DEVICE_ROOT)/progress/restore_resource_ids $(DEVICE_ROOT)/progress/repack_jars \
	$(DEVICE_ROOT)/progress/copy_original_files $(DEVICE_ROOT)/progress/copy_overwrite_files $(DEVICE_ROOT)/progress/unify_access_id_for_inner_classes \
	$(DEVICE_ROOT)/progress/prepare_target_template $(DEVICE_ROOT)/progress/prepare_patched_smali_files $(DEVICE_ROOT)/progress/compile_smali_files \
	$(DEVICE_ROOT)/progress/prepare_system_files $(DEVICE_ROOT)/progress/make_boot_img $(DEVICE_ROOT)/progress/generate_apk_certs \
	$(DEVICE_ROOT)/progress/generate_filesystem_config $(DEVICE_ROOT)/progress/generate_link_for_system_files $(DEVICE_ROOT)/progress/generate_ota_package \
	$(DEVICE_ROOT)/progress/concat_build_prop
    
clean-javapatch:
	$(hide) $(PORT_TOOLS)/remove.sh $(DEVICE_NAME) "$(DEVICE_ROOT)/patch/java" $(CLEAN_TIME) $(FORCE) 
	$(hide) rm -rf $(DEVICE_NAME) $(DEVICE_ROOT)/temp
	$(hide) rm -rf $(DEVICE_ROOT)/progress/parse_patch_fail_list $(DEVICE_ROOT)/progress/smali_to_java $(DEVICE_ROOT)/progress/prepare_source_files \
	$(DEVICE_ROOT)/progress/java_patch $(DEVICE_ROOT)/progress/java_to_smali

clean-repack:
	$(hide) $(PORT_TOOLS)/remove.sh $(DEVICE_NAME) "$(DEVICE_ROOT)/patch/smali/pack/*" $(CLEAN_TIME) $(FORCE) 
	$(hide) rm -rf $(DEVICE_ROOT)/temp
	$(hide) rm -rf $(DEVICE_ROOT)/progress/combine_smali_parts $(DEVICE_ROOT)/progress/restore_lines_info $(DEVICE_ROOT)/progress/restore_resource_ids \
	$(DEVICE_ROOT)/progress/repack_jars $(DEVICE_ROOT)/progress/copy_original_files $(DEVICE_ROOT)/progress/copy_overwrite_files \
	$(DEVICE_ROOT)/progress/unify_access_id_for_inner_classes
    
clean-package:
	$(hide) for FILE in `ls $(DEVICE_ROOT)/package/`; \
        do if [ "$$FILE" = "modified_apps" ]; then continue; fi; $(PORT_TOOLS)/remove.sh $(DEVICE_NAME) "$(DEVICE_ROOT)/package/$$FILE" $(CLEAN_TIME) $(FORCE) ; done
	$(hide) rm -rf $(DEVICE_ROOT)/temp $(DEVICE_ROOT)/progress/prepare_target_template $(DEVICE_ROOT)/progress/prepare_patched_smali_files \
    $(DEVICE_ROOT)/progress/compile_smali_files $(DEVICE_ROOT)/progress/prepare_system_files $(DEVICE_ROOT)/progress/copy_override_files \
    $(DEVICE_ROOT)/progress/make_boot_img $(DEVICE_ROOT)/progress/generate_apk_certs $(DEVICE_ROOT)/progress/generate_filesystem_config \
    $(DEVICE_ROOT)/progress/generate_link_for_system_files $(DEVICE_ROOT)/progress/generate_ota_package $(DEVICE_ROOT)/progress/concat_build_prop
    
clean-incpatch:
	@echo "not implemented"
