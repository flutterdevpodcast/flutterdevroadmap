# Flutter
В этом разделе собраны материалы, которые помогут Вам в изучении разработки приложений на Flutter.

## Оглавление
[ui]
[persistence]
[networking]
[async programming]
[state managment]
[internals]

## Ключевые ресурсы
-> https://flutter.dev/docs (EN) - офф. документация по Flutter
-> https://github.com/flutter/flutter - github 
-> https://medium.com/flutter - блог на  Medium
-> https://twitter.com/flutterdev - twitter

## О Flutter
Flutter - кроссплатформенный фреймворк для разработки приложений. В качестве языка программирования используется Dart.
Имеет активно расширяющуюся аудиторию. pub.dev пополняется библиотеками для работы, на [github](https://github.com/flutter/flutter) активно создаются
ишью, проблемы и обсуждения. Часто выходят обновления платформы.

### Особенности фреймворка
- Нет JavaScript. По сравнению с другими кроссплатформенными фреймворками(ReactJS, NativeScript), Flutter не использует 
JS. Dart - компилируется в бинарный код исполняемой среды, за счет чего достигается [скорость выполнения программы](https://medium.com/swlh/flutter-vs-native-vs-react-native-examining-performance-31338f081980)
на уровне нативных языков программирования(Java, Kotlin, Swift).

- Для отображения пользовательского интерфейса не используются нативные компоненты. Обработкой графики занимается
движок [Skia](https://skia.org/dev/flutter). Благодаря этому, нет необходимости писать прослойки между приложением и нативной платформой, что повышает
производительность приложения.

- Описание интерфейса происходит в коде программы. Для построение UI используется [декларативный подход](https://flutter.dev/docs/get-started/flutter-for/declarative).

- Все элементы пользовательского приложения являются виджетами. 
Перерисовка виджета происходит только в тот момент, когда в нем что-нибудь изменилось.

- [Связь с нативной платформой](https://flutter.dev/docs/development/platform-integration/platform-channels).
Для выполнения нативных операций Flutter может выполнять код, написанный на нативном 
языке системы(Kotlin, Java, Swift).

- Hot Reload

### Поддерживаемые платформы

- Мобильная разработка. Ios, Android.
- Веб разработка. Flutter web
- Desktop разработка. Windows, Mac OS, Linux.

## Дополнительные материалы
>- https://flutter.dev/docs/get-started/ (EN) - офф. гайдлайны по Flutter
>- https://flutter.dev/docs/cookbook (EN) - кукбук
>- https://flutter.dev/docs/development/ui/widgets (EN) - Стандартные виджеты Flutter
>- https://habr.com/ru/post/430918/ (RU) - статья про Flutter  