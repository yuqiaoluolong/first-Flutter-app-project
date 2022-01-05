import 'package:flutter/material.dart';			// import
import 'package:english_words/english_words.dart';

void main() => runApp(new MyApp());			// void main() =>

class MyApp extends StatelessWidget {			
  @override					//class MyApp, override, Widget build
  Widget build(BuildContext context) {
    final WordPair wordPair = new WordPair.random();
    return new MaterialApp(
      title: 'Welcome to Flutter',
      home: new Scaffold(
        appBar: new AppBar(
          title: new Text('Welcome to Flutter'),
        ),
        body: new Center(
          child: new Text(wordPair.asPascalCase),
        ),
      ),
    );
  }
}
