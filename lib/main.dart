import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

void main() {
  debugPaintSizeEnabled =
      false; // set True to check Layout bound design debugging
  runApp(new MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
        title: "My FIrst Flutter",
        theme: new ThemeData(primarySwatch: Colors.brown),
        home: new Scaffold(
            backgroundColor: Colors.white,
            appBar: new AppBar(title: new Text("Hello Google!")),
//            body: new Center(child: new Text("Hello Flutter"))
            body: new Builder(builder: (BuildContext context) {
              return new Align(
                  alignment: Alignment.topCenter,
                  child: new Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        new Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: new Column(children: <Widget>[
                              new Text('Sundar Pitchai',
                                  style: new TextStyle(
                                      color: Colors.brown, fontSize: 25.0)),
                              new Text("CEO, Google.Inc",
                                  style:
                                      new TextStyle(color: Colors.deepOrange)),
                              new Text('Indian',
                                  style: new TextStyle(color: Colors.blue)),
                              new Image.network(
                                  'https://i0.wp.com/smestreet.in/wp-content/uploads/2017/01/Sundar-Pichai-Google.jpg?fit=250%2C250&amp;ssl=1'),
                              new Container(
                                  decoration: new BoxDecoration(
                                      color: Colors.lightGreenAccent),
                                  margin: const EdgeInsets.only(
                                      top: 15.0, bottom: 5.0),
                                  child: new Text(
                                      getCurrentDateTimeNow()
                                          .toUtc()
                                          .toIso8601String(),
                                      style: new TextStyle(
                                          fontWeight: FontWeight.w900,
                                          // The most thick
                                          color: Colors.redAccent),
                                      textAlign: TextAlign.left)),
                              new Padding(
                                padding: const EdgeInsets.all(5.0),
                                child: new Container(
                                    decoration: new BoxDecoration(
                                        color: Colors.black12,
                                        shape: BoxShape.circle),
                                    child: new IconButton(
                                        iconSize: 72.0,
                                        highlightColor: Colors.green,
                                        icon: new Icon(Icons.refresh),
                                        color: Colors.deepOrange,
                                        splashColor: Colors.brown,
                                        tooltip: 'Refresh',
                                        onPressed: () {
                                          showSnackBar(context);
                                        })),
                              )
                            ]))
                      ]));
            })));
  }

  /// It gives current Date and Time
  DateTime getCurrentDateTimeNow() {
    var now = new DateTime.now();
    debugPrint('CurrentDateTimeNow: $now');
    return now;
  }

  /// This method used to show the SnackBar
  void showSnackBar(BuildContext context) {
    Scaffold.of(context).showSnackBar(
        new SnackBar(content: new Text('Refresh button clicked!')));
    main();
  }
}
