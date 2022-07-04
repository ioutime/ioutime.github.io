---
title: spring notes
categories:
  - spring
tags:
  - frame
hidden: true
date: 2021-11-12 16:41:39
---

spring 笔记

<!-- more -->

spring 框架的优点
---

- 轻量
- IOC 控制反转 ： 通过 IOC 实现了**松耦合**
- AOP 面向切向编程
- MVC 框架
- 事务管理
- 异常处理



spring IOC 容器
---

> Spring 框架的核心是 **Spring 容器**。
>
> Spring 容器负责实例化，配置和装配 `Spring beans`

容器创建对象，将它们装配在一起，配置它们并管理它们的完整生命周期。

Spring 容器使用**依赖注入**来管理组成应用程序的组件。

容器通过读取提供的配置元数据来接收对象进行实例化，配置和组装的指令。

该元数据可以通过 XML，Java 注解或 Java 代码提供。



依赖注入 注入方式
---

使用依赖注入，我们不必去创建对象，我们只需要描述它如何创建。

不是直接在代码中将**组件和服务**连接在一起，而是描述配置文件中哪些组件需要哪些服务。

**由 IoC 容器将它们装配在一起。**

注入方式：

1. **构造函数**
2. **setter注入**
3. **接口注入**



BeanFactory 和 ApplicationContext
---

> 接口 BeanFactory 和 ApplicationContext 都是用来从容器中获取 Spring beans 的

| BeanFactory                | ApplicationContext       |
| -------------------------- | ------------------------ |
| 它使用**懒加载**           | 它使用**即时加载**       |
| 它使用语法显式提供资源对象 | 它自己创建和管理资源对象 |
| 不支持国际化               | 支持国际化               |
| **不支持基于依赖的注解**   | **支持基于依赖的注解**   |

BeanFactory的优缺点：

- 优点：**应用启动的时候占用资源很少，对资源要求较高的应用，比较有优势**；

- 缺点：运行速度会相对来说慢一些。而且有可能会出现空指针异常的错误，而且通过Bean**工厂创建**的Bean生命周期会简单一些。

ApplicationContext的优缺点：

- 优点：**所有的Bean在启动的时候都进行了加载，系统运行的速度快**；在系统启动的时候，可以发现系统中的配置问题。

- 缺点：把费时的操作放到系统启动中完成，所有的对象都可以预加载，缺点就是**内存占用较大**。



> ApplicationContext 包含 BeanFactory 的所有特性，通常推荐使用前者。
>





Spring Bean
---

> Spring beans 就是被 Spring 容器所管理的 Java 对象

