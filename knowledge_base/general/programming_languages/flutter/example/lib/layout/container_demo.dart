import 'package:flutter/material.dart';

main() {
  runApp(MaterialApp(
    theme: ThemeData(
      primarySwatch: Colors.indigo,
    ),
    home: ContainerDemoApp(),
  ));
}

class ContainerDemoApp extends StatelessWidget {
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
        body: buildContainer(),
      ),
    );
  }

  Widget buildContainer() {
    return Container(
      width: 100,
      height: 100,
      padding: EdgeInsets.all(8),
      margin: EdgeInsets.all(8),
      alignment: Alignment.center,
      decoration: BoxDecoration(
        shape: BoxShape.rectangle,
        color: Colors.red,
        border: Border.all(width: 2, color: Colors.blue),
        borderRadius: BorderRadius.all(Radius.circular(8)),
        backgroundBlendMode: BlendMode.multiply,
        gradient: LinearGradient(
          colors: [Colors.deepOrange, Colors.yellow],
          stops: [0.0, 0.7],
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 5,
            blurRadius: 7,
            offset: Offset(0, 3), // changes position of shadow
          ),
        ],
      ),
      transform: Matrix4.identity()..scale(1.0),
      clipBehavior: Clip.none,
      foregroundDecoration: BoxDecoration(
        border: Border.all(
          color: Colors.white,
          width: 2,
        ),
        shape: BoxShape.circle,
      ),
      constraints: BoxConstraints.expand(),
      child: Text(
        "container",
        style: TextStyle(
          color: Colors.white,
        ),
      ),
    );
  }
}
