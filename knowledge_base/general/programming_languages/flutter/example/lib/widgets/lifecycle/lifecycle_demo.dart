import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(LifecycleDemoApp());
}

class LifecycleDemoApp extends StatelessWidget {
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
          title: Text("LifecycleDemo"),
        ),
        body: LifecycleDemo(),
      ),
    );
  }
}

class LifecycleDemo extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return LifecycleDemoState();
  }
}

class LifecycleDemoState extends State<LifecycleDemo>
    with SingleTickerProviderStateMixin {
  AnimationController controller;

  @override
  void initState() {
    super.initState();
    controller = AnimationController(vsync: this);
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
