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

function merge_package(){
    repo=`echo $1 | rev | cut -d'/' -f 1 | rev`
    pkg=`echo $2 | rev | cut -d'/' -f 1 | rev`
    # find package/ -follow -name $pkg -not -path "package/custom/*" | xargs -rt rm -rf
    git clone --depth=1 --single-branch $1
    mv $2 package/custom/
    rm -rf $repo
}
function drop_package(){
    find package/ -follow -name $1 -not -path "package/custom/*" | xargs -rt rm -rf
}

rm -rf package/custom; mkdir package/custom

# Add a feed source

# git clone https://github.com/sbwml/openwrt_helloworld.git package/helloworld
git clone https://github.com/xiaorouji/openwrt-passwall.git package/openwrt-passwall
git clone https://github.com/xiaorouji/openwrt-passwall-packages.git package/passwall-packages
# git clone https://github.com/fw876/helloworld.git package/ssr
# merge_package https://github.com/fw876/helloworld.git /helloworld/luci-app-ssr-plus



git clone https://github.com/sbwml/luci-app-mosdns.git -b v5 package/mosdns
git clone https://github.com/sbwml/v2ray-geodata.git package/v2ray-geodata

git clone https://github.com/hudra0/qosmate.git package/qosmate
git clone https://github.com/hudra0/luci-app-qosmate.git/ package/luci-app-qosmate
git clone https://github.com/sbwml/openwrt-qBittorrent.git package/openwrt-qBittorrent
git clone https://github.com/sbwml/luci-app-openlist2.git package/openlist
# git clone https://github.com/jerrykuku/luci-theme-argon.git package/luci-theme-argon
# git clone https://github.com/jerrykuku/luci-app-argon-config.git package/luci-app-argon-config
# git clone https://github.com/tty228/luci-app-wechatpush.git package/luci-app-wechatpush
# git clone https://github.com/pymumu/luci-app-smartdns.git package/luci-app-smartdns
# git clone https://github.com/pymumu/openwrt-smartdns.git package/smartdns
git clone https://github.com/gdy666/luci-app-lucky.git package/lucky
git clone https://github.com/sirpdboy/netspeedtest.git package/netspeedtest
git clone https://github.com/timsaya/luci-app-bandix.git package/luci-app-bandix
git clone https://github.com/timsaya/openwrt-bandix.git package/openwrt-bandix
# git clone https://github.com/stevenjoezhang/luci-app-adguardhome.git package/luci-app-adguardhome
###

git clone https://github.com/sirpdboy/luci-theme-kucat.git package/luci-theme-kucat
git clone https://github.com/sirpdboy/luci-app-kucat-config.git package/luci-app-kucat-config
# git clone -b js https://github.com/sirpdboy/luci-app-adguardhome.git package/luci-app-adguardhome
# chmod +x ./package/luci-app-adguardhome/luci-app-adguardhome/root/usr/libexec/rpcd/luci.adguardhome
git clone https://github.com/sirpdboy/luci-app-advancedplus.git package/luci-app-advancedplus
git clone https://github.com/sbwml/OpenAppFilter.git package/OpenAppFilter
# git clone https://github.com/destan19/OpenAppFilter.git package/OpenAppFilter    

# merge_package https://github.com/firker/diy-ziyong diy-ziyong/luci-app-onliner
# merge_package https://github.com/kiddin9/kwrt-packages kwrt-packages/luci-app-wrtbwmon
# merge_package https://github.com/kiddin9/kwrt-packages kwrt-packages/wrtbwmon
# merge_package https://github.com/kiddin9/kwrt-packages kwrt-packages/adguardhome
merge_package https://github.com/kiddin9/kwrt-packages kwrt-packages/luci-app-adguardhome
# merge_package https://github.com/kiddin9/kwrt-packages kwrt-packages/aria2
# merge_package https://github.com/kiddin9/kwrt-packages kwrt-packages/luci-app-aria2
# merge_package https://github.com/kiddin9/kwrt-packages kwrt-packages/ariang
###
# git clone https://github.com/kiddin9/openwrt-bypass.git package/openwrt-bypass
# sed -i 's/luci-lib-ipkg/luci-base/g' package/openwrt-bypass/luci-app-bypass/Makefile
# git clone https://github.com/xiaorouji/openwrt-passwall2.git package/passwall2
# git clone -b luci https://github.com/xiaorouji/openwrt-passwall package/passwall
# git clone https://github.com/dwj0/luci-app-sms-tool.git package/luci-app-sms-tool




