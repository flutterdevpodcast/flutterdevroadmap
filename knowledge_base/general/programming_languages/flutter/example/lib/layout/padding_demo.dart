import 'package:flutter/material.dart';

main() {
  runApp(MaterialApp(
    theme: ThemeData(
      primarySwatch: Colors.indigo,
    ),
    home: PaddingDemoApp(),
  ));
}

class PaddingDemoApp extends StatelessWidget {
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
          title: Text("Center demo"),
        ),
//        body: centerDemo(),
        body: paddingDemo(),
      ),
    );
  }

  Widget paddingDemo() {
    return Container(
      color: Colors.blue,
      child: Padding(
        /// отступ со всех сторон
        padding: EdgeInsets.all(8.0),

        /// отступ по вертикали и горизонтали
//        padding: EdgeInsets.symmetric(vertical: 8.0, horizontal: 8.0),
        /// отступ по одной из 4 сторон
//        padding: EdgeInsets.only(left: 0, right: 0, top: 0, bottom: 0),
        /// уникальный отступ по всем сторонам
//        padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
        child: Container(
          color: Colors.red,
          child: Text(
            "padding 8 px",
            style: TextStyle(
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}
