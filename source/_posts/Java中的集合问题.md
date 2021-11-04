---
title: Java中的集合问题
date: 2021-06-28 20:11:02
categories:
- Java
tags:
- Java集合
description: 一些集合总结
---

JVM垃圾回收机制(GC)。

<!-- more -->

集合
---



### List 、Set、Map

- List：有序（存取元素有序）
- Set：无序，不重复
- Map：键值对，key不能重复



### ArrayList 、LinkedList

- 底层实现：ArrayList 是数组；LinkedLsit是链表
- 对于index索引数据：ArrayList 直接定位；LinkedList则需要遍历
- 对于随机插入和删除：ArrayList需要移动目标的后面节点；LinkedList则只需要修改前后节点的属性
- 对于顺序插入和删除：ArrayList不需要移动节点；比LinkedList效率上高

总结：需要有大量的插入和删除操作，选择LinkedList；需要很多查找操作，插入和删除操作较少，则选择ArrayList



### ArrayList 、Vector

Vector在方法上加了synchronized来确保线程安全，其他多差不多



### HashMap的底层数据结构

在 jdk 1.8 之前都是“数组+链表”，在 jdk 1.8之后都是"数组+链表+红黑树"；

```java
//负载因子
DEFAULT_LOAD_FACTOR = 0.75f
```



#### 为什么改成"数组+链表+红黑树"

主要为了解决hash冲突严重时（链表过长）的查找性能，使用链表的查找性能O(n)，使用红黑树的查找性能时O(log n)



#### 什么时候用链表，什么时候用红黑树

```java
//阈值
TREEIFY_THRESHOLD = 8;
UNTREEIFY_THRESHOLD = 6;
//时间和空间的权衡
```



#### threshold用途

存放扩容阈值；（容量 * 负载因子）



#### HashMap容量

```java
DEFAULT_INITIAL_CAPACITY = 1 << 4; // aka 16
//最小容量为2的N次方
```

#### HashMap计算hashCode方法

```java
return (key == null) ? 0 : (h = key.hashCode()) ^ (h >>> 16);
//^是异或
```

当数组的长度很短时，只有低位数的hashcode值能参与运算。而让高16位参与运算可以更好的均匀散列，减少碰撞，进一步降低hash冲突的几率。并且使得高16位和低16位的信息都被保留了

#### jdk 1.8之前为什么会出现死循环

jdk 1.7 扩容采用的是"头插法"，会导致同一个索引位置的节点在扩容后顺序反掉。jkd 1.8采用的是“尾插法”

### HashMap 和 Hashtable

1. Hashtable是线程安全，它在方法上都加了synchronized来保证线程安全；HashMap不是线程安全
2. Hashtable的初始容量是11；HashMap的初始容量为16；
3. Hashtable的扩容为2的N倍 + 1；HashMap的容量始终问2 的指数
4. Hashtable继承的类是Dictionary；HashMap继承的是AbstractMap
5. Hashtable是创建时就初始化；HashMap是第一次put时初始化
6. Hashtable的key和value不允许为空；HashMap可以
7. Hashtable的hash值是key.hashCode()算出来的；HashMap的hash是重新计算过的
8. HashMap去掉了 Hashtable 中的contains方法



### ConcurrentHashMap 

数据结构：jdk 1.7 采用 分段的数组 + 链表；jdk 1.8 采用 数组 + 链表 + 红黑树

线程安全：jdk 1.7 采用分段锁 ；jdk 1.8 采用synchronized + CAS (比较并交换)



###  Comparable 和 Comparator

Comparable是自然排序接口；Comparator是比较排序器



### Collection 和 Collections

Collection是集合类的一个顶级接口；

Collections是集合类的一个工具类/帮助类，提供一系列静态方法

