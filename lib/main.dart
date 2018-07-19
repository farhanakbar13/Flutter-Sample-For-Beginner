import 'package:english_words/english_words.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_app/CelebrityItem.dart';

void main() {
  debugPaintSizeEnabled =
      false; // set True to check Layout bound design debugging
  runApp(new MyApp());
}

class WordApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final wordPair = new WordPair.random(); // Add this line.
    return new MaterialApp(
        title: "Word app",
        theme: new ThemeData(primarySwatch: Colors.deepPurple),
        home: new Scaffold(
          appBar: new AppBar(title: new Text('Welcome to flutter')),
          //body: new Center(child: new Text(wordPair.asPascalCase)),
          body: new Center(child: new RandomWords()),
        ));
  }
}

class RandomWords extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => new RandomWordsState();
}

class RandomWordsState extends State<RandomWords> {
  @override
  Widget build(BuildContext context) {
    final WordPair pair = new WordPair.random();
    return new Text(pair.asPascalCase);
  }
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
        title: "My FIrst Flutter",
        theme: new ThemeData(primarySwatch: Colors.brown),
        home: new Scaffold(
            backgroundColor: Colors.white30,
            appBar: new AppBar(title: new Text("Hello Google!")),
//            body: new Center(child: new Text("Hello Flutter"))
            body: new Builder(builder: (BuildContext context) {
              return new Align(
                  alignment: Alignment.topCenter,
                  child: new Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: new CelebrityWidget()));
            })));
  }
}
