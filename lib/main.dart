import 'package:flutter/material.dart';
import 'package:md_code_highlight_demo/component/md_code_hightlight_math.dart';

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
  ```
  
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
  
  | 列1 | 列2 |
|-----|-----|
| 内容1 | 内容2 |

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
