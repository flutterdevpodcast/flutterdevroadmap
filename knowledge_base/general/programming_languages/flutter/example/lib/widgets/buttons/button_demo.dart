import 'dart:async';
import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

main() {
  runApp(MaterialApp(
    theme: ThemeData(
      primarySwatch: Colors.indigo,
    ),
//    showSemanticsDebugger: true,
    home: ButtonDemo(),
  ));
}

class ButtonDemo extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return ButtonDemoState();
  }
}

class ButtonDemoState extends State<ButtonDemo> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: <Widget>[
            _buttonDemo(context),
            _checkBoxDemo(),
            _materialSwitchDemo(),
            _cupertinoSwitchDemo(),
          ],
        ),
      ),
    );
  }

  Widget _buttonDemo(BuildContext context) {
    return RaisedButton(
      onPressed: () {
        print("hello");
      },
      child: Text("test"),
    );
  }

  var isActive = false;

  Widget _checkBoxDemo() {
    return Checkbox(
      value: isActive,
      onChanged: (_) {
        setState(() {
          isActive = !isActive;
        });
      },
    );
  }

  var isSwitchActive = false;

  Widget _materialSwitchDemo() {
    return Switch(
      value: isSwitchActive,
      onChanged: (currentValue) {
        setState(() {
          isSwitchActive = !isSwitchActive;
        });
      },
    );
  }

  var isCupertinoSwitchActive = false;

  Widget _cupertinoSwitchDemo() {
    return CupertinoSwitch(
      value: isCupertinoSwitchActive,
      onChanged: (isActive) {
        setState(() {
          isCupertinoSwitchActive = !isCupertinoSwitchActive;
        });
      },
    );
  }
}
