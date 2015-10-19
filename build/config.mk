.PHONY: config
DEVICE=$(device)
config:
	$(hide)	if [ ! -f $(PORT_DEVICE)/$(DEVICE)/Makefile ]; then \
                cp -f $(PORT_CONFIG)/device_mk.template $(PORT_DEVICE)/$(DEVICE)/Makefile; \
            fi
	$(hide) if [ ! -f $(PORT_DEVICE)/$(DEVICE)/config/build.prop ]; then \
                cp -f $(PORT_CONFIG)/build.prop $(PORT_DEVICE)/$(DEVICE)/config/; \
            fi
	$(hide) if [ ! -f $(PORT_DEVICE)/$(DEVICE)/config/remove_files.list ]; then \
                cp -f $(PORT_CONFIG)/remove_files.list $(PORT_DEVICE)/$(DEVICE)/config/; \
            fi
	$(hide) if [ ! -f $(PORT_DEVICE)/$(DEVICE)/config/keep_files.list ]; then \
                cp -f $(PORT_CONFIG)/keep_files.list $(PORT_DEVICE)/$(DEVICE)/config/; \
            fi
	$(hide) if [ ! -f $(PORT_DEVICE)/$(DEVICE)/config/tos_system_files.ignore ]; then \
                cp -f $(PORT_CONFIG)/tos_system_files.ignore $(PORT_DEVICE)/$(DEVICE)/config/; \
            fi
	$(hide) if [ $(DEVICE) = "tos" ]; then \
                sed -i 's/\(DECOMPILE_PACKAGES.*\)/\1 framework-qrom.jar/' $(PORT_DEVICE)/$(DEVICE)/Makefile; \
                sed -i 's/CUSTOM_RESOURCE_PACKAGE := none/CUSTOM_RESOURCE_PACKAGE := framework-qrom-res.apk/' $(PORT_DEVICE)/$(DEVICE)/Makefile; \
            fi
	@echo "now you can cd to '$(PORT_DEVICE)/$(DEVICE)' and execute make command"
