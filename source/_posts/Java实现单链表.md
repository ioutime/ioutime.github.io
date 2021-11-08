---
title: Java实现单链表
date: 2021-06-23 23:54:12
categories:
- 数据结构
tags:
- 线性表
- 单链表
hidden: true
---

单链表

<!-- more -->

单链表代码实现：
---

### 定义方法

```java
/**
 * @author ioutime
 * @version 1.0
 * @date 2021/6/23 21:53
 */

public class ListNode {
    //设置头节点
    private static ListNode head = new ListNode();

    private int val;
    private ListNode next;
    public ListNode() { }
    public ListNode(int val) {
        this.val = val;
    }
    public ListNode(int val, ListNode next) {
        this.val = val;
        this.next = next;
    }

    //size
    public int size(){
        int len = 0;
        ListNode temp = head;
        while(temp!=null){
            temp = temp.next;
            len++;
        }
//        System.out.println(len);
        return len;
    }

    //print
    public void print(){
        ListNode temp = head.next;
        while(temp!=null){
            System.out.print(temp.val+"->");
            temp = temp.next;
        }
        System.out.println("null");
    }

    //add
    public void add(int val){
        ListNode newNode = new ListNode(val);
        ListNode temp = head;
        while(temp.next!=null){
            temp = temp.next;
        }
        temp.next = newNode;
    }

    //addindex
    public void add(int index,int val){
        if(index>size() && index <=0){
            System.out.println("不合法");
            return;
        }
        ListNode newNode = new ListNode(val);
        ListNode temp = head;

        for (int i = 1; i < index; i++) {
            temp = temp.next;
        }
        ListNode nextNode = temp.next;
        temp.next = newNode;
        newNode.next = nextNode;
    }

    //deleted
    public void del(int index){
        if(index>size() && index <=0){
            System.out.println("不合法");
            return;
        }
        ListNode cur = head;
        ListNode prev = null;
        for (int i = 0; i < index; i++) {
            prev = cur;
            cur = cur.next;
        }
        if(prev==null) head.next = cur.next;
        else {
            prev.next = cur.next;
        }

    }
    //select
    public void contain(int val){
        ListNode temp = head;
        while (temp!=null){
            if(temp.val == val) {
                System.out.println("包含"+val);
                return;
            }
            temp = temp.next;
        }
        System.out.println("不包含"+val);
    }

}
```



### 测试

```java
/**
 * @author ioutime
 * @version 1.0
 * @date 2021/6/23 21:54
 */

public class Main {
    public static void main(String[] args) {
        ListNode head = new ListNode();
        head.print();
        head.add(7);
        head.print();
        head.add(8);
        head.print();
        head.add(1, 6);
        head.print();
        head.contain(6);
        head.print();
        head.del(1);
        head.contain(6);
        head.print();
    }
}
```

### 测试结果

```java
null
7->null
7->8->null
6->7->8->null
包含6
6->7->8->null
不包含6
7->8->null
```



### Java自带类实现(LinkedList)

#### 代码：

```java
import java.util.LinkedList;

/**
 * @author ioutime
 * @version 1.0
 * @date 2021/6/24 14:53
 */

public class MyLinkedList {
    public static void main(String[] args) {
        LinkedList<Integer> linkedList = new LinkedList<>();
        linkedList.add(23);
        linkedList.add(45);
        linkedList.add(56);
        linkedList.add(1,35);
        linkedList.remove(0);
        for (Integer integer : linkedList) {
            System.out.println(integer);
        }
    }
}
```



#### 测试结果

```java
null
23->35->45->56->null
35->45->56->null
```

