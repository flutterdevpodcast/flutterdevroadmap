import 'dart:math';

void main() {
  //int
  int testInt = 10;
  if (testInt.isEven) {
    print("число ${testInt} четное");
  }
  //double
  double testDouble = 10.3;
  print("пример округления ${testDouble.round()}");
  //bool
  bool isPowerOn = true;
  if (isPowerOn) {
    print("питание включено");
  } else {
    print("питание выключено");
  }
  //String
  String oneBracesString = 'mom washed';
  String twoBracesString = "the frame";
  String multiStrokeString = """
  one
  ,
  two
  ,
  three""";
  String interpolationTest = "${oneBracesString} ${twoBracesString}";
  String strokeWithoutCommas = multiStrokeString.replaceAll(",", "");
  //list
  //not fixed list
  var indexList = [1, 2, 3, 3, 4, 4, 5, 5];
  List<String> namesList = ["Ivan", "Petr", "Maria"];
  //fixed list
  List<double> fixedList = List(3);
  fixedList[0] = 1.0;
  fixedList[1] = 2.0;
  fixedList[2] = 3.0;
  //two dim list
  List<List<int>> gameBoard = [
    [0, 0, 0],
    [1, 0, 1],
    [0, 1, 0]
  ];
  //map
  Map<String, dynamic> dataFromJson = {
    "userName": "Ivan",
    "userSurname": "Petrov",
    "age": 18,
    "position": "fullstack web developer",
    "skills": ["php", "mysql", "js", "html"],
  };
  //set
  Set<String> uniqueNames = {"ivan", "ivan", "maria", "petr"};
  print(uniqueNames); // Второй иван будет откинут
  test();

  //check data type
  String a = "abc";
  print("тип данных переменно а: ${a.runtimeType}");
  if (a.runtimeType == String) {
    print("Точно, это строка");
  }
  if (a is String) {
    print("is тоже говорит что а это строка");
  }
}

class CustomDataType {
  String typeName = "CustomDataType";

  void doBarrelRoll() {
    print("roll");
  }
}

void test() {
  CustomDataType customDataType = CustomDataType();
  customDataType.doBarrelRoll();
}
