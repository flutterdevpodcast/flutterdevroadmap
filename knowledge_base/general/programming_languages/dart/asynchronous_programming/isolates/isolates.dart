import 'dart:isolate';

void main() {
  testIsolate();
}

void isolateEntryPoint(SendPort sendPort) async {
  for (int i = 0; i < 10; i++) {
    await Future.delayed(Duration(seconds: 1));
    sendPort.send("hello from new isolate");
  }
}

void testIsolate() async {
  ReceivePort receivePort = ReceivePort();
  Isolate isolate = await Isolate.spawn(isolateEntryPoint, receivePort.sendPort);
  receivePort.listen(
    (data) {
      print("data from isolate: $data");
    },
  );

  isolate.kill(priority: Isolate.immediate);
  isolate.kill(priority: Isolate.beforeNextEvent);
}
