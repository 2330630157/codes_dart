main(List<String> args) {
  // testTongBu();
  // testYiBuSteam();
  // testYiBuSteam2();

  final list =  naturalsDownFrom(10);
  print(list);
}
Iterable<int> naturalsDownFrom(int n) sync* {
  if (n > 0) {
    yield n;
    yield* naturalsDownFrom(n - 1);
  }
}

void testYiBuSteam2() {
  print('异步 start..');
  final stream = test2(5);
  print(stream);
  stream.listen((item) => print(item));
  print('异步 end..');
}

Stream<int> test2(int n) async* {
  for (int i = 0; i < n; i++) {
    await Future.delayed(Duration(milliseconds: 1000));
    yield i;
  }
}

void testYiBuSteam() async {
  print('异步 start..');
  final stream = test2(5);
  print(stream);
  await for (var item in stream) {
    print(item);
  }
  print('异步 end..');
}

Iterable<int> test1(int n) sync* {
  for (int i = 0; i < n; i++) {
    yield i;
  }
}

void testTongBu() {
  print('同步 start..');
  final itr = test1(5);
  print(itr);
  print('同步 end..');
}
