################################################################################
#
# at24c32
#
################################################################################

AT24C32_VERSION = 0.1
AT24C32_SITE = /home/hardik/Project/TFA9879/modules
AT24C32_SITE_METHOD = local
AT24C32_LICENSE = GPL-2.0

AT24C32_MODULE_MAKE_OPTS = \
	KVER=$(LINUX_VERSION_PROBED) \
	KSRC=$(LINUX_DIR)

#define RTL8723BU_INSTALL_TARGET_CMDS
#	$(INSTALL) -D -m 644 $(@D)/rtl8723b_fw.bin $(TARGET_DIR)/lib/firmware/rtlwifi/rtl8723b_fw.bin
#endef

$(eval $(kernel-module))
$(eval $(generic-package))
