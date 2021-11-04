---
title: Java实现顺序表
date: 2021-06-23 23:48:38
categories:
- 数据结构
tags:
- 线性表
- 顺序表
description: Java实现
---

顺序表

<!-- more -->

顺序表代码实现：(数组实现)
---

### 定义

```java
/**
 * @author ioutime
 * @version 1.0
 * @date 2021/6/23 17:49
 */

public class SequenceList {
    private int[] elem;
    private int usedSize;

    public SequenceList() {
        this.elem = new int[1];
    }

    public SequenceList(int size) {
        this.elem = new int[size];
    }

    //扩容
    public void addSize(){
        this.elem = Arrays.copyOf(this.elem,this.elem.length*2);
    }

    //判断是否满了
    public boolean isFull(){
        if(this.elem.length==usedSize) return true;
        return false;
    }

    //打印
    public void printList(){
        for (int i = 0; i < usedSize; i++) {
            System.out.print(elem[i]+" ");
        }
    }

    //插入
    public void insert(int i,int e){
        if(isFull()){
            addSize();
        }
        if(i>usedSize){
            System.out.println("false");
        }
        for (int j = usedSize-1; j > i-1 ; j--) {
            elem[j+1] = elem[j];
        }
        elem[i] = e;
        this.usedSize++;
    }
    //末尾插入
    public void insert(int e){
        if(isFull()){
            addSize();
        }
        elem[usedSize] = e;
        this.usedSize++;
    }

    //是否包含某个元素
    public boolean contain(int e){
        for (int i = 0; i < usedSize; i++) {
            if(elem[i]==e) return true;
        }
        return false;
    }

    //查找某个元素对应的位置
    public int location(int e){
        for (int i = 0; i < usedSize; i++) {
            if(elem[i] == e) return i;
        }
        return -1;
    }

    //获取 pos 位置的元素
    public int getPosElem(int pos){
        if(pos<0 || pos>usedSize){
            System.out.println("输入位置不合法");
            return -1;
        }
        return elem[pos];
    }

    //改
    public boolean editElem(int pos,int e){
        if(pos<0 || pos>usedSize){
            System.out.println("输入位置不合法");
            return false;
        }
        elem[pos] = e;
        return true;
    }

    //删
    public boolean del(int pos){
        if(pos<0 || pos>usedSize){
            System.out.println("输入位置不合法");
            return false;
        }
        for (int i = pos; i < usedSize-1; i++) {
            elem[i] = elem[i+1];
        }
        usedSize--;
        return true;
    }
}
```



### 测试

```java
/**
 * @author ioutime
 * @version 1.0
 * @date 2021/6/23 21:19
 */

public class Main {
    public static void main(String[] args) {
        SequenceList sequenceList = new SequenceList();
        sequenceList.insert(0,2);
        sequenceList.insert(1,4);
        sequenceList.insert(6);
        sequenceList.insert(7);
        sequenceList.insert(89);
        System.out.println(sequenceList.contain(2));
        System.out.println(sequenceList.location(4));
        System.out.println(sequenceList.getPosElem(3));
        System.out.println(sequenceList.editElem(0,9));
        System.out.println(sequenceList.getPosElem(0));
        System.out.println(sequenceList.del(0));
        sequenceList.printList();
    }
}
```



### 测试结果

```java
true
1
7
true
9
true
4 6 7 89 
```

