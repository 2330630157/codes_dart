main(List<String> args) {
  // testYinShiJieKou();
  testJiCheng();
}

class Super {
  turnOn() {
    print('super.turnOn...');
  }
}

class Sub extends Super {
  @override
  turnOn() {
    print('pre...');
    super.turnOn();
    print('sub.turnOn');
  }
}

void testJiCheng() {
  var s1 = Super();
  s1.turnOn();
  print('----------');
  var s2 = Sub();
  s2.turnOn();
}

class Person {
  String _name;
  Person(this._name);
  String great(String who) {
    return 'hi $who, I am $_name';
  }
}

class Imposer implements Person {
  @override
  get _name => '';

  @override
  String great(String who) {
    return 'hi $who, Dow you kown who I am? $_name';
  }

  @override
  void set _name(String __name) {
    this._name = __name;
  }
}

sayGreat(Person p) => p.great('Bob');

void testYinShiJieKou() {
  var s1 = sayGreat(Person('ZhangSan'));
  print(s1);
  var s2 = sayGreat(Imposer());
  print(s2);
}

abstract class A {
  void testFun();
}
