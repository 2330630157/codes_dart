main(List<String> args) {
  // testThrow();
  // testCatch();
  testFinally();
}

void testFinally() {
  try {
    // aException();
    dynamic b = false;
    print(b++);
  } on MyException catch (e, s) {
    print(e);
    // print(s);
    rethrow;
  } on NoSuchMethodError catch (e) {
    print(e);
    print('--------------');
  } finally {
    print('释放资源');
  }
  print('done....');
}

class MyException implements Exception {
  final String msg;
  MyException({this.msg});
  @override
  String toString() {
    return '''MyException:
      $msg
      ''';
  }
}

aException() => throw MyException(msg: '发生了错误！！！');

void testCatch() {
  try {
    // aException();
    dynamic b = false;
    print(b++);
  } on MyException catch (e, s) {
    print(e);
    // print(s);
    rethrow;
  } on NoSuchMethodError catch (e) {
    print(e);
    print('--------------');
  }
}

aMethod() => throw Exception('发生了异常');

void testThrow() {
  // throw FormatException('.....');
  // throw 1;
  // throw true;
  // throw [];
  // throw "发生错误";
  aMethod();
}
