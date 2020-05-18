[layout](../layout.md)

# Контейнеры
В этом разделе собраные материалы по использованию наиболее часто встречающихся контейнеров

## Ключевые ресурсы

### Container
Наиболее часто встречаемый виджет.Является "контейнером общего назначения".
Используется для добавления виджету отступов, настройки параметров фона виджета, добавления теней, 
установки размеров дочернего виджета и тд

```dart
 Widget buildContainer() {
    return Container(
      width: 100,
      height: 100,
      padding: EdgeInsets.all(8),
      margin: EdgeInsets.all(8),
      alignment: Alignment.center,
      decoration: BoxDecoration(
        shape: BoxShape.rectangle,
        color: Colors.red,
        border: Border.all(width: 2, color: Colors.blue),
        borderRadius: BorderRadius.all(Radius.circular(8)),
        backgroundBlendMode: BlendMode.multiply,
        gradient: LinearGradient(
          colors: [Colors.deepOrange, Colors.yellow],
          stops: [0.0, 0.7],
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 5,
            blurRadius: 7,
            offset: Offset(0, 3), // changes position of shadow
          ),
        ],
      ),
      transform: Matrix4.identity()..scale(1.0),
      clipBehavior: Clip.none,
    foregroundDecoration: BoxDecoration(
        border: Border.all(
          color: Colors.white,
          width: 2,
        ),
        shape: BoxShape.circle,
      ),
      constraints: BoxConstraints.expand(),
      child: Text(
        "container",
        style: TextStyle(
          color: Colors.white,
        ),
      ),
    );
  }
```
![container1](images/container/container1.png)

Имеет следующий функционал:

- `width`, `height` - Ширина и высота контейнера.

- `padding` - Внутренний отступ в контейнере

- `margin` - Внешний отступ от контейнера

- `alignment` - Выравнивание дочернего виджета. Конфигурируется при помощи готовых присетов либо с помощью задания
координат через конструктор

- `decoration` - Конфигурация бэкграунда контейнера. С помощью этого виджета можно преобразить внешний вид контейнера
    - `shape` - Конфигурация фигуры контейнера. Овал либо прямоугольник
    - `color` - цвет фигуры
    - `border` - стиль рамки
    - `borderRadius` - радиус рамки
    - `backgroundBlendMode` - режим наложения цвета
    - `gradient` - наложение градиента на цвет фона
    - `boxShadow` - массив теней
 - `transform` - трансформационная матрица контейнера. С помощью нее можно производить матричные преобразования объекта,
    например вращение, перемещение, маштабирование и тд
- `clipBehavior` - режим сглаживания
- `foregroundDecoration` - оформление переднего фона контейнера. Имеет аналогичные `decoration` свойства
- `constraints` - конфигурация маштабирования виджета по ширине и высоте
- `child` - дочерний виджет

### Center
Позиционирует дочерний виджет по центру родительского виджета.

```dart
  Widget centerDemo() {
    return Container(
      width: 200,
      height: 200,
      color: Colors.blue,
      child: Center(
        child: Text("text in center"),
      ),
    );
  }
```
![container2](images/container/container2.png)

Выравнивание по центру происходит только в том случае, когда родительский виджет `SingleChildWidget` c установленным размером.
Если разместить `Center` например в `Column` выравнивания не произойдет.

```dart
  Widget centerDemo2() {
    return Container(
      width: 200,
      height: 200,
      color: Colors.blue,
      child: Column(
        children: <Widget>[
          Center(
            child: Text("text in center"),
          ),
        ],
      ),
    );
  }
```
![container3](images/container/container3.png)

### Padding
Задает размеры отступов между элементами.

```dart
  Widget paddingDemo() {
    return Container(
      color: Colors.blue,
      child: Padding(
        /// отступ со всех сторон
        padding: EdgeInsets.all(8.0),
          /// отступ по вертикали и горизонтали
//        padding: EdgeInsets.symmetric(vertical: 8.0, horizontal: 8.0),
          /// отступ по одной из 4 сторон
//        padding: EdgeInsets.only(left: 0, right: 0, top: 0, bottom: 0),
          /// уникальный отступ по всем сторонам
//        padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
        child: Container(
          color: Colors.red,
          child: Text(
            "padding 8 px",
            style: TextStyle(
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
```
![container4](images/container/container4.png)

### Align
Конфигурирует положение дочернего виджета внутри родительского виджета.

```dart
  Widget alignDemo() {
    return Container(
      width: 200,
      height: 200,
      color: Colors.blue,
      child: Align(
//        alignment: Alignment.center,
        alignment: Alignment(1, 1),
        child: Container(
          child: Text(
            "Align",
            style: TextStyle(color: Colors.white),
          ),
        ),
      ),
    );
  }
```

![container6](images/container/container6.png)

Для определения положения можно использовать один из готовых пресетов

![container5](images/container/container5.png)

Либо воспользоваться `Alignment(double x, double y)`

```dart
child: Align(
//        alignment: Alignment.center,
        alignment: Alignment(1, 1),
        child: Container(
          child: Text(
            "Align",
            style: TextStyle(color: Colors.white),
          ),
        ),
      ),
```

При использовании `Alignment` диапазон значений задается от 0 до 1. Если привысить это значение, дочерний элемент
сместится за пределы виджета

```dart
Widget alignDemo2() {
    return Container(
      width: 200,
      height: 200,
      color: Colors.blue,
      child: Align(
        alignment: Alignment(2, 2),
        child: Container(
          child: Text(
            "Align",
            style: TextStyle(color: Colors.black),
          ),
        ),
      ),
    );
  }
```
![container7](images/container/container7.png)

### Row
Располагает дочерние элементы в виде строки. Имеет основную ось по горизонтали, дополнительную по вертикали.

```dart
Widget rowDemo({
    MainAxisSize mainAxisSize,
    MainAxisAlignment mainAxisAlignment,
    CrossAxisAlignment crossAxisAlignment,
    TextBaseline textBaseline,
    TextDirection textDirection,
    VerticalDirection verticalDirection,
  }) {
    return Container(
      color: Colors.red,
      height: 200,
      child: Row(
        mainAxisSize: mainAxisSize,
        mainAxisAlignment: mainAxisAlignment,
        crossAxisAlignment: crossAxisAlignment,
        textBaseline: textBaseline,
        textDirection: textDirection,
        verticalDirection: verticalDirection,
        children: <Widget>[
          Text(
            "Row",
            style: TextStyle(fontSize: 10),
          ),
          Text(
            "Demo",
            style: TextStyle(fontSize: 30),
          ),
          Container(
            width: 100,
            height: 100,
            color: Colors.blue,
          ),
          SizedBox(
            width: 20,
          ),
          Container(
            width: 100,
            height: 100,
            color: Colors.blue,
          ),
          SizedBox(
            width: 20,
          ),
          Container(
            width: 100,
            height: 100,
            color: Colors.blue,
          ),
        ],
      ),
    );
  }
```
![row1](images/row/row1.png)

Строка имеет следующие параметры:

- mainAxisSize - максимальный размер по основной оси(по горизонтали). Имеет два значения. 
    - min - размер строки сжимается до размеров дочернего виджета
    
    ![row2](images/row/row2.png)
    
    - max - размер расширяется до размеров родительского виджета

    ![row3](images/row/row3.png)

- mainAxisAlignment - позиционирования дочерних виджетов по основной оси
    - start - дочерние элементы располагаются по левому краю родительского виджета
   
   ![row4](images/row/row4.png)
    
    - center - дочерние элементы располагаются по центру родительского виджета

   ![row5](images/row/row5.png)
   
   - end - дочерние элементы располагаются по правому краю родительского виджета
   
   ![row6](images/row/row6.png)
   
   - spaceBetween - между дочерними виджетами образуется свободное пространство
   
   ![row7](images/row/row7.png)   
   
   - spaceAround - между дочерними виджетами образуется свободное пространство слева и справа
   
   ![row8](images/row/row8.png)    
   
   - spaceEvenly - между дочерними виджетами образуется свободное пространство слева и справа от первого до последнего виджета
   
   ![row9](images/row/row9.png)

- crossAxisAlignment - позиционирование дочерних виджетов по дополнительной оси

    - start - дочерние элементы располагаются сверху родительского виджета
    
    ![row10](images/row/row10.png)
    
    - center - дочерние элементы располагаются по центру родительского виджета
    
    ![row11](images/row/row11.png)   
    
    - end - дочерние элементы располагаются снизу родительского виджета
    
    ![row12](images/row/row12.png) 
    
    - baseline - дочерние элементы располагаются по направляющим текста
    
    ![row13](images/row/row13.png)
    
    - stretch - дочерние элементы растягиваются на всю ширину родительского контейнера
    
    ![row14](images/row/row14.png) 
    
- textBaseline - выравнивание текста внутри строки
    
    ![row15](images/row/row14.png) 
   
### Column
Располагает дочерние виджеты в столбик. Имеет основную ось по вертикали, дополнительную по горизонтали

```dart
Widget columnDemo({
    MainAxisSize mainAxisSize,
    MainAxisAlignment mainAxisAlignment,
    CrossAxisAlignment crossAxisAlignment,
    TextBaseline textBaseline,
    TextDirection textDirection,
    VerticalDirection verticalDirection,
  }) {
    return Container(
      color: Colors.red,
      child: Column(
        mainAxisSize: mainAxisSize,
        mainAxisAlignment: mainAxisAlignment,
        crossAxisAlignment: crossAxisAlignment,
        textBaseline: textBaseline,
        textDirection: textDirection,
        verticalDirection: verticalDirection,
        children: <Widget>[
          Text(
            "Column",
            style: TextStyle(fontSize: 10),
          ),
          Text(
            "Demo",
            style: TextStyle(fontSize: 30),
          ),
          Container(
            width: 100,
            height: 100,
            color: Colors.blue,
          ),
          SizedBox(
            width: 20,
          ),
          Container(
            width: 100,
            height: 100,
            color: Colors.blue,
          ),
          SizedBox(
            width: 20,
          ),
          Container(
            width: 100,
            height: 100,
            color: Colors.blue,
          ),
        ],
      ),
    );
  }
```
![column1](images/column/column1.png) 

Колонка имеет идентичный функционал с Row

### Stack
Позиционирует дочерние виджеты друг над другом

```dart
  Widget stackDemo({
    AlignmentGeometry alignment,
    TextDirection textDirection,
    Overflow overflow,
    StackFit fit,
  }) {
    return Stack(
      textDirection: textDirection,
      alignment: alignment,
      overflow: overflow,
      fit: fit,
      children: <Widget>[
        Container(
          width: 300,
          height: 300,
          color: Colors.redAccent,
        ),
        Container(
          width: 200,
          height: 200,
          color: Colors.greenAccent,
        ),
        Container(
          width: 100,
          height: 100,
          color: Colors.blueAccent,
        ),
      ],
    );
  }
```

![stack1](images/stack/stack1.png) 

Имеет следующие параметры

- textDirection - позиционирование текста внутри стека слева или справа. Аналогично как у row или column

- alignment - выравнивание дочерних элементов по сторонам родительского виджета. Работает аналогично виджету Align

- overflow - обрезание контента, выходящего за пределы стека.
    - clip - контент обрезается
    
    ![stack2](images/stack/stack2.png) 
    
    - clip - контент обрезается
        
    ![stack3](images/stack/stack3.png) 

- fit - растягивание размеров дочерних элементов стека до родительского виджета или до размеров содержимого
    - loose - растягивание до размеров содержимого
        
    
### SingleChildScrollView

### ListView

### GridView

### TabView

## Дополнительные материалы
>- https://medium.com/jlouage/flutter-row-column-cheat-sheet-78c38d242041
>
## Примеры
[widgets_example](../../example/lib/main.dart)