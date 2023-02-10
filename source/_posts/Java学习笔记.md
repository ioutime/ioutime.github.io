---
title: Java学习笔记
date: 2021-04-24 18:39:25
categories:
- Java
tags:
- Java
description: Java学习笔记
sticky: 10
hidden: true
---

Java学习笔记

<!-- more -->

基本概念与常识
---

### Java语言的特点

- 简单易学

- 面向对象（封装、多态、继承）

- 分布式

- 健壮性

- 安全性

- 可移植性(java的虚拟机)

- 解释型

- 高性能

- 多线程

- 动态性


### JVM、JDK、JRE

- JVM：Java的虚拟机，是运行Java字节码的虚拟机。JVM有针对不同操作系统的特定实现，目的是生成相同的字节码。

- 字节码：JVM 可以理解的代码，也就是我们看到的 文件名.class 的文件。字节码不面向任何特定的处理器，只面向JVM。

- 源码到运行的过程，如下

  .java的源文件    ----JDK中的javac编译-->  .class文件    -----JVM--->  二进制机器码

- JDK：全称Java Development Kit , 它是功能齐全的Java SDK （软件开发工具包）。它拥有 JRE 所拥有的一切，还有 编译器（javac） 和 工具（如：javadoc 和 jdb)。可以创建和编译程序

- JRE： 全称 Java Runtime Environment，Java运行时的环境,包括了 JAM 、 Java类库 、java命令和其他的一些基础构件。但是，他不能用于创建新程序。


总的来说，JDK > JRE > JVM



### JAVA 语言“编译与解释并存”?

编译型：一次性将源码翻译成机器码，然后在执行；

解释型：一边编译一边运行

java语言也具有编译型语言的特点，Java的源程序要先编译成字节码，然后进行解释。



### Oracle JDK 和 Open JDK

- Oracle JDK 不是完全开源；Open JDK 是开源的；

- Oracle JDK 比 Opea JDK 更稳定

- 在响应性和JVM性能方面，Oracle　JDK更好一点




### import java 和 javax有什么区别

刚开始的JavaAPI 所必需的包是Java开头的包，Javax 当时只是用来扩展API的。

后来，javax 逐渐成为 Java API 的组成部分。由于移动麻烦，最终 javax 包成为标准API的一部分

所以，java和javax 没什么区别。



基本语法
---



### 字符型常量和字符串常量有什么区别

- 形式 ：' a '      “aaaaa”
- 含义：相当于一个整型值（ASCII 值），可以运算； 代表一个地址值
- 内存大小：2个字节   ； 若干个字节



### 注释：

- 单行注释
- 多行注释
- 文档注释



### 标识符、关键字

标识符：自己取的名字

关键字：Java 语言已经赋予了其特殊含义，只能用于特定的地方，特殊的标识符



### Java泛型，类型擦除

泛型使用方式

- 泛型类
- 泛型接口
- 泛型方法

泛型：本质是参数化类型，也就是说所操作的数据类型被指定为一个参数。

Java的泛型是伪泛型，在java编译期间，所有的泛型信息都会擦除，就是**类型擦除**



### == 和 equals 的区别

- ==是对基本数据类型是值比较， 对引用数据类型，比较的是对象的内存地址。
- equals() 只能用于判断对象是否相等

equals()方法的使用存在两种情况

- 类没有重写equals()方法：等价于使用 "==" 比较两个对象
- 类重写了equals() 方法：



### hashCode() 与 equals()

- hashCode()：作用是获取哈希码，也称散列码。它实际上返回一个**int**整数
  - 哈希码作用：确定该对象在哈希表中的索引位置
  - hashCode()：可以减少equals的使用次数，提高执行速度

- 重写equals 时要重写 hashCode 方法

     **两个相等的对象必须具有相等的散列码（Java关键约定）**

  

  ​		



基本数据类型
---



### 基本数据类型、包装类型、字节

| 基本数据类型 | 字节 | 包装类型（引用类型） |
| :-:| :--: | :--: |
| int | 4 | Integer |
| long | 8 | Long |
| short | 2 | Short |
| byte | 1 | Byte |
| char | 2 | Character |
| float | 4 | Float |
| double | 8 | Double |
| boolean | - | Boolean |



### 自动装箱、拆箱

- 装箱：将基本类型自动转化为对应的引用类型

- 拆箱：将包装类型转换位基本类型

  

```java
装箱:Integer i = 9;   ===== Integer i = Integer.valueOf(9);
拆箱:int n = i;       ===== int n = i.intValue();
```

**注：包装类型比较是否相等，要哟equals()方法**





高频面试题
---



### String 、StringBuilder、StringBuffer

- String：String的值被创建后不能修改，任何修改都会引发新的String对象的生成
- StringBuffer：和String 类似，但是值是可以被修改的，使用 synchronized来保证线程安全
- StringBuilder：非线程安全



### 反射

反射指的在运行状态中， 对于任意一个类都能知道这个类所有的属性和方法；平且对于任意一个对象，都能调用它的任意一个方法；这种动态获取信息以及动态调用对象方法的功能称为反射机制。



### 深拷贝、浅拷贝

数据分为基本数据类型和引用数据类型。

基本数据类型：数据是直接存放在栈中的

引用数据类型：存放在栈中的是对象的引用地址，真实的对象存放在堆内存中

浅拷贝：对于基本数据类型，直接复制其数据；对于引用数据类型，拷贝的是其对象的引用地址，新旧对象指向的相同的内存地址，无论修改哪个，另一个一会改变

深拷贝：对于基本数据类型，直接复制其数据；对于引用数据类型，深拷贝是在内存中开辟新的空间，在新的内存空间中复制一个一模一样的对象，新老对象不共享内存，修改一个不会修改另一个。



### 并发、并行

并发：两个或两个以上事件在同一时间间隔内发生。

并行：两个或两个以上事件在同一时刻发生



### 构造器不可以被重写

Constructor 不能被重写（Override) ，但是可以被 重载（overload）



### Java只有值传递，对于对象参数，值得内容是对象的引用。



### 静态变量 和 成员变量

- 静态变量存放在方法区中；成员变量存放在堆内存中

- 静态变量与 类 共存亡；成员变量与 对象 共存亡

- 静态变量属于类；成员变量属于对象

- 静态变量可以被对象调用，也可以被类名调用；成员变量只能被对象调用。

  

### 静态方法内部 能否发出对 非静态方法的调用

- 如何没用显示创建对象的实例，则不可以调用。
- 显示的创建对象实例，可以调用。

### 重载和重写

方法的重载和重写都是实现多态的方式，重载是编译时的多态性，重写时运行时的多态性。

- 重载：overload，一个类中有多个相同名字的方法，但是具有不同的参数列表（参数类型不同、参数个数不同或两者都不一样）
- 重写：override，发生在父类和子类之间，子类对父类的方法进行重写，参数不能改变，返回值可以修改，但必须时父类返回值的派生类。

### abstract class (抽象类) 和 interface (接口) 

- 抽象类只能单继承；接口可以多实现

- 抽象类可以有构造方法；接口不能有

- 抽象类中可以有成员变量；接口中没有，只能时常量（默认 public static final)

- 抽象类中可以包含非抽象方法；在java 7 之前 接口中所有方法都是抽象的，在Java 8之后

  接口支持非抽象方法：default 方法、静态方法等。Java 9 支持稀有方法，稀有静态方法

- 抽象类中的抽象方法可以是任意修饰符；Java 8之前接口方法只有public类型，在Java9之后支持private
- 接口时自上而下的，接口规范了某些行为，是对一行为的抽象；抽象类是自下而上的抽象过程，抽象类提供了通用实现，是对某一类事物的抽象。



### Error  和  Exception 的区别

- Error  和  Exception 都是 Throwable  的子类，用于表示程序不正常情况
- Error 表示系统级的错误和程序不必处理的异常。
- Exception 表示需要捕捉或者需要程序进行处理的异常，是一种设计和实现的问题。



### final关键字

- 修饰类：该类不能派生出新的子类，不能作为父类被继承；一个类不能同时被声明为abstract 和 final
- 修饰方法：该方法的子类不能被重写
- 修饰变量：该变量必须在声明时给定初始值，不能再被修改，只能被读取；如果该变量是对象，则指的是引用不可改变，但是对象的属性还是可以修改的。



### finally、finalize

- finally：是对java异常处理机制的最佳补充，通常配合try 、catch使用。通常用于释放锁、数据库连接等资源。
- finalize：是Object 中的方法，在垃圾收集器将对象从内存中清除出去之前必须要的清理工作。finalize()方法在java 9 之后被弃用。



### try、catch、finally

在return 之前，会保存要返回的值，然后执行 finally中的语句（如果finally中有retrun 则结束，不会再回到之前的return中。）



### Java 1.8 之后的特性

接口默认方法：Java 8 之后允许我们给接口添加一个非抽象的方法实现，只需要使用default关键字

Lambda 表达式和函数式接口：本质是一段匿名内部类，也可以是一段可以传递的代码

Stream API ：

方法引用：

日期时间API：

Optional 类：

新工具：新的编译工具



### wait() 和 sleep() 方法

- wait() 来自 Object 类；sleep() 来自 Thread 类
- wait() 会释放同步锁，让其它线程进入synchronized代码块执行；sleep() 不会释放同步锁
- wait() 只能在同步控制方法或块中里面才能使用，否则会报错IllegalArgumentException
- wait()需要其他线程掉用同一对象的notify()/notifyAll() 才能恢复；sleep()在时间到了之后会自动恢复



### 线程的sleep()方法和yield()方法

线程执行sleep() 方法之后进入超时等待（TIMED_WAITING）状态；执行yield() 方法进入就绪等待

- sleep() 方法给其他线程运行机会时不考虑线程的优先级，因此会给低优先级的线程运行的机会
- yield()方法只会给相同优先级或更高的优先级的线程以运行的机会



### 线程的 join() 方法

用于等待当前线程终止。



### 多线程程序的实现

- 继承Thread 类，重写run() 方法，无返回值void
- 实现Runnable 接口，重写 run() 方法，无返回值void
- 实现Callable 接口



### Thread 调用 start() 方法和 run() 方法

run() ：普通方法的调用，在主线程中执行，不会创建一个线程来执行

start()：启动一个新的线程，这是这个线程处于就绪态，一但的到cpu的时间片，就开始执行run()方法



### 线程的状态

![view](Java学习笔记/view.jpg)

- 初始（NEW)：新建但是没有调用start()方法

- 运行（RUNNABLE)：包含就绪（READY）和 运行中（RUNNING）

  - 就绪（READY)：调用start() 方法，等待获取时间片

  - 运行中（RUNNING)：获取到时间片

    就绪  <------系统调度（yield）-----> 运行中

- 阻塞（BLOCKED）：

- 等待（WAITING)：
- 超时等待（TIMED_WAITING）：
- 终止（TERMINATED）：

​	

### synchronized 和 Lock 的区别

- Lock是一个接口；synchronized是Java中的关键字
- Lock在发生异常，如果没有主动通过unLock() 去释放锁，会造成死锁；synchronized则不会；
- Lock的使用更加灵活，有响应中断、超时时间；



### 死锁

- 互斥条件：一段时间内某资源只能被一个线程占用
- 请求和保持条件：进程已经获得一个资源，但又对另一个资源发出请求，而该资源被另一个进程占用
- 不可抢占条件：不可强制剥夺
- 环路等待条件



### 线程池

常用线程池（线程池是一个典型的“用空间换时间”的应用案例）

- FixedThreadPool:线程数固定的线程池
- SingleThreadExecutor：线程数量为1的线程池
- CachedThreadPool：缓存线程池

使用：ExecutorService是所有的线程池都实现了的接口，用这个接口可以定义句柄

​		   Executors类用于创建不同种类的线程池

```java
//定义一个有5个线程的线程池
ExecutorService fixedTP = Executors.newFixedThreadPool(5); 
ExecutorService singleTE = Executors.newSingleThreadExecutor();
ExecutorService cachedTP = Executors.newCachedThreadPool();
```

优点：

- 降低资源消耗
- 提高响应速度
- 增加线程的可管理性

核心属性：

- threadFactory(线程工厂)：
- corePoolSize(核心线程数)：
- workQueue（队列）：
- handler（ 拒绝策略）：
- keepAliveTime（保持存活时间）：

拒绝策略

- AbortPolicy：中止策略，默认的，使用该策略会抛出异常，阻止系统继续运行
- DiscardPolicy：抛弃策略，什么都不做，直接抛弃拒绝的任务
- DiscardOldestPolicy：抛弃最老策略，抛弃阻塞队列中最老的任务
- CallerRunsPolicy：调用者运行策略，

工作流程：

1. 调用Excutors类的静态方法newCachedThreadPool 或 newFixedThreadPool
2. 调用submit 提交 Runnable 或 Callable 对象
3. 保存好返回的Future 对象，以便得到结果或取消任务
4. 但不想再提交任何任务时，调用shutdown
