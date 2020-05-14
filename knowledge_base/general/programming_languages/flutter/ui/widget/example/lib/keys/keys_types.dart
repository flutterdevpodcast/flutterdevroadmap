import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:widgetexample/keys/global_key_demo.dart';
import 'package:widgetexample/keys/key_usage_example.dart';

class KeyTypesDemo extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return KeyTypesState();
  }
}

class KeyTypesState extends State {
  var globalKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        FlatButton(
          onPressed: () {
//            _swapRects(keyRects);
//            _swapRects(localRects);
            _swapRects(localQuniueRects);
          },
          child: Text("swap statefull tiles"),
        ),
//        keyDemo(),
//        Column(
//          children: <Widget>[
//            localRects[2],
//            localRects[3],
//          ],
//        ),
//        valueKeyDemo(),
//        uniqueKeyDemo(),
      ],
    );
  }

  void _swapRects(List<Widget> tiles) {
    setState(() {
      tiles.insert(1, tiles.removeAt(0));
//      tiles.insert(2, tiles.removeAt(3));
    });
  }

  List<Widget> keyRects = [
    StatefulRect(
      key: Key("a"),
    ),
    StatefulRect(
      key: Key("b"),
    ),
  ];

  Widget keyDemo() {
    return Column(
      children: keyRects,
    );
  }

  List<Widget> localRects = [
    StatefulRect(
//      key: ValueKey("2"),
      key: ValueKey("2"),
    ),
    StatefulRect(
      key: ValueKey("2"),
    ),
    StatefulRect(
      key: ValueKey("1"),
    ),
    StatefulRect(
      key: ValueKey("2"),
    ),
  ];

  Widget valueKeyDemo() {
    return Column(
      children: <Widget>[
        Column(
          children: <Widget>[
            localRects[0],
            localRects[1],
          ],
        ),
        Column(
          children: <Widget>[
            localRects[2],
            localRects[3],
          ],
        )
      ],
    );
  }

  List<Widget> localQuniueRects = [
    StatefulRect(
      key: UniqueKey(),
    ),
    StatefulRect(
      key: UniqueKey(),
    ),
  ];

  Widget uniqueKeyDemo() {
    return Column(
      children: <Widget>[
        Column(
          children: <Widget>[
            localQuniueRects[0],
            localQuniueRects[1],
          ],
        ),
      ],
    );
  }

  List<Widget> localObjectRects = [
    StatefulRect(
      key: ObjectKey(1),
    ),
    StatefulRect(
      key: ObjectKey("a"),
    ),
  ];
}
