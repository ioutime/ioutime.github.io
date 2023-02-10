---
title: HTML
date: 2021-06-17 18:38:52
categories:
- web
tags:
- html
hidden: true
---

html常用标签

<!-- more -->

1、Html简介
---

​	Html 是超文本标记语言；Hyper  Text   Markup    Language

​			可以传输出图片外，还有图像、视频、音频和动画等

​	W3C 标准：

​		World  Wide  Web  Consorttium(万维网联盟)

​		W3C包括了

​		1.结构化标准语言（Html、XML）

​		2.表现标准语言（CSS）

​		3.行为标准（DOM,ECMAScript)





2、基本结构
---

```html
<!--**DOCTYPE**:告诉浏览器，我们要使用什么规范-->
<!DOCTYPE html>
<html lang="en">
<!--head代表网页的头部-->
<head>
    <!--meta是描述性标签，用来描述网站的一些基本信息-->
    <!--meta一般用来做SEO-->
    <meta charset="UTF-8">
    <!--title是网站的标题-->
    <title>Title</title>
</head>
<!--body代表网页的主体-->
<body>
    基本结构
</body>
</html>
```





3、基本标签
---

```html
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>基本标签</title>
</head>
<body>
<!--标题标签:h-->
<h1>1级标签</h1>
<h2>2级标签</h2>
<h3>3级标签</h3>
<h4>4级标签</h4>
<h5>5级标签</h5>
<h6>6级标签</h6>

<!--段落标签:p-->
<p>기를 쓰고 사랑해야 하는 건 아냐</p>

<p>하루 정도는 행복하지 않아도 괜찮아</p>

<p>그럼에도 역시 완벽하군 나의 여인 um</p>

<p>여전히 무수한 빈칸들이 있지</p>

<!--换行标签:br-->
기를 쓰고 사랑해야 하는 건 아냐<br>
하루 정도는 행복하지 않아도 괜찮아<br>
그럼에도 역시 완벽하군 나의 여인 um<br>
여전히 무수한 빈칸들이 있지<br>

<!--水平线标签:hr-->
<hr>

<!--粗体、斜体:strong ,em-->
粗体：<strong>I love you</strong> <br>
斜体：<em>I love you</em>

<!--特殊符号-->
空格&nbsp;&nbsp;结束 <br>
大于：&gt; <br>
小于：&lt; <br>
版权符号： &copy; <br>

</body>
</html>
```



4、图像标签
---

```html
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>图像标签</title>
</head>
<body>
<!--img标签讲解
        **src：图片地址
            相对地址，绝对地址
            ../  ----上一级目录
        **alt:当图片加载失败，会显示这个描述
        title:当鼠标悬停在图片上显示的文字
        width:图像宽度
        height:图像高度

-->

<img src="../resources/image/973967.jpg" alt="背景图片" title="悬停文字" width="400" height="200">

</body>
</html>
```





5、链接标签
---

```html
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>链接标签</title>
</head>
<body>
<!--页面间链接-->
<!--a标签
    **href: 要跳转到哪个页面
    target:表示窗口要在哪里打开
           _blank:在新标签中打开
           _self:在自己的网页中打开
-->
<a href="基本标签.html" target="_blank">跳转到基本标签页面，在新的窗口打开</a>
<a href="https://www.baidu.com" target="_self">
    <p>
        <img src="../resources/image/973967.jpg" alt="picture" width="200" height="200" >
    </p>

</a>
<hr>
<!--锚链接
1、需要一个锚标记
2、跳转到标记 #
-->
<a id="top">top</a>
<p>
    <img src="../resources/image/973967.jpg" alt="picture"  height="1000" >
</p>

<a href="#top">回到top</a>

<hr>
<!--功能性标签
邮件属性：mailto
qq链接：
-->
<!--邮件属性：mailto-->
<a href="mailto:ioutime@163.com">邮箱地址</a>
<!--qq链接：-->
<a target="_blank" href="http://wpa.qq.com/msgrd?v=3&uin=&site=qq&menu=yes">
    <img border="0" src="http://wpa.qq.com/pa?p=2::51" alt="联系我获取资料" title="联系我获取资料"/>
</a>

</body>
</html>
```



6、块元素和行内元素

块元素:

- 无论内容多少，该元素独占一行
- 例如（p，h1，h2，·····标签）

行内元素：

- 内容撑开宽度，左右都是行内元素的可以排在一行
- 例如( a,strong,em,·····）

7、列表
---

7.1、什么是列表：

​		列表就是信息资源的一种展示形式。它可以是信息结构化和条理化，并以列表的样式显示出来，以便浏		览者能够更快捷的获取相应的信息

7.2、列表的分类

- 无序列表
- 有序列表
- 自定义列表

![](/img/picture/image-20210516173504958-1621157710086.png)

```html
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>列表</title>
</head>
<body>
<!--有序列表 :or（Order List）
    应用范围：试卷，问答。······
-->
<ol>
  <li>Java</li>
  <li>Python</li>
  <li>C/C++</li>
</ol>
<hr>
<!--无序列表：ur（unorder list)
    应用范围：导航，侧边栏····
-->
<ul>
  <li>Java</li>
  <li>Python</li>
  <li>C/C++</li>
</ul>
<hr>
<!--自定义列表：
    dl：标签
    dt：标签名称
    dd：列表内容
    应用范围：
-->
<dl>
  <dt>学科</dt>

  <dd>Java</dd>
  <dd>Python</dd>
  <dd>C/C++</dd>

  <dt>成绩</dt>

  <dd>98</dd>
  <dd>89</dd>
  <dd>90</dd>
</dl>

</body>
</html>
```





8、表格
---

8.1、为什么使用表格

​			简单通用；结构稳定

8.2、基本结构

- 单元格
- 行
- 列
- 跨行
- 跨列

```html
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>表格</title>
</head>
<body>
<!--表格标签：table
    行：tr rows
    列：td
    跨行：rowspan
    跨列：colspan
-->
<table border="2px">
    <tr>
        <td>1</td>
        <td>2</td>
        <td>3</td>
        <td>4</td>
    </tr>
    <tr>
        <td>5</td>
        <td>6</td>
        <td>7</td>
        <td>8</td>
    </tr>
</table>
</body>
</html>
```

9、媒体元素
---

视频元素：

​	video

音频元素：

​	audio

```html
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>媒体元素</title>
</head>
<body>
<!--音频和视频
    src：资源路径
    controls:控制条
    autoplay:自动播放
-->
<audio muted src="../resources/audio/音频.mp3" controls autoplay >音频</audio>

<!--<video muted src="../resources/video/视频.mp4" controls autoplay>视频</video>-->

<video muted autoplay>
    <source src="../resources/video/视频.mp4">
</video>

</body>
</html>
```

10、页面结构分析
---

| 元素名  |                        描述                        |
| :-----: | :------------------------------------------------: |
| header  |  标题头部区域的内容（用于页面和页面中的一块区域）  |
| footer  | 标记脚部区域的内容（用于整个页面或页面的一块区域） |
| section |              Web页面中的一块独立区域               |
| article |                   独立的文章内容                   |
|  aside  |                   相关内容或应用                   |
|   nav   |                   导航类辅助内容                   |

```html
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>网页结构分析</title>
</head>
<body>
<!--header-->
<header>
  <p>网页头部</p>
</header>
<!--section-->
<section>
  <p>网页的主体</p>
</section>
<!--footer-->
<footer>
  <p>网页脚部</p>
</footer>
</body>
</html>
```

11、iframe内联框架
---



```html
<!DOCTYPE html><html lang="en"><head>    <meta charset="UTF-8">    <title>iframe</title></head><body><!--iframe:    src:地址    w-h：宽高--><iframe src="" frameborder="0" name="路飞"></iframe><a href="../resources/video/海贼王混剪.mp4"  target="路飞">路飞</a></body></html>
```



12、post和get提交
---

### 12.1、表单语法

```html
<!DOCTYPE html><html lang="en"><head>    <meta charset="UTF-8">    <title>表单</title></head><body><h1>Login</h1><!--表单form：    **action:表单提交的位置    **method：post,get提交方式            get方式提交：我们可以在url中看到我们提交的信息，不安全，高校            post：比较安全，传输大文件--><form action="iframe.html" method="get">  <!--文本框-->  <p>username:<input type="text" name="username"></p>  <!--输入框-->  <p>password: <input type="password" name="password" ></p>  <!--提交和重置-->  <p>    <input type="submit" name="登录">    <input type="reset" name="清除">  </p></form></body></html>
```

### 12.2、表单元素格式

| 属性      | 说明                                                         |
| :-------- | :----------------------------------------------------------- |
| type      | 指定元素类型(text ,password,radio,checkbox,submit,reset,file,hidden,imageh和button...)，默认为text |
| name      | 指定表单元素的名称                                           |
| value     | 元素的初始值，type为radio时必须指定一个值                    |
| size      | 指定表单元素的初始宽度。当type为text或password时，表单元素的大小以字符为单位。对于其他类型，宽度是以像素为单位。 |
| maxlength | type为text或password时，输入的最大字符数。                   |
| checked   | type为radio或checkbox时，指定按钮是否被选中                  |

### 12.3、表单元素类型

1. 文本输入框
2. 密码框
3. 单选框
4. 多选框
5. 按钮
6. 下拉框
7. 列表框



