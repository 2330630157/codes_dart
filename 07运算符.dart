main(List<String> args) {
  // testSuanShu();
  // testDiZengDiJian();
  // testXiangDengHeGuanXi();
  // testLeiXing();
  // testFuZhi();
  // testLuoJi();
  // testTiaoJian();
  // testJiLian();
  testQiTa();
}

class A {
  String b;
}

void testQiTa() {
  var a = A();
  a.b ='Bob';
  var bb = a?.b;
  print(bb);
  a = null;
  print(a?.b);
  // print(a.b); // error.
}

class JiLian {
  String name;

  JiLian(this.name);

  void printName() {
    print(this.name);
  }

  void say() {
    print('hello $name');
  }

  @override
  String toString() {
    return this.name;
  }
}

void testJiLian() {
  var j = JiLian('Bob')
    ..name = 'LiSi'
    ..say()
    ..printName();

  // j.say();
  print(j);
}

void testTiaoJian() {
  var str1 = 1 == 1 ? 'true' : 'false';
  assert(str1 == 'true');
  var name1 = "Bob";
  var str2 = name1 ?? "LiSi";
  assert(str2 == 'Bob');

  assert(playerName(name1) == 'Bob');
  assert(playerName2(name1) == 'Bob');
}

String playerName(String name) {
  if (name != null) {
    return name;
  } else {
    return "LiSi";
  }
}

playerName2(var name) => name != null ? name : "LiSi";

void testLuoJi() {
  if ((1 == (2 - 1)) && (3 <= 5)) {
    print('true');
  }
}

void testFuZhi() {
  var v1 = 'Bob';
  v1 ??= 'ZhangSan';
  print(v1);
  assert(v1 == 'Bob');
  var v2;
  v2 ??= 'LiSi';
  // if(v2 ==null){
  //   v2 = 'LiSi';
  // }
  print(v2);
  assert(v2 == 'LiSi');

  // 复合赋值操作符
  var a = 3;
  a *= 2;
  // a = a*2;
  print(a);
  assert(a == 6);
}

class Person {
  final String name;
  Person(this.name);
}

void testLeiXing() {
  var p = Person('Bob');
  // p = null;
  if (p is Person) {
    print(p.name);
  }
  print((p as Person).name);
}

void testXiangDengHeGuanXi() {
  assert(2 == 2);
  assert(2 != 3);
  assert(3 > 2);
  assert(2 < 3);
  assert(3 >= 3);
  assert(2 <= 3);
}

void testDiZengDiJian() {
  var a, b;

  a = 0;
  b = ++a; // Increment a before b gets its value.
  assert(a == b); // 1 == 1

  a = 0;
  b = a++; // Increment a AFTER b gets its value.
  assert(a != b); // 1 != 0

  a = 0;
  b = --a; // Decrement a before b gets its value.
  assert(a == b); // -1 == -1

  a = 0;
  b = a--; // Decrement a AFTER b gets its value.
  assert(a != b); // -1 != 0
}

/*
+	加法
-	减法
-expr	一元减号，也称为否定(与表达式的符号相反)
*	乘法
/	除法
~/	取模运算
%	取余运算
*/
void testSuanShu() {
  int i1 = 1 + 2;
  print(i1);
  int i2 = 8 - 6;
  print(i2);
  int i3 = -2;
  print(i3);
  int i4 = 2 * 3;
  print(i4);
  double i5 = 3 / 2;
  print(i5);
  double i6 = 8 / 6;
  print(i6);
  int i7 = 8 ~/ 3;
  print(i7);
  int i8 = 8 % 3;
  print(i8);
}
