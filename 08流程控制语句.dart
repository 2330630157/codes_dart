main(List<String> args) {
  // testIf();
  // testFor();
  // testWhile();
  // testJiHeCaoZuo();
  // testSwitch();
  testAssert();
  }
  
  void testAssert() {
    var x = 2;
    assert(x == 3, '条件不成立: $x != 3');
}

void testSwitch() {
  var s = 'OPEN';
  switch (s) {
    case 'OPEN':
      print('opened');
      break;
    case 'CLOSE':
      print('closed');
      break;
    default:
      print('default');
  }
}

class A {
  final int number;
  A(this.number);
  printNumber() {
    print('number is: $number');
  }
}

void testJiHeCaoZuo() {
  var list = [A(0), A(1), A(2), A(3), A(4), A(5), A(6)];
  for (var i = 0; i < list.length; i++) {
    if (i > 4) break;
    A a = list[i];
    a.printNumber();
  }
  print('-----------');
  list.where((a) => a.number <= 4).forEach((a) => a.printNumber());
}

void testWhile() {
  int i = 0;
  while (i < 5) {
    i++;
    // if(i>=3)break;
    if (i == 3) continue;
    print(i);
  }
}

void testFor() {
  var s = StringBuffer('hello world!');
  for (var i = 0; i < 3; i++) {
    s.write('!');
  }
  print(s);
  assert(s == 'hello world!!!!');

  var list = [1, 2, 4, 5];
  list.forEach(print);

  for (int ele in list) {
    print(ele);
  }
}

void testIf() {
  var a = 1;
  if (a == 1) {
    print('true');
  } else {
    print('false');
  }
}
