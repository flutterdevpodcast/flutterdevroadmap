# Введение в Dart

## Ключевые ресурсы
> - [dart.dev](https://dart.dev/) (EN) - официальный сайт
> - [dart.dev/tutorials](https://dart.dev/tutorials) (EN) - каталог официальных туториалов
> - [Dart Language Tour](https://dart.dev/guides/language/language-tour) (EN) - официальный обзор основных особенностей языка
> - [dartlang on Medium](https://medium.com/dartlang) (EN) - официальный блог на Medium
## Полезные ссылки
> - https://habr.com/ru/company/wrike/blog/343988/ (RU) - Пост про то, как правильно познакомиться с Dart
> - https://www.thepolyglotdeveloper.com/2019/04/building-simple-web-application-dart/ (EN) - пример простого веб приложения на Dart 
> - https://dart-lang.github.io/server/server.html (EN) - о серверной разработке на Dart

## О языке
Dart – объектно-ориентированный язык программирования, разработанный в Google.

Предназначен для разработки приложений для различных платформ.

- Web 
    - Решения из коробки
        - [dart2js](https://dart.dev/tools/dart2js) - стандартный компилятор от Google. Преобразует Dart код JS.
        - [dart:html](https://api.dart.dev/stable/2.7.2/dart-html/dart-html-library.html) - стандартная библиотека для работы с DOM веб-сайта
    - Веб-фреймворки
        - [Flutter web](https://flutter.dev/web) - кроссплатформенный фреймворк от Google.
        - [AngularDart](https://angulardart.dev/) - Веб-фреймворк от Google 
        - [React](https://pub.dev/packages/react) - Веб-фреймворк от Facebook
        - [Vue](https://pub.dev/packages/vue) - Прогрессивный веб-фреймворк для построения интерфейсов
- Backend.
   - [dart:io](https://api.dart.dev/stable/2.7.2/dart-io/dart-io-library.html) - библиотека предоставляет:
        - доступ к файловой системе
        - инструменты для работы с UDP и TCP протоколом
        - WebSocket
   - [dart:isolate](https://api.dart.dev/stable/2.7.2/dart-isolate/dart-isolate-library.html) - библиотека для работы с многопоточностью
   - [dart:async](https://api.flutter.dev/flutter/dart-async/dart-async-library.html) - асинхронное программирование
- Android, IOS:
    - [Flutter](https://flutter.dev/)
- Windows, Mac OS, Linux:
    - [dart2native](https://dart.dev/tools/dart2native) - библиотека, компилирующая Dart в нативный х64 машинный код.
      Не является кроссплатформенным решением. Для каждой платформы необходимо выполнять отдельную компиляцию.
    - [Flutter desktop](https://flutter.dev/desktop) - Помимо телефонов и веб-сайтов, Flutter работает на настольных ОС!
    
## Особенности языка
- Легок в освоении. Синтаксически похож на Java, JS и Swift 
- Поддерживается популярными средствами разработки (Visual Code, Android Studio, Intellij Idea). Есть онлайн [dartpad](https://dartpad.dev/)
- Hot reload позволяет вносить изменения в программу без повторной компиляции.

## Читать дальше 
> - [Типы данных](./data_types/data_types.md)
> - [Переменные](./variables/variables.md)
