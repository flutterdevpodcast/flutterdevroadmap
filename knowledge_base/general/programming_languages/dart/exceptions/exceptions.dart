void main() {
  //try example
  try {
    int a = 1 ~/ 0;
  } on IntegerDivisionByZeroException {
    print("деление на ноль!");
  }

  try {
    int a = 1 ~/ 0;
  } on IntegerDivisionByZeroException catch(e) {
    print("деление на ноль! ${e}");
  }

  //try multiple catch
  try {
    String stroke = null;
    print(stroke.substring(0, 5));
    List<int> nums = [0, 1, 2, 3, 4, 5];
    print("ten num is: ${nums[10]}");
  } on NoSuchMethodError catch (e) {
    print("обращение к нулевому объекту: $e");
  } on RangeError catch (e) {
    print("выход за пределы массива $e");
  }

  num extractInt(String num) {
    int extractedNum = 0;
    try {
      extractedNum = int.parse(num);
    } catch (e) {
      print("Невозможно извлечь int из строки $e");
      rethrow;
    }

    return extractedNum;
  }

  //rethrow
  try {
    int num = extractInt("5a");
  } catch (e) {
    print("при извлечении числа произошла ошибка");
  }

  try {
    int num = extractInt("5a"); // извлечение числа из строки
  } on IntegerDivisionByZeroException { // обработка ошибки деления на ноль
    print("деление на ноль");
  } finally {
    //finally отрабатывает в любом случае, даже после необработанной ошибки
    // сохранить данные
    print("saving...");
  }
  // в этом месте программа завершится
  arrayCounter([]); // выбросит исключение "Массив не может быть пуст!"

  throw CustomException("wtf?");
}

class CustomException implements Exception {
  String message;

  CustomException(this.message);

  @override
  String toString() {
    return "Произошла непонятная ошибка $message";
  }
}

void arrayCounter(List<dynamic> elements) {
  if (elements.isEmpty) {
    throw Exception("Массив не может быть пуст!");
  }

  print("длина массива ${elements.length}");
}
