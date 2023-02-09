---
title: nvm 安装与配置
categories:
  - nvm
tags:
  - nvm
hidden: false
date: 2023-02-08 19:29:33
---

nvm 全名node.js version management，是一个nodejs 的版本管理工具。

<!-- more -->

#### 安装

>GitHub : https://github.com/coreybutler/nvm-windows/releases

#### nvm 换源(淘宝)

```shell
node_mirror: https://npm.taobao.org/mirrors/node/
npm_mirror: https://npm.taobao.org/mirrors/npm/
```

#### nvm 常用命令

```shell
#查看安装的所有node的版本
nvm list

#查看当前可安装的版本
nvm list available

#安装xx.xx.xx版本的node
nvm install 14.16.0

#使用（切换到）xx.xx.xx版本的node
nvm use 14.16.0

#卸载xx.xx.xx版本的node
nvm uninstall 14.16.0

#显示node是运行在32位还是64位。
nvm arch

#设置下载代理。不加可选参数url，显示当前代理。将url设置为none则移除代理。
nvm proxy [url]

#设置node镜像。默认是https://nodejs.org/dist/。如果不写url，则使用默认url。设置后可至安装目录settings.txt文件查看，也可直接在该文件操作。
nvm node_mirror [url]

#设置npm镜像。https://github.com/npm/cli/archive/。如果不写url，则使用默认url。设置后可至安装目录settings.txt文件查看，也可直接在该文件操作。
nvm npm_mirror [url]

#设置存储不同版本node的目录。如果未设置，默认使用当前目录。
nvm root [path]
```

#### 例子

```shell
#安装 node 14.16.0
nvm install 14.16.0
nvm use 14.16.0
npm -v
```

