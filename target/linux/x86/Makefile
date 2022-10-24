# SPDX-License-Identifier: GPL-2.0-only
#
# Copyright (C) 2006-2011 OpenWrt.org

include $(TOPDIR)/rules.mk

ARCH:=i386
BOARD:=x86
BOARDNAME:=x86
FEATURES:=squashfs ext4 vdi vmdk pcmcia targz fpu boot-part rootfs-part
SUBTARGETS:=generic legacy geode 64

KERNEL_PATCHVER:=5.4
KERNEL_TESTING_PATCHVER:=5.4

KERNELNAME:=bzImage

include $(INCLUDE_DIR)/target.mk

DEFAULT_PACKAGES += partx-utils mkf2fs e2fsprogs kmod-button-hotplug \
kmod-bnx2 kmod-e1000e kmod-e1000 kmod-forcedeth kmod-i40e kmod-igb kmod-igc kmod-ixgbe kmod-macvlan kmod-r8169 kmod-sfp \
kmod-crypto-sha256 kmod-br-netfilter \
kmod-usb-net kmod-usb-net-asix kmod-usb-net-asix-ax88179 kmod-usb-net-cdc-ncm kmod-usb-net-ipheth kmod-usb-net-rndis kmod-usb-net-rtl8150 kmod-usb-net-rtl8152 \
htop netdata ethtool iftop lm-sensors usbmuxd irqbalance \
luci-theme-material luci-proto-bonding

$(eval $(call BuildTarget))

$(eval $(call $(if $(CONFIG_ISO_IMAGES),SetupHostCommand,Ignore),mkisofs, \
	Please install mkisofs. , \
	mkisofs -v 2>&1 , \
	genisoimage -v 2>&1 | grep genisoimage, \
	xorrisofs -v 2>&1 | grep xorriso \
))
