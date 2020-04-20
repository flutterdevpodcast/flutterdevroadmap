import 'dart:math';

void main() {
  //if else
  int a = 5;
  int b = 10;
  if (a > 5) {
    print('a > b');
  } else {
    print('a < b');
  }

  //if else if
  if (a > 5) {
    print('a > b');
  } else if (a < 5) {
    print('a < b');
  } else if (a == 5) {
    print('a == b');
  }

  // multiple condition
  if (a + b > 10 && a - b < 0) {
    print('выполнитс если оба условия верны');
  }

  //if tree
  if (a < b) {
    if (a + b == 15) {
      Random rand = Random();
      final randNum = rand.nextInt(10);
      if (randNum < 5) {
        print('rand num is: $randNum');
      }
    }
  }

  // switch
  int monthCount = 12;
  switch (monthCount) {
    case 12:
    case 1:
    case 2:
      print("зима");
      break;
    case 3:
    case 4:
    case 5:
      print("весна");
      break;
    case 6:
    case 7:
    case 8:
      print("лето");
      break;
    case 9:
    case 10:
    case 11:
      print("осень");
      break;
    default:
      print("Неверный номер месяца");
  }
}
