[toc]

# 标题级别
# h1
## h2
### h3
#### h4
##### h5
###### h6
####### h7

# 分级标题
一级标题
=======
二级标题
-------

# 引用
> npm install vuepress -g 
> hello world

## 嵌套引用
> hello world 
>> var a=123;
>>
>>> a=456;

# 标记
  标记`标记`标记
  ```
  var a=123;
  var b=456;
  var c = function(a,b){
      return a+b
  };
  console.log(c(a,b));
  ```
  ### Tab 缩进
  ```               
     var a=123;
     var b=456;
     var c = function(a,b){
        return a+b
     };
  console.log(c(a,b));
  ```
  ## 代码着色 这里 javascript
  ``` js
  var a=123;
  var b=456;
  var c = function(a,b){
      return a+b
  };
  console.log(c(a,b));
  ```
  # 插入链接 
   - 注：{:target="_blank"}跳转方式兼容性一般 ，多数第三方平台不支持跳转
<!-- [百度](http://www.baidu.com/){:target="_blank"} -->
- 内联式[百度](http://www.baidu.com/)  

# 序号
   1. aa
   2. bb
   3. cc
   4. ee
- 1111
    - 222
       - 33
         - 44
# 图片 {#2}
![这是图片](./img/timg.jpg)
![也是图片](https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1606466139892&di=2f223be763b4219b55e5578eef1b74f4&imgtype=0&src=http%3A%2F%2Fc-ssl.duitang.com%2Fuploads%2Fitem%2F201610%2F06%2F20161006190647_M3akn.jpeg)

# 表格 : 表示对齐方式

| title1 | title2 | title3 |
|--------|:------:|-------:|
| 123    | 456    | eweweqweqw|
| 123    | 456    | ewew   |

# 多选
- [ ] A  
- [ ] B  
- [ ] C  
- [x] A  
- [x] B  
- [x] C 

# 视频插入 {#1} 
  - 本身不支持 但是可以伪造 使用网站的分享html代码
<iframe src="//player.bilibili.com/player.html?aid=800251732&bvid=BV1uy4y1z7t2&cid=258127858&page=1" scrolling="no" border="0" frameborder="no" framespacing="0" allowfullscreen="true"> </iframe>

# 语义标记
~~删除~~  *斜体* _斜体_ __加粗__ **加粗** ***加粗斜体***
# 语义标签
<i>斜体</i>
<b>加粗</b>
<em>强调</em>
Z<sup>a</sup>
Z<sub>a</sub>
<kbd>Ctrl</kbd>
<pre>
asa
   sas 
   完整格式输出
aa
</pre>
# 对齐方式
$$ 居中 $$
$ 左对齐 $
- 分隔符
---
***
* * *

# 脚注
Markdown[^1]
[^1]: Markdown是一种纯文本标记语言     

[图片锚点](#2)


<xxx@outlook.com>

​         

    