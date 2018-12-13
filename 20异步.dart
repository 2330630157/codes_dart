import 'dart:math';

main(List<String> args) {
  // testFuture();
  // testError();
  // testFutureApi();
  // testStream();
  testStreamApi();
}

void onData(i) {
  print(i);
}
void testStreamApi() {
  Stream s = Stream.fromFutures(test5());
  // s.listen((i)=>print(i));
  s.listen(print);
}

Future<int> test4(int i) async {
  await Future.delayed(Duration(milliseconds: i * 1000));
  return i;
}

Iterable<Future<int>> test5() {
  var list = <Future<int>>[];
  for (var i = 0; i < 5; i++) {
    list.add(test4(i));
  }
  return list;
}

void testStream() async {
  Stream s = Stream.fromFutures(test5());
  await for (var i in s) {
    var f = i as int;
    print(f);
  }
}

void testFutureApi() {
  Future<String> fs = test2();
  fs.then((s) => print(s));
  print('---------');
  test2().then(print);
}

Future test3() async {
  print('test3 ....');
  throw FormatException('a error..');
}

Future testError() async {
  await test1();
  try {
    await test3();
  } on FormatException catch (e, s) {
    print(e);
    print('----------');
    print(s);
  }
}

class A {}

Future<A> testFuture() async {
  await test1();
  String result = await test2();
  print(result);
  assert(result == 'hello futrue!');
  return A();
}

test1() async {
  print('before test1.');
  await Future.delayed(Duration(milliseconds: 3000));
  print('after test1.');
}

Future<String> test2() async {
  print('before test2.');
  await Future.delayed(Duration(milliseconds: 3000));
  print('after test2.');
  return "hello futrue!";
}
