void main() {
  loadData();
  print("other action $time");

  print("load user names");
  getUserNamesList().then((userNamesList) {
    // will work when users load
    print("users: ${userNamesList}");
  });

  exceptionTest().then(
    (_) {
      print("ok");
    },
  ).catchError(
    (e) {
      print("error $e");
    },
  ).whenComplete(() {
    print("will be executed anyway");
  });

  // bad use
  loadData().then((data) {
    getUserNamesList().then((users) {
      exceptionTest().then((_) {
        print("complete");
      });
    }).catchError((e) {
      print("something wrong $e");
    });
  });
}

// good use
void asyncMethod() async {
  var data = await loadData();
  var userNamesList = await getUserNamesList();
  try {
    await exceptionTest();
  } catch (e) {
    print("something wrong: $e");
  }
}

//future throw exception example
Future<void> exceptionTest() {
  return Future.delayed(Duration(seconds: 2), () {
    throw Exception("Something wrong");
  });
}

// return data from future
Future<List<String>> getUserNamesList() {
  return Future.delayed(Duration(seconds: 3), () {
    return ["Ivan", "Petr", "Alex"];
  });
}

String get time =>
    "[${DateTime.now().hour}:${DateTime.now().minute}:${DateTime.now().second}]";

// future example
Future<void> loadData() {
  print("data loading started $time");
  return Future.delayed(Duration(seconds: 10), () {
    print('data loading completed $time');
  });
}
