import 'dart:convert';
import 'dart:io';

void main() {
  // for
  var num = 5;
  var factorial = 1;
  for (var i = num; i >= 1; i--) {
    factorial *= i;
  }
  print(factorial);
  for (var temp, i = 0, j = 1; j < 30; temp = i, i = j, j = i + temp) {
    print('${j}');
  }
//  for (;;) {}

  //for...in
  var indexes = [1, 2, 3, 4, 5];
  for (int index in indexes) {
    print("current index is: ${indexes}");
  }
  indexes.forEach((index) {
    print('current index is: ${indexes}');
  });

  //while
  int a = 0;
  while (a < 10) {
    print("a equals: ${a}");
    a++;
  }
  //do while
  var input = "";
  do {
    print("input command:");
    input = stdin.readLineSync(encoding: Encoding.getByName('utf-8'));
    print("command: $input accepted");
  } while (input != "exit");

  //break
  //without label
  for (int i = 0; i < 5; i++) {
    print("i = $i");
    if (i >= 3) {
      break;
    }
  }

  bool isGameStart = true;
  var playerLivesCount = 5;
  while (isGameStart) {
    playerLivesCount--;
    print("Осталось жизней $playerLivesCount");
    if (playerLivesCount <= 1) {
      break;
    }
  }
  print("Game over!");
  //with label
  parent_loop:
  for (int i = 0; i < 5; i++) {
    print("parent_loop: $i");
    child_loop:
    for (int j = 0; j < 5; j++) {
      if (j > 3) break;

      if (i == 2) break child_loop;

      if (i == 4) break parent_loop;

      print("child_loop: ${j}");
    }
  }
  //continue
  //without label
  String oddNums = "";
  int count = 20;
  for (num = 0; num < count; num++) {
    if (num % 2 == 0) {
      continue;
    }
    oddNums += "$num${num != count - 1 ? ", " : ""}";
  }
  print("from 0 to $count oddNums is: $oddNums");

  var rightNum = "";
  do {
    print("Сколько будет 5 + 5 = ?");
    input = stdin.readLineSync(encoding: Encoding.getByName('utf-8'));
    if (input != "10") {
      print("Неверно! Попробуйте еще раз.");
      continue;
    }
    print("Верно!Идем далее!");
    break;
  } while (input != "exit");

  // with label
  parent:
  for (var i = 0; i < 3; i++) {
    print("Outerloop:${i}");

    for (var j = 0; j < 5; j++) {
      if (j == 3) {
        continue parent;
      }
      print("Innerloop:${j}");
    }
  }
}
