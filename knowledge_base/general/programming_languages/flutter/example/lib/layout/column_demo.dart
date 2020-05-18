import 'package:flutter/material.dart';

main() {
  runApp(MaterialApp(
    theme: ThemeData(
      primarySwatch: Colors.indigo,
    ),
    home: ColumnDemo(),
  ));
}

class ColumnDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Widgets Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text("Column demo"),
        ),
        body: columnDemo(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          textBaseline: TextBaseline.alphabetic,
          textDirection: TextDirection.ltr,
          verticalDirection: VerticalDirection.down,
        ),
      ),
    );
  }

  Widget columnDemo({
    MainAxisSize mainAxisSize,
    MainAxisAlignment mainAxisAlignment,
    CrossAxisAlignment crossAxisAlignment,
    TextBaseline textBaseline,
    TextDirection textDirection,
    VerticalDirection verticalDirection,
  }) {
    return Container(
      color: Colors.red,
      child: Column(
        mainAxisSize: mainAxisSize,
        mainAxisAlignment: mainAxisAlignment,
        crossAxisAlignment: crossAxisAlignment,
        textBaseline: textBaseline,
        textDirection: textDirection,
        verticalDirection: verticalDirection,
        children: <Widget>[
          Text(
            "Column",
            style: TextStyle(fontSize: 10),
          ),
          Text(
            "Demo",
            style: TextStyle(fontSize: 30),
          ),
          Container(
            width: 100,
            height: 100,
            color: Colors.blue,
          ),
          SizedBox(
            width: 20,
          ),
          Container(
            width: 100,
            height: 100,
            color: Colors.blue,
          ),
          SizedBox(
            width: 20,
          ),
          Container(
            width: 100,
            height: 100,
            color: Colors.blue,
          ),
        ],
      ),
    );
  }
}
