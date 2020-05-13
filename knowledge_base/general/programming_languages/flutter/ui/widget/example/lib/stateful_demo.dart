import 'package:flutter/material.dart';

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
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
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
      ),
    );
  }
}
