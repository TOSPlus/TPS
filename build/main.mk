
# 使用bash作为makefile的shell环境
SHELL := /bin/bash

include $(PORT_BUILD)/defines.mk
include $(PORT_BUILD)/device.mk
include $(PORT_BUILD)/create.mk
include $(PORT_BUILD)/config.mk
include $(PORT_BUILD)/prepare.mk
include $(PORT_BUILD)/patch.mk
include $(PORT_BUILD)/package.mk
include $(PORT_BUILD)/clean.mk