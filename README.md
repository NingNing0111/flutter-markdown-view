# MdCodeMath

&emsp;自己封装了一个 Markdown 文本渲染组件，支持：

- Markdown 语法渲染
- 代码高亮
- Latex 语法渲染
- 主题自适应

## 效果图

### 白天模式

![](doc/images/1.png)

![](doc/images/2.png)

![](doc/images/3.png)

### 黑夜模式

![](doc/images/4.png)

![](doc/images/5.png)

![](doc/images/6.png)

## 如何使用？

&emsp;pubspec.yaml 中添加下面的依赖：

- [markdown_widget](https://pub.dev/packages/markdown_widget)
- [flutter_math_fork](https://pub.dev/packages/flutter_math_fork)

&emsp;复制 component 下的三个文件到自己的项目中，需要渲染 Markdown 文本时，从`md_code_highlight_math.dart`中引入`MdCodeMath`使用。

&emsp;代码参考示例：

````dart
import 'package:flutter/material.dart';
import 'package:md_code_highlight_demo/component/md_code_highlight_math.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  final mdText = """
  # 这是标题

  &emsp;这是正文。


  ## 下面是代码

  > python代码

  ```python
  print("Hello World!");
````

> Java 代码

```java
public class Main {
  public static void main(String[] args) {
      System.out.println("Hello, World!");
  }
}
```

## 列表

**我最喜欢吃的食物:**

- 青菜
- 土豆丝
- `鸡肉`

## 表格

| 列 1   | 列 2   |
| ------ | ------ |
| 内容 1 | 内容 2 |

## 图片

![](https://storage.googleapis.com/cms-storage-bucket/70760bf1e88b184bb1bc.png)

## 链接

> 我的博客:[https://pgthinker.me](https://pgthinker.me)

## 数学公式

&emsp;`f_n(x)`===>: \$f_n(x)\$

&emsp;公式如下：

\$\$
f(x) = x^2 + 1
\$\$

""";

@override
Widget build(BuildContext context) {
return MaterialApp(
debugShowCheckedModeBanner: false,
title: 'Flutter Demo',
themeMode: ThemeMode.dark,
darkTheme: ThemeData.dark(),
theme: ThemeData.light(),
home: Scaffold(
appBar: AppBar(title: const Text("MD_Code_highlight_demo"),centerTitle: true,backgroundColor: Colors.blueAccent,),
body: SingleChildScrollView(
child: MdCodeMath(mdText),
)
),
);
}
}

```

```
