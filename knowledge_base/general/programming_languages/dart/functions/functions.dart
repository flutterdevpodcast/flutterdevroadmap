// Функция, запускющая программу
void main() {
  Function fn = outer();
  fn(); // 1
  fn(); // 2
  fn(); // 3

  Function func = multiply(5);
  int result1 = func(6); // 30
  print(result1); // 30

  int result2 = func(5); // 25
  print(result2); // 25
}

//closure
Function multiply(int n) {
  return (int m) => n * m;
}

//closure
Function outer() {
  var n = 0;
  void inner() {
    n++;
    print(n);
  }

  return inner;
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
