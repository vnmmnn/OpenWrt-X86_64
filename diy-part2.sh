#!/bin/bash
#
# Copyright (c) 2019-2020 P3TERX <https://p3terx.com>
#
# This is free software, licensed under the MIT License.
# See /LICENSE for more information.
#
# https://github.com/P3TERX/Actions-OpenWrt
# File name: diy-part2.sh
# Description: OpenWrt DIY script part 2 (After Update feeds)
#
sed -i '/DTS_DIR:=$(LINUX_DIR)/a\BUILD_DATE_PREFIX := $(shell date +'%F')' ./include/image.mk
sed -i 's/IMG_PREFIX:=/IMG_PREFIX:=$(BUILD_DATE_PREFIX)-/g' ./include/image.mk

# curl -fsSL  https://raw.githubusercontent.com/siropboy/other/master/patch/poweroff/poweroff.htm > ./feeds/luci/modules/luci-mod-admin-full/luasrc/view/admin_system/poweroff.htm 
# curl -fsSL  https://raw.githubusercontent.com/siropboy/other/master/patch/poweroff/system.lua > ./feeds/luci/modules/luci-mod-admin-full/luasrc/controller/admin/system.lua
# curl -fsSL  https://raw.githubusercontent.com/firkerword/KPR/main/logo.jpg > .package/luci-app-serverchan/root/usr/bin/serverchan/api/logo.jpg
# curl -fsSL  https://raw.githubusercontent.com/firkerword/KPR/main/cus_config.yaml > ./package/openwrt-mos/luci-app-mosdns/root/etc/mosdns/cus_config.yaml
# wget https://raw.githubusercontent.com/firkerword/KPR/main/cus_config.yaml -O ./package/openwrt-mos/luci-app-mosdns/root/etc/mosdns/cus_config.yaml
# Modify default IP
###
sed -i 's/192.168.1.1/192.168.8.1/g' package/base-files/files/bin/config_generate

###
rm -rf ./feeds/luci/applications/luci-app-serverchan
# rm -rf ./feeds/luci/applications/luci-app-upnp
rm -rf ./feeds/luci/applications/luci-app-smartdns
# rm -rf ./feeds/luci/applications/luci-app-diskman
# rm -rf ./feeds/luci/applications/luci-app-aria2
# rm -rf ./feeds/luci/applications/aria2
# rm -rf ./feeds/luci/applications/ariang
# rm -rf ./feeds/packages/net/miniupnpd
# rm -rf ./feeds/packages/net/adguardhome
# rm -rf ./feeds/packages/net/smartdns
rm -rf ./feeds/luci/applications/luci-app-mosdns
rm -rf ./feeds/packages/net/mosdns
rm -rf ./feeds/luci/applications/luci-app-wechatpush
rm -rf ./feeds/packages/lang/golang
git clone https://github.com/sbwml/packages_lang_golang -b 25.x feeds/packages/lang/golang
# git clone https://github.com/kenzok8/golang feeds/packages/lang/golang
# rm -rf ./feeds/packages/net/curl
# git clone https://github.com/sbwml/feeds_packages_net_curl.git feeds/packages/net/curl
# rm -rf ./feeds/luci/themes/luci-theme-argon
# rm -rf ./feeds/luci/applications/luci-app-argon-config
# rm -rf ./feeds/luci/themes/luci-theme-argon-mod
rm -rf ./feeds/packages/net/{xray-core,v2ray-core,v2ray-geodata,sing-box}
rm -rf ./feeds/luci/applications/luci-app-passwall
rm -rf ./feeds/luci/applications/luci-app-homeproxy
rm -rf ./feeds/luci/applications/luci-app-ssr-plus
rm -rf ./feeds/packages/net/qBittorrent-Enhanced-Edition
rm -rf ./feeds/luci/applications/luci-app-qbittorrent
rm -rf ./feeds/packages/libs/qt6base
rm -rf ./feeds/packages/libs/utils/qt6tools

##

rm -rf ./feeds/luci/applications/luci-app-adbyby-plus
rm -rf ./package/sirpdboy-package/luci-lib-ipkg
# rm -rf ./package/sirpdboy-package/luci-app-dockerman
rm -rf ./package/sirpdboy-package/wrtbwmon
rm -rf ./package/sirpdboy-package/luci-app-smartdns
rm -rf ./package/sirpdboy-package/smartdns
rm -rf ./package/sirpdboy-package/luci-app-lucky
rm -rf ./package/sirpdboy-package/luci-app-partexp
rm -rf ./package/sirpdboy-package/luci-app-advancedplus
rm -rf ./package/sirpdboy-package/luci-app-autotimeset
rm -rf ./package/sirpdboy-package/netspeedtest
rm -rf ./package/sirpdboy-package/luci-theme-kucat
rm -rf ./package/sirpdboy-package/luci-app-control-timewol
rm -rf ./package/sirpdboy-package/luci-app-wrtbwmon
##
rm -rf ./package/passwall-packages/v2ray-geodata
# rm -rf ./package/helloworld/v2ray-geodata
# rm -rf ./package/passwall-packages/xray-plugin
# rm -rf ./package/ssr/v2ray-geodata
##
# rm -rf ./feeds/packages/net/https-dns-proxy
# svn co https://github.com/Lienol/openwrt-packages/trunk/net/https-dns-proxy feeds/packages/net/https-dns-proxy
# rm -rf feeds/packages/lang/golang
# svn export https://github.com/sbwml/packages_lang_golang/trunk feeds/packages/lang/golang
