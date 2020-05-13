import 'package:flutter/cupertino.dart';

class LifecycleDemo extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return LifecycleDemoState();
  }
}

class LifecycleDemoState extends State<LifecycleDemo>
   with SingleTickerProviderStateMixin {
  AnimationController controller;

  @override
  void initState() {
    super.initState();
    controller = AnimationController(vsync: this);
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
