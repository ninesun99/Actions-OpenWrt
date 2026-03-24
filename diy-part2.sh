#!/bin/bash
# Description: OpenWrt DIY script part 2 (After Update feeds)

# 1. 把 237 的默认 192.168.6.1 改成你喜欢的 192.168.8.1
sed -i 's/192.168.6.1/192.168.8.1/g' package/base-files/files/bin/config_generate

# 2. 强行将默认的主题设为 Argon
sed -i 's/luci-theme-bootstrap/luci-theme-argon/g' feeds/luci/collections/luci/Makefile
