---
title: Java实现栈
date: 2021-06-24 16:23:02
categories:
- 数据结构
tags:
- 栈
description: Java实现栈
---

JVM垃圾回收机制(GC)。

<!-- more -->

实现栈的两种方法
---

### 数组：

#### 代码：

```java
/**
 * @author ioutime
 * @version 1.0
 * @date 2021/6/24 15:26
 */

//数组实现
public class MyStack{
    private int[] elem;
    private int top;
    private int bottom;
    private int usedSize;

    public MyStack(){
        this.elem = new int[10];
    }

    //print
    public void print(){
        for (int i = 0; i < usedSize; i++) {
            System.out.print(elem[i]+" ");
        }
        System.out.println();
    }


    //扩容
    public void addSize(){
        this.elem = Arrays.copyOf(this.elem, this.elem.length * 2);
    }

    //判断是否满了
    public boolean isFull(){
        return this.elem.length==usedSize;
    }

    //push
    public void push(int val){
        if(isFull()){
            addSize();
        }
        this.elem[usedSize] = val;
        this.usedSize++;
        this.top++;
    }

    //pop
    public int pop(){
        if(this.top < this.bottom) return -1;
        this.top = this.top - 1;
        this.usedSize = this.usedSize - 1;
        return this.elem[this.usedSize];
    }

    //peek
    public int peek(){
        return this.elem[this.usedSize - 1];
    }

}
```

#### 测试：

```java
/**
 * @author ioutime
 * @version 1.0
 * @date 2021/6/24 16:00
 */

public class Main {
    public static void main(String[] args) {
        MyStack stack = new MyStack();
        stack.push(89);
        stack.push(90);
        stack.push(91);
        stack.print();
        System.out.println(stack.pop());
        stack.print();
        System.out.println(stack.peek());
        stack.print();
    }
}
```

测试结果：

```java
89 90 91 
91
89 90 
90
89 90 
```

### 链表：

注：我直接使用java中类去实现的

#### 代码

```java
Deque<Integer> stack = new LinkedList<>();
//不建议直接使用Stack类，它属于进程安全类
```

#### 测试：

```java
public class MyStack2 {
    public static void main(String[] args) {
        Deque<Integer> stack = new LinkedList<>();
        stack.push(34);
        stack.push(56);
        stack.push(89);
        System.out.println(stack.pop());
        System.out.println(stack.peek());
    }
}
```

#### 结果：

```java
89
56
```

