# Fedora-网易云音乐V1.1.0一键安装脚本

该脚本测试于 Fedora-KDE-29上。其他版本自测，理论通用

## 如何使用

下载仓库

```
git clone https://gitee.com/xuthus5/fedora-netease.git
```

加权限运行

```
cd fedora-netease/F29

chmod +x *.sh
sudo ./install.sh
```

## 结果演示

![首页](./preview/index.png)
![详细](./preview/detail.png)

若需要卸载，执行 uninstall.sh 脚本，可以干净清除。卸载前，建议先自行修改uninstall.sh的移除依赖项

```
sudo ./uninstall.sh
```

说明：使用时出现网络故障的问题，可能是没有登录，请登录。
