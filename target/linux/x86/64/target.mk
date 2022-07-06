ARCH:=x86_64
BOARDNAME:=x86_64
DEFAULT_PACKAGES += kmod-bnx2 kmod-button-hotplug kmod-e1000e kmod-e1000 kmod-forcedeth kmod-i40e kmod-igb kmod-ixgbe kmod-phy-realtek kmod-r8169

define Target/Description
        Build images for 64 bit systems including virtualized guests.
endef
