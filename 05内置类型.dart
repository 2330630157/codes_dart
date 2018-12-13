main(List<String> args) {
  // testNum();
  // testString();
  // testBool();
  // testList();
  testMap();
}

void testMap() {
  var m1 = {'name': 'zhangsan', 'age': 22}; // Map<String,dynamic>,
  assert(m1 is Map<String, dynamic>);

  var name = m1['name'];
  print(name);
  assert(name == 'zhangsan');

  m1['age'] = 33;
  print(m1.toString());
  assert(m1 == {'name': 'zhangsan', 'age': 33});

  print(m1.length);
  assert(m1.length == 2);

  Map m2 = new Map<int,dynamic>();
  m2[0] = 'Bob';
  m2[1] = 3.14;
  print(m2);
  var name1 = 'Bob';
  assert(m2 == {
    0:'${name1}by',
    1:3.14
  });
}

testList() {
  var list = [1, 2, 3]; // List<int>
  var list2 = const [1, 2];
  assert(list.length == 3);
  assert(list[0] == 1);
  assert(list[list.length - 1] == 3);
}

void testBool() {
  var a = '';
  assert(a.isEmpty);
  print(a.isEmpty);
  var b;
  assert(b == null);
  var c = 0 / 0;
  assert(c.isNaN);
  var d = 0;
  assert(d <= 0);
}

void testString() {
  var s = 'This\'s a String.';
  var s1 = "This\'s a String.";

  var s3 = 'hello';
  assert(s3 == 'he' + 'llo');
  assert('${s3.toUpperCase()} world' == 'HELLO world');

  var s4 = 'hello'
      'world';
  assert(s4 == 'hello\nworld');

  var s5 = '''hello
  world''';
  assert(s5 == 'hello\nworld');

  var s6 = r'hello\nworld';
  print(s6);

  const s7 = 'hello';
  const s8 = 'world';
  const s9 = '$s7 $s8';
  print(s9);
  var s10 = 'hello';
  var s11 = 'world';
  // const s12 = '$s10 $s11';
}

void testNum() {
  int i = 42;
  print(i);
  double d = 3.14;
  print(d);

  var i1 = int.parse('1');
  print(i1);
  assert(i1 == 1);

  var pi = double.parse('3.14');
  print(pi);
  assert(pi == 3.14);

  var iStr = 1.toString();
  print(iStr);
  assert(iStr is String);

  String dStr = 3.1415926.toStringAsFixed(2);
  assert(dStr == 3.14);
  print(dStr);
}
