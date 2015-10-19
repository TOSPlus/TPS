.PHONY: create
DEVICE=$(device)
create:
ifeq ($(DEVICE),)
	@echo "Please specify the device parameter. eg. make create device=i9500"
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
	@echo "device '$(DEVICE)' directory tree created"
	@echo "now you should copy or link the ota package as 'ota.zip' to '$(PORT_DEVICE)/$(DEVICE)' directory"
	$(hide) if [ $(DEVICE) = "tos" -o $(DEVICE) = "aosp" ]; then \
			echo "you should also link the source code directory as 'source' to the '$(PORT_DEVICE)/$(DEVICE)' directory"; \
		fi
endif
