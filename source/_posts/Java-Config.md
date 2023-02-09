---
title: Java 环境配置
categories:
  - Java
tags:
  - Java
hidden: false
date: 2023-02-08 20:07:54
---

Java 环境配置，以 jdk 1.8 为例。

<!-- more -->

#### 安装

> 注：使用 zip 安装的，jdk exe转换为zip(https://bgasparotto.com/convert-jdk-exe-zip)

#### JDK

##### 1、新建系统变量

变量名：JAVA_HOME

变量值：D:\Environment\JDK\jdk-8 (注：jdk 安装路径)

##### 2、编辑系统变量中的Path

>新增:
>%JAVA_HOME%\bin
>%JAVA_HOME%\jre\bin

##### 3、验证

```shell
java -version
javac -version
```



#### Maven
