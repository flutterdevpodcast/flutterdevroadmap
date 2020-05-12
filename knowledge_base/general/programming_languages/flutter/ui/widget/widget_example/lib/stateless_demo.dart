import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

/// Stateless widget example
class StatelessDemo extends StatelessWidget {
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
              _count++;
              print(_count);
            },
          ),
        ],
      ),
    );
  }
}
