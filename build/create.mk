.PHONY: create
BRAND=$(brand)
DEVICE=$(device)
create:
ifeq ($(BRAND),)
	@echo "Please specify the device parameter. eg. make create brand=samsung device=i9500"
else
ifeq ($(DEVICE),)
	@echo "Please specify the device parameter. eg. make create brand=samsung device=i9500"
else
	$(hide) mkdir -p $(PORT_DEVICE)/$(DEVICE)
	$(hide) mkdir -p $(PORT_DEVICE)/$(DEVICE)/config/
	$(hide) mkdir -p $(PORT_DEVICE)/$(DEVICE)/ota/
	$(hide) mkdir -p $(PORT_DEVICE)/$(DEVICE)/boot/
	$(hide) mkdir -p $(PORT_DEVICE)/$(DEVICE)/patch/
	$(hide) mkdir -p $(PORT_DEVICE)/$(DEVICE)/progress/
	$(hide) mkdir -p $(PORT_DEVICE)/$(DEVICE)/package/
	$(hide) mkdir -p $(PORT_DEVICE)/$(DEVICE)/tools/
	$(hide) mkdir -p $(PORT_DEVICE)/$(DEVICE)/override/BOOT
	$(hide) mkdir -p $(PORT_DEVICE)/$(DEVICE)/override/BOOTABLE_IMAGES
	$(hide) mkdir -p $(PORT_DEVICE)/$(DEVICE)/override/SYSTEM
	$(hide)	if [ ! -f $(PORT_DEVICE)/$(DEVICE)/Makefile ]; then \
		cp -f $(PORT_CONFIG)/device_mk.template $(PORT_DEVICE)/$(DEVICE)/Makefile; \
		sed -i 's/samsung/$(BRAND)/' $(PORT_DEVICE)/$(DEVICE)/Makefile; \
		sed -i 's/GT-I9500/$(DEVICE)/' $(PORT_DEVICE)/$(DEVICE)/Makefile; \
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
	@echo "device '$(DEVICE)' directory tree created"
	@echo "now you should copy or link the ota package as 'ota.zip' into '$(PORT_DEVICE)/$(DEVICE)' directory and then execute make command"
endif
endif
