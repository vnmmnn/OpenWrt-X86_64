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

# sed -i 's/KERNEL_PATCHVER:=5.15/KERNEL_PATCHVER:=6.1/g' ./target/linux/x86/Makefile
# sed -i 's/KERNEL_PATCHVER:=6.1/KERNEL_PATCHVER:=5.15/g' ./target/linux/x86/Makefile
# sed -i 's/KERNEL_PATCHVER:=6.6/KERNEL_PATCHVER:=5.15/g' ./target/linux/x86/Makefile


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

git clone https://github.com/sbwml/openwrt_helloworld package/helloworld
# git clone https://github.com/xiaorouji/openwrt-passwall.git package/openwrt-passwall
# git clone https://github.com/xiaorouji/openwrt-passwall-packages package/passwall-packages
# git clone https://github.com/fw876/helloworld.git package/ssr
# merge_package https://github.com/fw876/helloworld /helloworld/luci-app-ssr-plus


find ./ | grep Makefile | grep v2ray-geodata | xargs rm -f
find ./ | grep Makefile | grep mosdns | xargs rm -f
git clone https://github.com/sbwml/luci-app-mosdns -b v5 package/mosdns
git clone https://github.com/sbwml/v2ray-geodata package/v2ray-geodata


git clone https://github.com/sbwml/openwrt-qBittorrent package/openwrt-qBittorrent
git clone https://github.com/sbwml/luci-app-alist.git package/luci-app-alist
# git clone https://github.com/jerrykuku/luci-theme-argon.git package/luci-theme-argon
git clone https://github.com/tty228/luci-app-wechatpush.git package/luci-app-wechatpush
git clone https://github.com/pymumu/luci-app-smartdns.git package/luci-app-smartdns
git clone https://github.com/pymumu/openwrt-smartdns package/smartdns
git clone https://github.com/gdy666/luci-app-lucky.git package/lucky
git clone https://github.com/sirpdboy/netspeedtest.git package/netspeedtest
###

# git clone -b js https://github.com/sirpdboy/luci-theme-kucat package/luci-theme-kucat
# git clone https://github.com/sbwml/OpenAppFilter.git package/OpenAppFilter
git clone https://github.com/destan19/OpenAppFilter.git package/OpenAppFilter    

# merge_package https://github.com/firker/diy-ziyong diy-ziyong/luci-app-onliner
# merge_package https://github.com/kiddin9/kwrt-packages kwrt-packages/luci-app-wrtbwmon
# merge_package https://github.com/kiddin9/kwrt-packages kwrt-packages/wrtbwmon
# merge_package https://github.com/kiddin9/kwrt-packages kwrt-packages/adguardhome
merge_package https://github.com/kiddin9/kwrt-packages kwrt-packages/luci-app-adguardhome

###
# git clone https://github.com/kiddin9/openwrt-bypass.git package/openwrt-bypass
# sed -i 's/luci-lib-ipkg/luci-base/g' package/openwrt-bypass/luci-app-bypass/Makefile
# git clone https://github.com/xiaorouji/openwrt-passwall2.git package/passwall2
# git clone -b luci https://github.com/xiaorouji/openwrt-passwall package/passwall
# git clone https://github.com/dwj0/luci-app-sms-tool.git package/luci-app-sms-tool




