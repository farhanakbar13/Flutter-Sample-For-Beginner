import 'package:flutter/material.dart';

class CelebrityWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Card(
      elevation: 5.0,
      child: new Column(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            new Padding(
                padding: const EdgeInsets.all(10.0),
                child: new Column(children: <Widget>[
                  new Text('Sundar Pitchai',
                      style:
                          new TextStyle(color: Colors.green, fontSize: 25.0)),
                  new Text("CEO, Google.Inc",
                      style: new TextStyle(color: Colors.deepOrange)),
                  new Text('Indian', style: new TextStyle(color: Colors.blue)),
                  new Image.network(
                      'https://i0.wp.com/smestreet.in/wp-content/uploads/2017/01/Sundar-Pichai-Google.jpg?fit=200%2C200&amp;ssl=1'),
                  new Container(
                      decoration:
                          new BoxDecoration(color: Colors.lightGreenAccent),
                      margin: const EdgeInsets.only(top: 15.0, bottom: 5.0),
                      child: new Text(
                          getCurrentDateTimeNow().toUtc().toIso8601String(),
                          style: new TextStyle(
                              fontWeight: FontWeight.w900,
                              // The most thick
                              color: Colors.redAccent),
                          textAlign: TextAlign.justify)),
                  new Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: new Container(
                        decoration: new BoxDecoration(
                            color: Colors.black12, shape: BoxShape.circle),
                        child: new IconButton(
                            iconSize: 48.0,
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
          ]),
    );
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
  }
}
