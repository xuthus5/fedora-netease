#!/bin/bash
# Author: xuthus
# Time: 2019.5.5
# Function: 该脚本用于Fedora上一键安装网易云音乐，测试于 Fedora30-KDE

if [ $(id -u) != "0" ]; then
    echo "请使用管理员权限执行脚本！"
    exit
fi

Dependence(){
    echo "检测依赖中......"
    #解决依赖性
    dnf install -y https://download1.rpmfusion.org/free/fedora/rpmfusion-free-release-$(rpm -E %fedora).noarch.rpm https://download1.rpmfusion.org/nonfree/fedora/rpmfusion-nonfree-release-$(rpm -E %fedora).noarch.rpm
    dnf install -y vlc gstreamer1-libav gstreamer1-plugins-ugly gstreamer1-plugins-bad-free gstreamer1-plugins-bad-freeworld gstreamer1-vaapi libmad qt5-qtx11extras qt5-qtmultimedia libXScrnSaver libnsl
}

## 安装配置
Install(){
    echo "正在下载网易云音乐包,当前版本V1.2.1......"
    wget http://d1.music.126.net/dmusic/netease-cloud-music_1.2.1_amd64_ubuntu_20190428.deb
    echo "正在配置中......"
    ar -xvf netease-cloud-music_1.2.1_amd64_ubuntu_20190428.deb
    tar -xvf data.tar.xz
    # 软件元信息
    cp -r usr/share/* /usr/share
    # 替换默认desktop文件
    cp -r ./netease-cloud-music.desktop /usr/share/applications/
    # 包安装位置
    cp -r opt/* /opt
    # 剔除安装后的无用文件
    rm -rf usr/ opt/ netease-cloud-music_1.2.1_amd64_ubuntu_20190428.deb control.tar.xz data.tar.xz debian-binary
    # 初次执行
    /opt/netease/netease-cloud-music/netease-cloud-music.bash
}

Dependence
Install

echo "安装结束!可以执行以下命令检测是否安装完毕:"
echo "/opt/netease/netease-cloud-music/netease-cloud-music.bash"
echo "如果出现网易云音乐界面即安装成功!当然!你也可以直接在菜单栏点击图标以运行"