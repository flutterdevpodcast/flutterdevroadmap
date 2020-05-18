import 'package:flutter/material.dart';

class TopWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    print("---------------------------");
    print("rebuild TOP widget");
    return Container(
      child: CenterWidget(),
    );
  }
}

class CenterWidget extends StatefulWidget {
  String param1, param2;

  CenterWidget({
    this.param1,
    this.param2,
  });

  @override
  State<StatefulWidget> createState() {
    return _CenterWidgetState();
  }

}

class _CenterWidgetState extends State<CenterWidget> {
  @override
  Widget build(BuildContext context) {
    print("rebuild CENTER widget");
    return FlatButton(
        onPressed: () {
          setState(() {
            widget.param1 = "hey ho";
            widget.param2 = "let's go";
          });
        },
        child: BottomWidget());
  }
}

class BottomWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    print("rebuild BOTTOM widget");
    print("---------------------------");
    return Container();
  }
}
