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
          title: Text("Align demo"),
        ),
//        body: centerDemo(),
        body: alignDemo2(),
      ),
    );
  }

  Widget alignDemo() {
    return Container(
      width: 200,
      height: 200,
      color: Colors.blue,
      child: Align(
//        alignment: Alignment.center,
        alignment: Alignment(1, 1),
        child: Container(
          child: Text(
            "Align",
            style: TextStyle(color: Colors.white),
          ),
        ),
      ),
    );
  }

  Widget alignDemo2() {
    return Container(
      width: 200,
      height: 200,
      color: Colors.blue,
      child: Align(
        alignment: Alignment(2, 2),
        child: Container(
          child: Text(
            "Align",
            style: TextStyle(color: Colors.black),
          ),
        ),
      ),
    );
  }
}
