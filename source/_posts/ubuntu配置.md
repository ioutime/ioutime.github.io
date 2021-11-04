---
title: ubuntu配置
categories:
  - ubuntu
tags:
  - ubuntu
description: ubuntu配置
date: 2021-10-31 22:26:58
---

ubuntu配置

<!-- more -->

换源
---

> 文件位置/etc/apt/sources.list

1. 备份

```shell
sudo cp /etc/apt/sources.list /etc/apt/sources.list.backup
```

2. 打开sources.list文件

```shell
sudo vim /etc/apt/sources.list
```

3. 删除原来内容，替换为以下内容

```tex
#阿里云镜像

deb http://mirrors.aliyun.com/ubuntu/ focal main restricted universe multiverse 
deb http://mirrors.aliyun.com/ubuntu/ focal-security main restricted universe multiverse 
deb http://mirrors.aliyun.com/ubuntu/ focal-updates main restricted universe multiverse 
deb http://mirrors.aliyun.com/ubuntu/ focal-proposed main restricted universe multiverse 
deb http://mirrors.aliyun.com/ubuntu/ focal-backports main restricted universe multiverse 
deb-src http://mirrors.aliyun.com/ubuntu/ focal main restricted universe multiverse 
deb-src http://mirrors.aliyun.com/ubuntu/ focal-security main restricted universe multiverse 
deb-src http://mirrors.aliyun.com/ubuntu/ focal-updates main restricted universe multiverse 
deb-src http://mirrors.aliyun.com/ubuntu/ focal-proposed main restricted universe multiverse 
deb-src http://mirrors.aliyun.com/ubuntu/ focal-backports main restricted universe multiverse
```

4. 更新

```shell
sudo apt update
sudo apt upgrade
```



取消sudo密码
---

> 文件位置 /etc/sudoers

1. 打开文件

```shell
sudo vim /etc/sudoers
```

2. 添加如下内容

```shell
#includedir /etc/sudoers.d
admin ALL=(ALL)  NOPASSWD:ALL
you_name ALL=(ALL) NOPASSWD:ALL
```

3. 强制退出，wq!



更换主题
---

以zsh主题为例

1. 查看当前有什么主题

```shell
cat /etc/shells
```

2. 安装zsh

```shell
sudo apt install zsh
```

3. 更换当前主题

```shell
chsh -s /bin/zsh
```

4. 安装git

```shell
sudo apt install git
```

5. 安装oh-my-zsh

```shell
sh -c "$(wget https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh -O -)"
```

6. 更换自己喜欢的主题

```shell
sudo vim ~/.zshrc
#更改 ZSH_THEME="robbyrussell"
ZSH_THEME="ys"
```

