// ignore_for_file: unnecessary_new

import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';	//新增引用语句。会提示缺失，如果没有下载plugin的话

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final wordPair = new WordPair.random(); 	// 新增了这一行
    return new MaterialApp(
      title: 'Welcome to Flutter',
      home: new Scaffold(
        appBar: new AppBar(
          title: new Text('Welcome to Flutter'),
        ),
        body: new Center(    			// 这里把之前的 "const" 换成了 "new". 子对象已经不是常量，那就不能再用 const 了。
          //child: const Text('Hello World'),   	// 我们不用这样的方式生成文字了
          child: new Text(wordPair.asPascalCase),  	// 这是新的文字生成方式
        ),
      ),
    );
  }
}