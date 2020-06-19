import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

class DemoLocalizations {
  DemoLocalizations(this.locale);

  final Locale locale;

  static DemoLocalizations of(BuildContext context) {
    return Localizations.of<DemoLocalizations>(context, DemoLocalizations);
  }

  static Map<String, Map<String, String>> _localizedValues = {
    'en': {
      'title': 'Localized text',
    },
    'ru': {
      'title': 'Локализированный текст',
    },
  };

  String get title {
    return _localizedValues[locale.languageCode]['title'];
  }
}

class DemoLocalizationsDelegate
    extends LocalizationsDelegate<DemoLocalizations> {
  const DemoLocalizationsDelegate();

  @override
  bool isSupported(Locale locale) => ['en', 'ru'].contains(locale.languageCode);

  @override
  Future<DemoLocalizations> load(Locale locale) {
    // Returning a SynchronousFuture here because an async "load" operation
    // isn't needed to produce an instance of DemoLocalizations.
    return SynchronousFuture<DemoLocalizations>(DemoLocalizations(locale));
  }

  @override
  bool shouldReload(DemoLocalizationsDelegate old) => false;
}

main() {
  runApp(MaterialApp(
    theme: ThemeData(
      primarySwatch: Colors.indigo,
    ),
//    showSemanticsDebugger: true,
    localizationsDelegates: [
      // ... app-specific localization delegate[s] here
      GlobalMaterialLocalizations.delegate,
      GlobalWidgetsLocalizations.delegate,
      GlobalCupertinoLocalizations.delegate,
      const DemoLocalizationsDelegate(),
    ],
    supportedLocales: [
      const Locale('ru', ''), // English, no country code
      const Locale('en', ''), // Hebrew, no country code
      // ... other locales the app supports
    ],
    home: TextDemo(),
  ));
}

class TextDemo extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return TextDemoState();
  }
}

class TextDemoState extends State<TextDemo> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Container(
            height: MediaQuery.of(context).size.height,
            child: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              physics: AlwaysScrollableScrollPhysics(
                parent: BouncingScrollPhysics(),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  _text(
                    "просто текст",
                  ),
                  _text(
                    "текст со стилем",
                    style: TextStyle(
                      color: Colors.blueAccent,
                      fontSize: 25,
                      background: Paint()..color = Colors.red[100],
//                  backgroundColor: Colors.blueGrey,
//                foreground: Paint()..color = Colors.green[100],
                      height: 2,
                      letterSpacing: 5,
                      fontWeight: FontWeight.bold,
                      wordSpacing: 2,

                      /// https://flutter.dev/docs/cookbook/design/fonts
                      fontFamily: "Arial",

                      ///todo найти матеирал по fontFamilyFallback
                      fontFamilyFallback: ["test"],
                      fontStyle: FontStyle.italic,
                      decorationStyle: TextDecorationStyle.solid,
                      decoration: TextDecoration.overline,
                      decorationColor: Colors.green,
                      decorationThickness: 2,
                      inherit: true,
                      shadows: [
                        Shadow(
                          color: Colors.black,
                          offset: Offset(0, 0.5),
                        ),
                      ],
                      textBaseline: TextBaseline.ideographic,
                      locale: Locale("ru"),
                      debugLabel: "debug test",
                    ),
                  ),
                  _text(
                    "перекрытие длинного текста",
                    width: 200,
                    overflow: TextOverflow.ellipsis,
                    maxLines: 1,
                  ),
                  _text(
                    "This is a long text dasdasdasdasdasdsadasdas",
                    overflow: TextOverflow.fade,
                    maxLines: 1,
                    softWrap: false,
                  ),
                  _text(
                    "semantic test",
                    semanticLabel: "custom semantic",
                  ),
                  _text(
                    "по правому краю",
                    width: 500,
                    textAlign: TextAlign.right,
                  ),
                  _text(
                    "выравнивание по направляющей",
                    textDirection: TextDirection.rtl,
                  ),
                  _text(
                    "textHeightBehavior",
                    textHeightBehavior: TextHeightBehavior(
                      applyHeightToFirstAscent: true,
                      applyHeightToLastDescent: true,
                    ),
                  ),
                  _text(
                    "scalefactor x2",
                    textScaleFactor: 2,
                  ),
                  Row(
                    children: <Widget>[
                      Container(
                        width: 64,
                        height: 64,
                        color: Colors.blueAccent[100],
                        child: Text(
                          "left",
                          textAlign: TextAlign.left,
                        ),
                      ),
                      SizedBox(width: 8),
                      Container(
                        width: 64,
                        height: 64,
                        color: Colors.blueAccent[100],
                        child: Text(
                          "right",
                          textAlign: TextAlign.right,
                        ),
                      ),
                      SizedBox(width: 8),
                    ],
                  ),
                  _text(
                    "left to right",
                    textDirection: TextDirection.ltr,
                    width: 500,
                  ),
                  _text(
                    "right to left",
                    textDirection: TextDirection.rtl,
                    width: 500,
                  ),
                  RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: "hello",
                          style: TextStyle(
                            color: Colors.red,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        TextSpan(
                          text: "world",
                          style: TextStyle(
                            color: Colors.blue,
                            letterSpacing: 10,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget _text(
    String descr, {
    double width,
    TextStyle style,
    TextOverflow overflow,
    int maxLines,
    Locale locale,
    bool softWrap,
    String semanticLabel,
    StrutStyle strutStyle,
    TextAlign textAlign,
    TextDirection textDirection,
    TextHeightBehavior textHeightBehavior,
    double textScaleFactor,
    TextWidthBasis textWidthBasis,
  }) {
    return Container(
      width: width,
      child: Text(
        "$descr",
        overflow: overflow,
        maxLines: maxLines,
        locale: locale,
        softWrap: softWrap,
        semanticsLabel: semanticLabel,
        strutStyle: strutStyle,
        textAlign: textAlign,
        textDirection: textDirection,
        textHeightBehavior: textHeightBehavior,
        textScaleFactor: textScaleFactor,
        textWidthBasis: textWidthBasis,
        style: style,
      ),
    );
  }
}
