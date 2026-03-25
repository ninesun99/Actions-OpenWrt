#!/bin/bash
# 暴力修改默认 IP 为 192.168.8.1
sed -i 's/192.168.6.1/192.168.8.1/g' package/base-files/files/bin/config_generate

# 强行将默认的主题设为 Argon
sed -i 's/luci-theme-bootstrap/luci-theme-argon/g' feeds/luci/collections/luci/Makefile

# 核心防坑：融合 237 大佬官方闭源驱动底包
mv .config .config.bak
cp -f defconfig/mt7981-ax3000.config .config
cat .config.bak >> .config
