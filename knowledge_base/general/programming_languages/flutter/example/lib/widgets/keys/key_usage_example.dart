import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(KeyDemoApp());
}

class KeyDemoApp extends StatelessWidget {
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
          title: Text("KeyDemoApp"),
        ),
        body: KeyDemo(),
      ),
    );
  }
}

class KeyDemo extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return KeyDemoState();
  }
}

class KeyDemoState extends State {
  List<Widget> statelessTiles = [
    Container(
      width: 100,
      height: 100,
      color: Colors.red,
    ),
    Container(
      width: 100,
      height: 100,
      color: Colors.blue,
    ),
  ];

  List<Widget> statefullTiles = [
    StatefulRect(
      key: Key("a"),
    ),
    StatefulRect(
      key: Key("b"),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        FlatButton(
          onPressed: () {
            _swapRects(statelessTiles);
          },
          child: Text("swap stateless tiles"),
        ),
        getTiles(statelessTiles),
        FlatButton(
          onPressed: () {
            _swapRects(statefullTiles);
          },
          child: Text("swap statefull tiles"),
        ),
        getTiles(statefullTiles),
      ],
    );
  }

  Widget getTiles(List<Widget> tiles) {
    return Column(
      children: tiles,
    );
  }

  void _swapRects(List<Widget> tiles) {
    setState(() {
      tiles.insert(1, tiles.removeAt(0));
    });
  }
}

class StatefulRect extends StatefulWidget {
  StatefulRect({Key key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return _StatefullRectState();
  }
}

class _StatefullRectState extends State<StatefulRect> {
  var colorsList = [Colors.red, Colors.blue];

  Color color;

  @override
  void initState() {
    super.initState();
    color = colorsList[Random().nextInt(colorsList.length)];
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      height: 100,
      color: color,
    );
  }
}
