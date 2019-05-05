#!/bin/bash
# Author: xuthus
# Time: 2019.2.11
# Function: 该脚本用于Fedora上一键卸载网易云音乐，测试于 Fedora29-KDE

if [ $(id -u) != "0" ]; then
    echo "请使用管理员权限执行脚本！"
    exit
fi

#移除被依赖的包

## 建议移除
dnf remove libmad
## 不建议移除
# dnf remove -y rpmfusion* vlc gstreamer1-libav gstreamer1-plugins-ugly gstreamer1-plugins-bad-free gstreamer1-plugins-bad-freeworld gstreamer1-vaapi



## 删除安装配置

rm -f /usr/bin/netease-cloud-music
rm -rf /usr/lib/netease-cloud-music
rm -f /usr/share/applications/netease-cloud-music.desktop
rm -f /usr/share/icons/hicolor/scalable/apps/netease-cloud-music.svg
