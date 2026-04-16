#!/bin/bash

# Adjust source code
patch -p1 -f < $(dirname "$0")/luci.patch

# Clone packages
git clone https://github.com/QiuSimons/luci-app-daed clone/daed
git clone https://github.com/sbwml/luci-app-mosdns clone/mosdns

# git clone https://github.com/ophub/luci-app-amlogic --depth=1 clone/amlogic
# git clone https://github.com/Zerogiven-OpenWRT-Packages/luci-app-podman --depth=1 feeds/luci/applications/luci-app-podman

# Adjust packages（注意顺序）
rm -rf feeds/luci/applications/luci-app-daed
cp -rf clone/daed/luci-app-daed feeds/luci/applications/
rm -rf feeds/packages/net/mosdns
cp -rf clone/mosdns/mosdns feeds/packages/net/
sed -i '/luci-app-attendedsysupgrade/d' feeds/luci/collections/luci/Makefile

# Clean packages
rm -rf clone