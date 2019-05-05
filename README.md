# Fedora-网易云音乐V1.2.1一键安装脚本

该脚本测试于 Fedora-KDE-30上。其他版本自测，理论通用

## 如何使用

下载仓库

```
git clone https://gitee.com/xuthus5/fedora-netease.git
```

加权限运行

```
cd fedora-netease

chmod +x *.sh
sudo ./install.sh
```

初次安装出现界面后可能无法立即使用,关闭软件后菜单栏重启即可。

## 说明

网易云音乐版本升级后,包结构变化较大,我按照原结构,将其安装位置移动至`/opt`目录下。

## 结果演示

![首页](./preview/index.png)
![详细](./preview/detail.png)
![登陆页面](./preview/login.png)

若需要卸载，执行 uninstall.sh 脚本，可以干净清除。卸载前，建议先自行修改uninstall.sh的移除依赖项

```
sudo ./uninstall.sh
```

说明：如需低版本安装脚本请移步目录`F29`
