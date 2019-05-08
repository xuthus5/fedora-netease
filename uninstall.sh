#!/bin/bash
# Author: xuthus
# Time: 2019.2.11
# Function: 该脚本用于Fedora上一键卸载网易云音乐，测试于 Fedora29-KDE

if [ $(id -u) != "0" ]; then
    echo "请使用管理员权限执行脚本！"
    exit
fi

#移除被依赖的包 不建议移除
# dnf remove -y rpmfusion* vlc gstreamer1-libav gstreamer1-plugins-ugly gstreamer1-plugins-bad-free gstreamer1-plugins-bad-freeworld gstreamer1-vaapi

## 删除安装配置以及软件包

#删除软件包
rm -rf /opt/netease/netease-cloud-music
#删除桌面启动项
rm -f /usr/share/applications/netease-cloud-music.desktop
#删除ICON
rm -f /usr/share/icons/hicolor/scalable/apps/netease-cloud-music.svg
#删除doc
rm -rf /usr/share/doc/netease-cloud-music
