---
title: Springboot notes
categories:
  - Java
tags:
  - frame
hidden: true
date: 2021-11-08 22:50:37
---

springboot 学习笔记

<!-- more -->

springboot 优点
---

- 创建**独立**的应用程序
- **直接嵌入**了 tomcat 等等，无需部署 `war` 文价
- **简化**了创建的配置
- 会尽可能的**自动配置** spring 和第三方库
- 不需要 `xml` 文件配置



springboot 重要注解
---

`@SpringBootApplication` 它包含了三个注解

- `@SpringBootConfiguration` : 组合了 `@Configuration` 注解 ，**实现了配置文件的功能**
- `@EnableAutoConfiguration` ：**打开自动配置的功能**，也可以关闭某个自动配置的选项，如关闭数据源
  自动配置功能： @SpringBootApplication(exclude = { DataSourceAutoConfiguration.class })。
- `@ComponentScan` ：**Spring组件扫描**。



springboot 中的 starter
---

