import 'dart:async';
import 'dart:math';

void main() {
  controllerTest1();
  numbersStream([1, 2, 3]).map((num) => num * num).listen(
    (squaredNum) {
      print("num: $squaredNum");
    },
  );

  numbersStream([1, 2, 3, 4, 5]).where((num) => num % 2 == 0).listen(
    (evenNum) {
      print("even nums is: $evenNum");
    },
  );
  numbersStream([1, 2, 3, 4, 5]).expand(
    (num) {
      print("number $num consists of");
      List<int> expandedNum = [];
      for (int i = 0; i <= num; i++) {
        expandedNum.add(i);
      }
      return expandedNum;
    },
  ).listen(
    (expanded) {
      print(" num $expanded");
    },
  );
}

//Stream test
Stream<num> numbersStream(List<num> nums) async* {
  for (var num in nums) {
    await Future.delayed(Duration(seconds: 1));
    yield num;
  }
}

// StreamController example
void controllerTest1() {
  StreamController<String> controller = StreamController();
  void receiveMessages() async {
    var messages = ["message1", "message2", "friend", "spam"];
    for (String message in messages) {
      // random message generation every 2 seconds
      await Future.delayed(
        Duration(seconds: 2),
        () {
          print("receive message $message");
          controller.add(message);
        },
      );
    }
  }

  void listenMessages() {
    var messageSubscription = controller.stream.listen(
      (message) {
        switch (message) {
          case "friend":
            print("NOTIFICATION:Message from friend");
            break;
          case "spam":
            print("delete spam");
            break;
        }
      },
    );

    // pause message listen
    messageSubscription.pause();
    // resume message listen
    messageSubscription.resume();
    // works when receive data
    messageSubscription.onData((message) {});
    // works when throw exception
    messageSubscription.onError((e) {});
    // cancel subscription => onDone()
    messageSubscription.cancel();
    // works when stream close
    messageSubscription.onDone(() {});

    // throw exception: Stream has already been listened to
    controller.stream.listen((data) {});

    listenMessages();
    receiveMessages();
  }
}
