import 'package:flutter/material.dart';
import 'package:widgetexample/lifecycle_demo.dart';
import 'package:widgetexample/rebuild_test/rebuild_test.dart';
import 'package:widgetexample/stateful_demo.dart';
import 'package:widgetexample/stateless_demo.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Widgets Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(
        title: 'Flutter Widgets Demo',
//        body: StatelessDemo(),
//        body: StatefulDemo(),
//        body: RebuildTest(),
        body: LifecycleDemo(),
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({
    Key key,
    @required this.title,
    @required this.body,
  }) : super(key: key);

  final String title;
  final Widget body;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: widget.body,
    );
  }
}
