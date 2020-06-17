import 'package:flutter/material.dart';

main() {
  runApp(MaterialApp(
    theme: ThemeData(
      primarySwatch: Colors.indigo,
    ),
    home: CenterDemoApp(),
  ));
}

class CenterDemoApp extends StatelessWidget {
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
          title: Text("Center demo"),
        ),
//        body: centerDemo(),
        body: centerDemo2(),
      ),
    );
  }

  Widget centerDemo() {
    return Container(
      width: 200,
      height: 200,
      color: Colors.blue,
      child: Center(
        child: Text("text in center"),
      ),
    );
  }

  Widget centerDemo2() {
    return Container(
      width: 200,
      height: 200,
      color: Colors.blue,
      child: Column(
        children: <Widget>[
          Center(
            child: Text("text in center"),
          ),
        ],
      ),
    );
  }
}
