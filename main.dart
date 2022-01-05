import 'package:flutter/material.dart';		//import material library

void main() => runApp(new MyApp());		//main()主函数，主要就是运行下面写的MyApp应用。
					//=>是Dart 中单行函数或方法的简写。

class MyApp extends StatelessWidget {		//MyApp继承了StatelessWidget，本身成为欸了一个widget
  @override				//在 Flutter 中，大多数东西都是 widget，包括对齐 (alignment)、填充 (padding) 和布局 (layout)。
  Widget build(BuildContext context) {		//一个 widget 的主要工作是提供一个 build() 方法来描述如何根据其他较低级别的 widgets 来显示自己。
    return new MaterialApp(			
      title: 'Welcome to Flutter',
      home: new Scaffold(			//Scaffold: Scaffold 是 Material library 中提供的一个 widget，它提供了默认的导航栏、标题和包含主屏幕 widget 树的 body 属性。widget 树可以很复杂。
        appBar: new AppBar(			//appBar
          title: const Text('Welcome to Flutter'),	//title
        ),
        body: const Center(			//body
          child: const Text('Hello World'),
        ),
      ),
    );
  }
}	