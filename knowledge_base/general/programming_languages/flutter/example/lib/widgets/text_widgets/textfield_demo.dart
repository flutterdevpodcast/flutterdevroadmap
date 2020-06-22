import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/services.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

main() {
  runApp(
    MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.indigo,
      ),
      home: TextDemo(),
    ),
  );
}

class TextDemo extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return TextDemoState();
  }
}

class TextDemoState extends State<TextDemo> {
  var textFieldContent = "";

  final controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
      },
      child: Scaffold(
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                /// todo найти инфу по TextFormField
                TextField(
                  onTap: () {
                    print("tapped");
                  },
                  onChanged: (text) {
                    setState(() {
                      textFieldContent = text;
                    });
                  },
                  onEditingComplete: () {
                    print("on edit complete");
                  },
                  style: TextStyle(
                    color: Colors.blue,
                    fontWeight: FontWeight.w600,
                    decorationColor: Colors.transparent,
                  ),
//                  controller: controller,
                  decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(32),
                      ),
                      borderSide: BorderSide(color: Color(0xff66ccff)),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(32),
                      ),
                      borderSide: BorderSide(
                        color: Colors.blue,
                        width: 2,
                      ),
                    ),
                    filled: true,
                    fillColor: Color(0xffccffff),
                    hintText: "hint",
                    hintStyle: TextStyle(
                      color: Colors.indigo,
                      letterSpacing: 2,
                      fontWeight: FontWeight.w300,
                    ),
                    labelText: "awesome textfield",
                    floatingLabelBehavior: FloatingLabelBehavior.auto,
                    labelStyle: TextStyle(letterSpacing: 4),
                    icon: Icon(Icons.star),
                    prefixIcon: Icon(Icons.search),
                    suffixIcon: Icon(Icons.add),
                    contentPadding: EdgeInsets.all(8),
//перекрывает стандартный каунтер
//                    counter: Text("a"),
                    alignLabelWithHint: true,
                  ),
                  textCapitalization: TextCapitalization.words,
                  focusNode: FocusNode(),
                  keyboardAppearance: Brightness.light,
                  cursorColor: Colors.blue,
                  cursorWidth: 4,
                  cursorRadius: Radius.circular(4),
//            /// todo search for buildCounter
                  buildCounter: (a, {currentLength, isFocused, maxLength}) {
                    return Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(16.0)),
                        color: Color(0xffccffff),
                        border: Border.all(
                          color: Colors.blue,
                          width: 2,
                        ),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          "$currentLength из $maxLength",
                          style: TextStyle(
                            color: Colors.blue,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    );
                  },
                  enabled: true,
                  autocorrect: true,
                  autofocus: true,
                  /// кнопки выделения
                  enableInteractiveSelection: false,
                  /// т9
                  enableSuggestions: true,
            expands: false,
//                  obscureText: true,
                  readOnly: false,
//                  maxLengthEnforced: true,
                  showCursor: true,
                  keyboardType: TextInputType.text,
                  inputFormatters: [
                    NumsToWordsFormatter(),
                  ],
//
                  maxLength: 250,
                  maxLines: 5,
                  minLines: 1,
//            // todo search for scrollPadding
//            scrollPadding: EdgeInsets.all(100),
//            // todo search for textfield scrollPhysics
                  scrollPhysics: BouncingScrollPhysics(
                      parent: AlwaysScrollableScrollPhysics()),
//            smartDashesType: SmartDashesType.enabled,
//            smartQuotesType: SmartQuotesType.enabled,
//            textInputAction: TextInputAction.continueAction,
//            toolbarOptions: ToolbarOptions(),
//            textAlignVertical: TextAlignVertical(y: 0),
                ),
                SizedBox(
                  height: 16,
                ),
                Text(
                  "Text from field",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 24,
                      fontWeight: FontWeight.w500),
                ),
                SizedBox(
                  height: 8,
                ),
                Text(
                  textFieldContent,
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 18,
                      fontWeight: FontWeight.w300),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class NumsToWordsFormatter extends TextInputFormatter {
  final words = [
    "ноль",
    "один",
    "два",
    "три",
    "четыре",
    "пять",
    "шесть",
    "семь",
    "восемь",
    "девять",
  ];

  @override
  TextEditingValue formatEditUpdate(
    TextEditingValue oldValue,
    TextEditingValue newValue,
  ) {
    try {
      int currentNum = int.parse(newValue.text);
      switch (currentNum) {
        case 0:
        case 1:
        case 2:
        case 3:
        case 4:
        case 5:
        case 6:
        case 7:
        case 8:
        case 9:
          return newValue.copyWith(
              text: words[currentNum],
              selection:
                  TextSelection.collapsed(offset: words[currentNum].length));
      }
    } on Exception {
      return newValue;
    }
    throw UnimplementedError();
  }
}
