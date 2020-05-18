import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:widgetexample/widgets/rebuild_test/widgets.dart';

void main() {
  runApp(RebuildDemoApp());
}

class RebuildDemoApp extends StatelessWidget {
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
          title: Text("RebuildTest demo"),
        ),
        body: RebuildTest(),
      ),
    );
  }
}

class RebuildTest extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return TopWidget();
  }
}
