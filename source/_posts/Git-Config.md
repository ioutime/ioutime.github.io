---
title: Git 安装与配置
categories:
  - git
tags:
  - git
hidden: false
date: 2023-02-08 19:08:27
---

git 安装与配置

<!-- more -->

#### 安装 git 软件

> 地址：https://git-scm.com/download/win

#### 配置全局用户名和邮箱

```shell
git config --global user.name "xxx"
git config --global user.email "xxx"
```

#### 配置 `ssh` 免密登录

```shell
#创建文件夹 (如果不存在的话)
mkdir ~/.ssh
#切换到 ssh 文件夹下
cd ~/.ssh
#生成 一直默认
ssh-keygen -t rsa -C "邮箱"
#复制~/.ssh/ 路径下的id_rsa.pub文件中的全部内容（去github、gitee）
```
