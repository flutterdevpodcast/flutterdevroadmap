// Функция, запускющая программу
void main() {
  //anonymous function
  [1, 2, 3, 4, 5].forEach((num) => print("current num is $num"));

  // Create a function that adds 2.
  var add2 = makeAdder(2);

  // Create a function that adds 4.
  var add4 = makeAdder(4);

  assert(add2(3) == 5);
  assert(add4(3) == 7);
}

Function makeAdder(num addBy) {
  return (num i) => addBy + i;
}

// вложенные функции
void outerFunction() {
  ///some operations
  void verySecretFunction() {
    /// pentagon hacking...
  }

  verySecretFunction();
}

//getter
double average(List<int> nums) {
  double sum = 0;
  for (int i = 0; i < nums.length; i++) {
    sum += nums[i];
  }
  return sum / nums.length;
}

//setter
void log(String level, String tag, String message) {
  DateTime date = new DateTime.now();
  print("[level:$level, tag:$tag, time:${date.toUtc().toUtc()}]$message");
}

//parameters
int max(int a, int b) {
  if (a > b) {
    return a;
  }
  return b;
}

void printUserData({
  String name = "unknown",
  String surname = "unknown",
  int age = 0,
}) {
  print("user_data:[$name,$surname,$age]");
}

void printUserData_1([
  String name = "unknown",
  String surname = "unknown",
  int age = 0,
]) {
  print("user_data:[$name,$surname,$age]");
}
