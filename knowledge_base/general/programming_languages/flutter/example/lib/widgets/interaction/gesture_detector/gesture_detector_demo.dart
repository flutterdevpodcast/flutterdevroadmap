import 'package:flutter/material.dart';

main() {
  runApp(MaterialApp(
    theme: ThemeData(
      primarySwatch: Colors.indigo,
    ),
//    showSemanticsDebugger: true,
    home: GestureDetectorDemo(),
  ));
}

class GestureDetectorDemo extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return GestureDetectorDemoState();
  }
}

class GestureDetectorDemoState extends State<GestureDetectorDemo> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: <Widget>[
            _gestureDetectorDemo(() {
              print("hello");
            }),
          ],
        ),
      ),
    );
  }

  var buttonColor = Colors.red;
  var buttonOpacity = 1.0;

  Widget _gestureDetectorDemo(VoidCallback onTap) {
    return GestureDetector(
      onTapDown: (_) {
        setState(() {
          buttonOpacity = .5;
        });
      },
      onTapUp: (_) {
        setState(() {
          buttonOpacity = 1.0;
        });
      },
      onTapCancel: () {
        setState(() {
          buttonOpacity = 1.0;
        });
      },
      onTap: onTap,
      child: AnimatedOpacity(
        opacity: buttonOpacity,
        duration: Duration(milliseconds: 200),
        child: Container(
          width: 64,
          height: 64,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: buttonColor,
            boxShadow: [
              BoxShadow(
                blurRadius: 2,
                offset: Offset(0.0, .7),
              ),
            ],
          ),
          child: Center(
              child: Text(
            "Boom",
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          )),
        ),
      ),
    );
  }
}
