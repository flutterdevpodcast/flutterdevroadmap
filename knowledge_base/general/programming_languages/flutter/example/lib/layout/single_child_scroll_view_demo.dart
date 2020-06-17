import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

main() {
  runApp(MaterialApp(
    theme: ThemeData(
      primarySwatch: Colors.indigo,
    ),
    home: SingleChildScrollViewDemoApp(),
  ));
}

class SingleChildScrollViewDemoApp extends StatelessWidget {
  final ScrollController controller = ScrollController();

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
          title: Text("SingleChildScrollView demo"),
        ),
        body: singleChildScrollView(
          scrollDirection: Axis.horizontal,
          padding: EdgeInsets.all(32),
          controller: controller,
          physics: BouncingScrollPhysics(),
          reverse: true,
          primary: false,
          dragStartBehavior: DragStartBehavior.start,
        ),
      ),
    );
  }

  Widget singleChildScrollView({
    Axis scrollDirection,
    EdgeInsetsGeometry padding,
    ScrollController controller,
    bool reverse,
    bool primary,
    ScrollPhysics physics,
    DragStartBehavior dragStartBehavior,
  }) {
    return SingleChildScrollView(
      scrollDirection: scrollDirection,
      padding: padding,
      controller: controller,
      reverse: reverse,
      primary: primary,
      physics: physics,
      dragStartBehavior: dragStartBehavior,
      child: Row(
        children: <Widget>[
          Container(
            width: 200,
            height: 200,
            color: Colors.blueAccent,
          ),
          SizedBox(
            width: 50,
          ),
          Container(
            width: 200,
            height: 200,
            color: Colors.blueAccent,
          ),
          SizedBox(
            width: 50,
          ),
          Container(
            width: 200,
            height: 200,
            color: Colors.blueAccent,
          ),
          SizedBox(
            width: 50,
          ),
          Container(
            width: 200,
            height: 200,
            color: Colors.blueAccent,
          ),
          SizedBox(
            width: 50,
          ),
        ],
      ),
    );
  }
}
