---
title: Git常用命令
categories:
  - git
tags:
  - git
hidden: true
date: 2022-04-17 15:10:57
---

 git 常用命令

<!-- more -->

基本命令
---

- `git init` 初始化
- `git add` 把文件添加到仓库中
- `git commit` 把文件提交到仓库中
  - `-m` 添加本次体提交说明

- `git status` 查看当前仓库状态

- `git diff` 查看文件修改内容
- `git log` 查看提交日志
- `git reset --hard commit_id` 版本回退
- `git reflog` 查看历史命令
- `git remote add origin ` 添加远程仓库

### git branch 创建分支

```shell
git branch branchname 			#创建新分支
git branch | git branch --list  #列出所有分支
git branch -a 					#列出所有分支
git branch -f 					#列出本地分支
git branch -r 					#列出远程分支
```



### git checkout

```shell
git checkout bugFix 			#切换到 bugFix 分支上
git checkout -b bugFix			#创建 bugFix 分支并切换到 bugFix 上
```



### git fetch 

```shell
git fetch 
```

### git merge

```shell
git merge
```

### git rebase

```shell
git rebase
```



### git pull

```shell
#强制远程拉取并覆盖本地
git fetch --all
git reset --hard origin/master
git pull
```

### git push

```shell
git push -f origin master #强制推送
```

