#!/bin/bash
# Author: xuthus
# Time: 2019.2.11
# Function: 该脚本用于Fedora上一键安装网易云音乐，测试于 Fedora29-KDE

if [ $(id -u) != "0" ]; then
    echo "请使用管理员权限执行脚本！"
    exit
fi

Dependence(){
    #解决依赖性
    dnf install -y https://download1.rpmfusion.org/free/fedora/rpmfusion-free-release-$(rpm -E %fedora).noarch.rpm https://download1.rpmfusion.org/nonfree/fedora/rpmfusion-nonfree-release-$(rpm -E %fedora).noarch.rpm
    dnf install -y vlc gstreamer1-libav gstreamer1-plugins-ugly gstreamer1-plugins-bad-free gstreamer1-plugins-bad-freeworld gstreamer1-vaapi libmad qt5-qtx11extras qt5-qtmultimedia
}

## 安装配置
Install(){
    wget http://d1.music.126.net/dmusic/netease-cloud-music_1.1.0_amd64_ubuntu.deb
    ar -xvf netease-cloud-music_1.1.0_amd64_ubuntu.deb
    tar -xvf data.tar.xz
    cp -r usr/* /usr/
    rm -rf usr/ netease-cloud-music_1.1.0_amd64_ubuntu.deb control.tar.gz data.tar.xz debian.binary
    netease-cloud-music
}

Dependence
Install