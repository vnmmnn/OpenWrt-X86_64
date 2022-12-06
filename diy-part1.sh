#!/bin/bash
#
# Copyright (c) 2019-2020 P3TERX <https://p3terx.com>
#
# This is free software, licensed under the MIT License.
# See /LICENSE for more information.
#
# https://github.com/P3TERX/Actions-OpenWrt
# File name: diy-part1.sh
# Description: OpenWrt DIY script part 1 (Before Update feeds)
#
# Uncomment a feed source
#sed -i 's/^#\(.*helloworld\)/\1/' feeds.conf.default
# Add a feed source
# sed -i '$a src-git lienol https://github.com/Lienol/openwrt-package' feeds.conf.default
# sed -i '$a src-git passwall https://github.com/xiaorouji/openwrt-passwall' feeds.conf.default
# sed -i '$a src-git jerryk https://github.com/jerrykuku/openwrt-package' feeds.conf.default
git clone https://github.com/fw876/helloworld.git package/ssr
git clone https://github.com/jerrykuku/lua-maxminddb.git  package/lua-maxminddb
git clone https://github.com/jerrykuku/luci-app-vssr.git  package/luci-app-vssr
# git clone https://github.com/firker/diy-ziyong.git package/diy-ziyong
# git clone https://github.com/UnblockNeteaseMusic/luci-app-unblockneteasemusic.git package/luci-app-unblockneteasemusic
git clone -b 18.06 https://github.com/garypang13/luci-theme-edge.git package/luci-theme-edge
git clone -b 18.06 https://github.com/jerrykuku/luci-theme-argon.git  package/luci-theme-argon-18.06
git clone https://github.com/tty228/luci-app-serverchan.git package/luci-app-serverchan
git clone https://github.com/thinktip/luci-theme-neobird.git package/luci-theme-neobird
git clone https://github.com/sirpdboy/luci-theme-opentopd.git package/luci-theme-opentopd
git clone https://github.com/sirpdboy/luci-app-lucky.git package/lucky
###
# git clone https://github.com/sirpdboy/sirpdboy-package.git package/sirpdboy-package
git clone https://github.com/zzsj0928/luci-app-pushbot.git package/luci-app-pushbot
git clone https://github.com/destan19/OpenAppFilter.git package/OpenAppFilter
svn co https://github.com/sirpdboy/sirpdboy-package/trunk/luci-app-control-speedlimit package/sirpdboy-package/luci-app-control-speedlimit
svn co https://github.com/sirpdboy/sirpdboy-package/trunk/luci-app-control-weburl package/sirpdboy-package/luci-app-control-weburl
svn co https://github.com/sirpdboy/sirpdboy-package/trunk/luci-app-cpulimit package/sirpdboy-package/luci-app-cpulimit
svn co https://github.com/sirpdboy/sirpdboy-package/trunk/cpulimit package/sirpdboy-package/cpulimit
svn co https://github.com/sirpdboy/sirpdboy-package/trunk/luci-app-smartdns package/sirpdboy-package/luci-app-smartdns
svn co https://github.com/sirpdboy/sirpdboy-package/trunk/smartdns package/sirpdboy-package/smartdns
svn co https://github.com/sirpdboy/sirpdboy-package/trunk/adguardhome package/sirpdboy-package/adguardhome
svn co https://github.com/sirpdboy/sirpdboy-package/trunk/luci-app-adguardhome package/sirpdboy-package/luci-app-adguardhome
svn co https://github.com/firker/diy-ziyong/trunk/luci-app-wrtbwmon-zhcn package/diy-ziyong/luci-app-wrtbwmon-zhcn
svn co https://github.com/firker/diy-ziyong/trunk/luci-app-onliner package/diy-ziyong/luci-app-onliner
svn co https://github.com/firker/diy-ziyong/trunk/wrtbwmon package/diy-ziyong/wrtbwmon
svn co https://github.com/firker/diy-ziyong/trunk/theme package/diy-ziyong/theme
svn co https://github.com/sirpdboy/sirpdboy-package/trunk/luci-app-aria2 package/sirpdboy-package/luci-app-aria2
svn co https://github.com/sirpdboy/sirpdboy-package/trunk/aria2 package/sirpdboy-package/aria2
svn co https://github.com/QiuSimons/openwrt-mos/trunk/v2ray-geodata package/v2ray-geodata
###
# git clone https://github.com/kiddin9/openwrt-bypass.git package/openwrt-bypass
# sed -i 's/luci-lib-ipkg/luci-base/g' package/openwrt-bypass/luci-app-bypass/Makefile
git clone https://github.com/xiaorouji/openwrt-passwall.git package/openwrt-passwall
# git clone https://github.com/QiuSimons/openwrt-mos.git package/openwrt-mos
git clone https://github.com/sbwml/luci-app-alist.git package/luci-app-alist
git clone https://github.com/xiaorouji/openwrt-passwall2.git package/passwall2
git clone -b luci https://github.com/xiaorouji/openwrt-passwall package/passwall
find ./ | grep Makefile | grep v2ray-geodata | xargs rm -f
# git clone https://github.com/dwj0/luci-app-sms-tool.git package/luci-app-sms-tool
# git clone -b master https://github.com/vernesong/OpenClash.git package/OpenClash
# git clone https://github.com/linkease/istore.git package/istore
# sed -i 's/luci-lib-ipkg/luci-base/g' package/istore/luci/luci-app-store/Makefile
# git clone https://github.com/linkease/istore-ui.git package/istore-ui
# svn co https://github.com/kiddin9/openwrt-packages/trunk/adguardhome package/adguardhome
# svn co https://github.com/kiddin9/openwrt-packages/trunk/luci-app-adguardhome package/luci-app-adguardhome
svn co https://github.com/vernesong/OpenClash/trunk/luci-app-openclash package/luci-app-openclash
