import 'dart:async';
import 'dart:math';

import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

main() {
  runApp(MaterialApp(
    theme: ThemeData(
      primarySwatch: Colors.indigo,
    ),
//    showSemanticsDebugger: true,
    home: SingleChildScrollViewDemoApp(),
  ));
}

class SingleChildScrollViewDemoApp extends StatelessWidget {
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
//          body: staticListViewDemo(),
//        body: builderListView(),
//        body: itemExtentTest(),
        body: separatedListView(),
//        body: customListView(),
      ),
    );
  }

  Widget staticListViewDemo({
    ScrollPhysics scrollPhysics,
    bool isReverse = false,
    DragStartBehavior dragStartBehavior = DragStartBehavior.down,
    ScrollDirection scrollDirection,
    bool isPrimary = false,
    ScrollController scrollController,
    bool addRepaintBoundaries = true,
    EdgeInsetsGeometry padding,
    bool addAutomaticKeepAlives = true,
    bool addSemanticIndexes = true,
    double cacheExtent,
    double itemExtent,
    ScrollViewKeyboardDismissBehavior keyboardDismissBehavior,
    int semanticChildCount,
    bool shrinkWrap = false,
  }) {
    return ListView(
      physics: scrollPhysics,
      reverse: isReverse,
      dragStartBehavior: dragStartBehavior,
      scrollDirection: Axis.vertical,
      primary: false,
      controller: controller,
      //todo research repaint boundaries
      // https://api.flutter.dev/flutter/widgets/SliverChildListDelegate/addRepaintBoundaries.html
      addRepaintBoundaries: addRepaintBoundaries,
      padding: padding,
      //todo research addAutomaticKeepAlives
      //https://stackoverflow.com/questions/52541172/flutter-listview-keepalive-after-some-scroll
      addAutomaticKeepAlives: addAutomaticKeepAlives,
      //todo research addSemanticIndexex
      //https://api.flutter.dev/flutter/widgets/IndexedSemantics-class.html
      //https://www.youtube.com/watch?v=NvtMt_DtFrQ
      //https://medium.com/@greg.perry/decode-listview-a0bc4b90f82d
      addSemanticIndexes: addSemanticIndexes,
      //todo research semanticchildcount
      // https://api.flutter.dev/flutter/widgets/ListView/semanticChildCount.html
      semanticChildCount: semanticChildCount,
      //todo research cache extent
      //https://api.flutter.dev/flutter/widgets/ListView/cacheExtent.html
      //https://stackoverflow.com/questions/57348382/what-exactly-does-cacheextent-property-in-listview-builder-do
      cacheExtent: cacheExtent,
      //todo research  item extent
      //https://api.flutter.dev/flutter/widgets/ListView/itemExtent.html
      //https://medium.com/flutter-community/flutter-listview-and-scrollphysics-a-detailed-look-7f0912df2754
      //https://stackoverflow.com/questions/48673795/flutter-listview-builder-with-very-large-size-and-does-not-change/48674583
      itemExtent: itemExtent,
      //todo research  keyboarddismiss
      //https://api.flutter.dev/flutter/widgets/ListView/keyboardDismissBehavior.html
      keyboardDismissBehavior: keyboardDismissBehavior,
      //todo research shrinkwrap
      //https://stackoverflow.com/questions/54007073/what-does-the-shrink-wrap-property-do-in-flutter
      shrinkWrap: shrinkWrap,
      children: <Widget>[
        for (int i = 0; i < 5; i++) buildItem(i),
      ],
    );
  }

  Widget buildItem(int i) {
    print('$i');
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: 50,
        width: 50,
        color: Colors.blueAccent,
        child: Center(
          child: Text(
            "${i + 1}",
            style: TextStyle(
              fontSize: 42,
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }

  Widget itemExtentTest() {
    return ListView(
      itemExtent: 50,
      children: <Widget>[
        Container(
          width: 100,
          height: 100,
          color: Colors.red,
          child: Center(
            child: Text(
              "высота ячейки 50 px, хотя высота дочернего контейнера 100 px",
              style: TextStyle(
                color: Colors.white,
              ),
            ),
          ),
        ),
      ],
    );
  }

  Widget shrinkWrapTest(bool shrinkWrap) {
    return Container(
      height: 500,
      child: Center(
        child: Container(
          margin: EdgeInsets.all(32),
          decoration: BoxDecoration(border: Border.all(color: Colors.red)),
          child: ListView(
            shrinkWrap: shrinkWrap,
            children: <Widget>[
              ListTile(title: Text('Item 1')),
              ListTile(title: Text('Item 2')),
              ListTile(title: Text('Item 3')),
            ],
          ),
        ),
      ),
    );
  }

  Widget builderListView() {
    return ListView.builder(
//        itemCount: 10,
        itemBuilder: (context, index) {
      return buildItem(index);
    });
  }

  Widget customListView() {
    return ListView.custom(
      childrenDelegate: SliverChildListDelegate(
        List.generate(
          100,
          (index) {
            return Container(
              padding: EdgeInsets.all(20.0),
              child: Center(
                child: ListTile(
                  leading: const Icon(Icons.account_circle,
                      size: 40.0, color: Colors.white30),
                  title: Text('MainItem $index'),
                  subtitle: Text('subtitle'),
                ),
              ),
              color: Colors.green[400],
              margin: EdgeInsets.all(1.0),
            );
          },
        ),

        /// теория
        /// Не удалять виджет после того, как он вышел за пределы экрана.
        /// по умолчанию включен. Можно отключить, если нет необходимости поддерживать
        /// жизненный цикл виджета, когда он скрывается за пределами экрана
        /// todo найти рабочий пример
        addAutomaticKeepAlives: true,

        /// https://api.flutter.dev/flutter/widgets/SliverChildListDelegate/addRepaintBoundaries.html
        /// тоже про перерисовку виджета, но практического примера не нашел
        /// todo найти рабочий пример
        addRepaintBoundaries: false,

        /// https://api.flutter.dev/flutter/widgets/SliverChildListDelegate/addSemanticIndexes.html
        /// todo найти пример по семантическим индексам
        addSemanticIndexes: true,

        ///todo найти нормальный сэмпл
        semanticIndexCallback: (widget, index) {},

        ///todo найти нормальный сэмпл
        semanticIndexOffset: 0,
      ),
    );
  }

  Widget separatedListView() {
    return ListView.separated(
      itemBuilder: (BuildContext context, int index) {
        return buildItem(index);
      },
      separatorBuilder: (BuildContext context, int index) {
        return Container(
          height: 20,
          color: Colors.lime,
        );
      },
      itemCount: 10,
    );
  }
}
