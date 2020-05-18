import 'package:flutter/material.dart';

void main() {
  runApp(StatefulDemoApp());
}

class StatefulDemoApp extends StatelessWidget {
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
          title: Text("Stateful Widget demo"),
        ),
        body: StatefulDemo(),
      ),
    );
  }
}

class StatefulDemo extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _StatefullDemoState();
  }
}

class _StatefullDemoState extends State<StatefulDemo> {
  int _count = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Text("ClickCount: $_count"),
        OutlineButton(
          child: Text("increment count"),
          onPressed: () {
            setState(() {
              _count++;
            });
          },
        ),
      ],
    );
  }
}
