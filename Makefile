#
# Copyright (C) 2011-2014 OpenWrt.org
#
# This is free software, licensed under the GNU General Public License v2.
# See /LICENSE for more information.
#

include $(TOPDIR)/rules.mk

PKG_NAME:=xdh3c
PKG_VERSION:=0.0.2
PKG_RELEASE:=1

include $(INCLUDE_DIR)/package.mk

define	Build/Prepare	
	mkdir	-p	$(PKG_BUILD_DIR)	
	$(CP)	-ar ./src/* $(PKG_BUILD_DIR)/	
endef	

define Package/xdh3c
  SECTION:=net
  CATEGORY:=Network
  TITLE:=xdh3c client 
  DEPENDS:=+libpcap
endef

define Package/xdh3c/description
  xdh3c is an network cient in xidian university north yard.it can work on wndr3800 changed by jefby 2014-05-09.
endef

define Package/xdh3c/install
	$(INSTALL_DIR) $(1)/usr/bin
	$(INSTALL_BIN) $(PKG_BUILD_DIR)/xdh3c $(1)/usr/bin/
endef


$(eval $(call BuildPackage,xdh3c))
