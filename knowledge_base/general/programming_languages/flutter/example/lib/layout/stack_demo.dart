import 'package:flutter/material.dart';

main() {
  runApp(MaterialApp(
    theme: ThemeData(
      primarySwatch: Colors.indigo,
    ),
    home: StackDemo(),
  ));
}

class StackDemo extends StatelessWidget {
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
          title: Text("Stack demo"),
        ),
        body: Column(
          children: <Widget>[
            stackDemo(
              alignment: Alignment.center,
              textDirection: TextDirection.ltr,
              overflow: Overflow.visible,
              fit: StackFit.passthrough,
            ),
          ],
        ),
      ),
    );
  }

  Widget stackDemo({
    AlignmentGeometry alignment,
    TextDirection textDirection,
    Overflow overflow,
    StackFit fit,
  }) {
    return Column(
      children: <Widget>[
        Stack(
          textDirection: textDirection,
          alignment: alignment,
          overflow: overflow,
          fit: fit,
          children: <Widget>[
            Container(
              width: 300,
              height: 300,
              color: Colors.redAccent,
            ),
            Container(
              width: 200,
              height: 200,
              color: Colors.greenAccent,
            ),
            Container(
              width: 100,
              height: 100,
              color: Colors.blueAccent,
            ),
          ],
        ),
      ],
    );
  }
}
