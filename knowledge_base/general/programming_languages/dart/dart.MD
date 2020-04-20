# Введение в Dart

## Оглавление
> - [Типы данных](./data_types/data_types.md)
> - [Переменные](./variables/variables.md)
> - [Циклы](./loops/loops.md)
> - [Исключения](./exceptions/exceptions.md)
> - [Условные операторы](./conditional_statements/conditional_statement.md)
> - [ООП](./oop/oop.md)
> - [Функции](./functions/functions.md)
> - [Асинхронное программирование](asynchronous_programming/async.md)

## Ключевые ресурсы
> - [dart.dev](https://dart.dev/) (EN, official) - официальный сайт
> - [dart.dev/tutorials](https://dart.dev/tutorials) (EN, official) - каталог туториалов
> - [Dart Language Tour](https://dart.dev/guides/language/language-tour) (EN, official) - обзор основных особенностей языка
> - [dartlang on Medium](https://medium.com/dartlang) (EN, official) - официальный блог на Medium

## О языке
Dart – объектно-ориентированный язык программирования, разработанный в Google.

Предназначен для разработки приложений для различных платформ.

- Web
    - Коробочные решения:
        - [dart2js](https://dart.dev/tools/dart2js) - стандартный компилятор от Google. Преобразует Dart код JS;
        - [dart:html](https://api.dart.dev/stable/2.7.2/dart-html/dart-html-library.html) - стандартная библиотека для работы с DOM веб-сайта;
    - Веб-фреймворки:
        - [Flutter web](https://flutter.dev/web) - кроссплатформенный фреймворк от Google;
        - [AngularDart](https://angulardart.dev/) - веб-фреймворк от Google;
        - [React](https://pub.dev/packages/react) - веб-фреймворк от Facebook;
        - [Vue](https://pub.dev/packages/vue) - прогрессивный веб-фреймворк для построения интерфейсов;
- Backend
   - [dart:io](https://api.dart.dev/stable/2.7.2/dart-io/dart-io-library.html) - библиотека для:
        - доступа к файловой системе;
        - работы с UDP и TCP протоколом;
        - работы с WebSocket;
   - [dart:isolate](https://api.dart.dev/stable/2.7.2/dart-isolate/dart-isolate-library.html) - библиотека для работы с многопоточностью;
   - [dart:async](https://api.flutter.dev/flutter/dart-async/dart-async-library.html) - библиотека для обработки асинхронных операций;
- Android, iOS:
    - [Flutter](https://flutter.dev/) - кроссплатформенный фреймворк;
- Windows, macOS, Linux:
    - [dart2native](https://dart.dev/tools/dart2native) - библиотека, компилирующая Dart в нативный х64 машинный код;
    - [Flutter desktop](https://flutter.dev/desktop) - руководство по сборке Flutter-приложения под macOS (Windows и Linux поддержка пока в стадии technical preview).
    
## Особенности языка
- Прост в освоении. Синтаксически похож на Java, JS и Swift;
- Поддерживается популярными средствами разработки: Visual Code, Android Studio, Intellij Idea. Есть онлайн-редактор [dartpad](https://dartpad.dev/);
- Hot reload позволяет вносить изменения в программу "на лету", без повторной компиляции.

## Полезные ссылки
- https://habr.com/ru/company/wrike/blog/343988/ (RU) - пост про то, как правильно познакомиться с Dart;
- https://www.thepolyglotdeveloper.com/2019/04/building-simple-web-application-dart/ (EN) - руководство по написанию простого web-приложения на Dart;
- https://dart-lang.github.io/server/server.html (EN, official) - введение в серверную разработку на Dart.