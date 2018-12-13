// import 'package:meta/meta.dart';

main(List<String> args) {
  // testFunc1();
  // testNamedFunc1();
  // testPostionFunc1();
  // testDefaultValue1();
  // testArguments(args);
  // testFunOneClassObject1();
  // testVarScope1();
  // testBiBao1();
  // testFunctionEquals1();
  testReturn1();
}

foo() {
}
foo2(){
  return null;
}

void testReturn1() {
  assert(foo() == null);
  assert(foo2() == null);
}

void fun1() {}

class A {
  static void sfun() {}
  void fun2() {}
}

void testFunctionEquals1() {
  var fun3 = fun1;
  assert(fun3 == fun1);
  var a1 = new A();
  var a2 = A();
  assert(a1.fun2 != a2.fun2);

  var fun4 = A.sfun;
  assert(A.sfun == fun4);
}

Function add(num n) {
  return (num n2) => n2 + n;
}

void testBiBao1() {
  var fun1 = add(5);
  assert(fun1(2) == 7);

  assert(add(2)(3) == 5);
}

bool b1 = false;
void testVarScope1() {
  localFun1() {
    bool b2 = true;
    localFun2() {
      bool b3 = false;
      print(b1);
      print(b2);
      print(b3);
    }

    localFun2();
  }

  localFun1();
}

void printInteger(int element) {
  print(element);
}

void testFunOneClassObject1() {
  var list = [1, 2, 3, 4, 5];
  // list.forEach(printInteger);
  // list.forEach((int ele){print(ele);});
  list.forEach((ele) => print(ele));
  // var fun1 = printInteger;
  // list.forEach(fun1);
  var fun2 = (int ele) {
    print(ele);
  };
  list.forEach(fun2);
}

void testArguments(final List<String> args) {
  print(args);
  print(args.length);
  print(args[0]);
}

bool doStuff({Map m = const {'name': 'Bob'}, List l = const [1, 2, 3], bool b}) {
  print(m);
  print(l);
  print(b);
}

void testDefaultValue1() {
  doStuff();
  doStuff(m: {});
  doStuff(l: [2]);
}

say(String name, String msg, [String device = ' ']) {
  print('$name asy $msg, $device');
}

void testPostionFunc1() {
  say('Bob', 'hello', '...');
  say('Bob', 'hello');
}

nameFun1({bool b = false, String name}) {
  print('$b,$name');
}

void testNamedFunc1() {
  nameFun1(b: true, name: 'Bob');
  nameFun1(b: true);
}

var _array1 = [1, 2, 3, 4];

bool isNone(int index) {
  return _array1[index] == null;
}

isNone2(int index) => _array1[index] == null;

void testFunc1() {
  print(isNone(2));
  assert(isNone(2) == false);
  print(isNone2(2));
  assert(isNone2(2) == false);
}
