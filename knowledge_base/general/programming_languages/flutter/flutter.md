[На главную](flutter.md)

# Flutter
В этом разделе собраны материалы, которые помогут Вам в изучении разработки приложений на Flutter.

## Оглавление
[ui](ui/ui.md) - про разработку пользовательского интерфейса

[persistence]

[networking]

[async programming]

[state managment]

[internals]

[project structure](project_structure/project_structure.md) - про виды проектов на flutter

## Ключевые ресурсы
>- https://flutter.dev/docs (EN) - офф. документация по Flutter
>- https://github.com/flutter/flutter - github 
>- https://medium.com/flutter - блог на  Medium
>- https://twitter.com/flutterdev - twitter

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

- Все элементы пользовательского приложения являются [виджетами](https://flutter.dev/docs/development/ui/interactive). 
Перерисовка виджета происходит только в тот момент, когда в нем что-нибудь изменилось.

- [Связь с нативной платформой](https://flutter.dev/docs/development/platform-integration/platform-channels).
Для выполнения операций, связанных с платформой, Flutter может выполнять нативный код(Kotlin, Java, Swift)

- [Hot Reload](https://flutter.dev/docs/development/tools/hot-reload)
Изменения можно применять на лету, без перекомпиляции проекта

### Поддерживаемые платформы

- Мобильная разработка. Ios, Android.
- Веб разработка. Flutter web
- Desktop разработка. Windows, Mac OS, Linux.

### Установка
Для работы с Flutter вам понадобится:
- Mac OS, Linux, Windows
- Установить Dart. 
- Установить Flutter
- Выбрать среду разаботки. [Android Studio](https://developer.android.com/studio/?gclid=Cj0KCQjwhtT1BRCiARIsAGlY51KUvdteQp3FJMgPawnCEtnuauZANJLDtwZNKrv287ssevpItlOJaB4aAkwlEALw_wcB&gclsrc=aw.ds)
или [Visual Code](https://code.visualstudio.com/)

Для настройки окружения необходимо выполнить пункты, описанные в [офф. документации](https://flutter.dev/docs/get-started/install)

### Get started
Работать с Flutter можно как с использованием среды разработки, так и с помощью консоли.
Создание проекта подробно описано в [офф.документации](https://flutter.dev/docs/get-started/test-drive?tab=androidstudio)

## Дополнительные материалы
>- https://flutter.dev/docs/get-started/ (EN) - офф. гайдлайны по Flutter
>- https://flutter.dev/docs/cookbook (EN) - кукбук
>- https://flutter.dev/docs/development/ui/widgets (EN) - Стандартные виджеты Flutter
>- https://habr.com/ru/post/430918/ (RU) - статья про Flutter  