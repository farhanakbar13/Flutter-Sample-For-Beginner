import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_app/CelebrityItem.dart';
import 'package:flutter_app/model/CelebrityInfo.dart';

void main() {
  debugPaintSizeEnabled =
      false; // set True to check Layout bound design debugging
  runApp(new MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    new FutureBuilder(
        future: CelebrityInfo.fetchCelebritiesDetails(),
        builder: (context, celebs) {
          debugPrint('test FutureBuilder $celebs');
        });
    return new MaterialApp(
        title: "My FIrst Flutter",
        theme: new ThemeData(primarySwatch: Colors.brown),
        home: new Scaffold(
            backgroundColor: Colors.white30,
            appBar: new AppBar(title: new Text("Hello Google!")),
            body: new FutureBuilder<List<CelebrityInfo>>(
                future: CelebrityInfo.fetchCelebritiesDetails(),
                builder: (context, celebs) {
                  return new ListView.builder(
                      itemCount: celebs.data.length,
                      itemBuilder: (context, index) =>
                          new CelebrityWidget(info: celebs.data[index], isVisible: true));
                })));
  }
}
