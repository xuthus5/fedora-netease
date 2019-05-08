# Fedora-网易云音乐V1.2.1一键安装脚本

该脚本测试于 Fedora-KDE-30上。其他版本自测，理论通用

- [x] KDE
- [x] Deepin
- [x] Gnome

## 如何使用

下载仓库

```shell
git clone https://gitee.com/xuthus5/fedora-netease.git
```

加权限运行

```shell
cd fedora-netease

chmod +x *.sh
sudo ./install.sh
```

初次安装出现界面后可能无法立即使用,关闭软件后菜单栏重启即可。

GNOME桌面安装后不会自动弹出界面(`提示:No protocol specified`),请在菜单栏点击图标运行。

如果你习惯命令行启动,你可以直接执行 `/opt/netease/netease-cloud-music/netease-cloud-music.bash` 启动

嫌弃命令行太长,建议使用如下命令 这样你就可以使用 `netease-cloud-music` 命令启动程序了，当然不推荐使用命令行启动，这样需要额外的虚拟终端维护这个进程会话

```shell
#编辑bash配置文件
vi ~/.bashrc
#添加别名
alias netease-cloud-music=/opt/netease/netease-cloud-music/netease-cloud-music.bash
#立即生效
source ~/.bashrc
```

## 说明

网易云音乐版本升级后,包结构变化较大,我按照原结构,将其安装位置移动至`/opt`目录下。

## 结果演示

![首页](./preview/index.png)
![详细](./preview/detail.png)
![登陆页面](./preview/login.png)

若需要卸载，执行 uninstall.sh 脚本，可以干净清除。卸载前，建议先自行修改uninstall.sh的移除依赖项

```shell
sudo ./uninstall.sh
```

说明：如需低版本安装脚本请移步目录`F29`
