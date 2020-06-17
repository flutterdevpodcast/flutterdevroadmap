import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

main() {
  runApp(MaterialApp(
    theme: ThemeData(
      primarySwatch: Colors.indigo,
    ),
    home: PageViewDemo(),
  ));
}

class PageViewDemo extends StatelessWidget {
  final ScrollController controller = ScrollController();

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
          title: TextField(),
        ),
        body: pageViewDemo(),
      ),
    );
  }

  Widget pageViewDemo() {
    return PageView.builder(
      pageSnapping: true,
      itemCount: 3,
      allowImplicitScrolling: false,
      onPageChanged: (index) {
        print("hi $index");
      },
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            decoration: BoxDecoration(
              color: Colors.amber,
              borderRadius: BorderRadius.all(
                Radius.circular(8),
              ),
            ),
            width: 200,
            height: 200,
            child: Center(
              child: Text(
                "page $index",
                style: TextStyle(
                  color: Colors.black,
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
