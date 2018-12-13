import 'dart:math';

main(List<String> args) {
  // testGouZaoHanShu1();
  // testMingMing();
  // testCallSuperConstruct();
  // testChuShiHuaLieBiao();
  // testChongDingXiang();
  // testImmutableGouZaoHanShu();
  testFactory();
}

class Logger {
  String loggerName;
  bool mute = false;

  static final Map<String, Logger> _cached = Map<String, Logger>();

  factory Logger(String loggerName) {
    if (_cached.containsKey(loggerName)) {
      return _cached[loggerName];
    } else {
      final logger = Logger._internal(loggerName);
      _cached[loggerName] = logger;
      return logger;
    }
  }

  // Logger._internal(String loggerName) : loggerName = loggerName;
  Logger._internal(this.loggerName);

  void log(String msg) {
    if (!mute) print('''$loggerName: 
    $msg''');
  }
}

void testFactory() {
  var l1 = Logger('UI');
  var l2 = new Logger('CMD');
  var l3 = new Logger('UI');
  l1.log('ui...');
  l2.log('cmd...');
  l3.log('ui2...');
  assert(l1 != l2);
  // assert(l1 == l2);
  assert(l1 == l3);
}

class ImmutablePoint {
  final num x, y;
  const ImmutablePoint(this.x, this.y);
  @override
  String toString() {
    return '$x,$y';
  }
}

void testImmutableGouZaoHanShu() {
  const ip = ImmutablePoint(3, 5);
  // ip.x = 3; // 错误的示例
  print(ip);
}

class Point6 {
  num x, y;

  // Point6(this.x,this.y);
  Point6(num x, num y)
      : x = x,
        y = y;

  Point6.alongAisX(num x) : this(x, 0);

  @override
  String toString() {
    return '$x,$y';
  }
}

void testChongDingXiang() {
  var p6 = Point6(2, 3);
  var p7 = Point6.alongAisX(6);
  print(p6);
  print(p7);
}

class Point5 {
  num x, y, distanceFromOrigin;
  Point5(x, y)
      : x = x,
        y = y,
        assert(x != null),
        assert(y != null && y != 0),
        distanceFromOrigin = sqrt(x * x + y * y);

  @override
  String toString() {
    return '$x,$y,$distanceFromOrigin';
  }
}

void testChuShiHuaLieBiao() {
  var p5 = Point5(3, 2);
  print(p5);
}

class Person {
  String firstName;
  Person.fromJson(Map data) {
    this.firstName ??= data['firstName'];
    print('in Person');
  }
}

class Employee extends Person {
  Employee.fromJson(Map data)
      : super.fromJson(data.map((k, v) => MapEntry(k, v.toString().toUpperCase()))) {
    print('in Employee');
  }
}

void testCallSuperConstruct() {
  var p1 = Person.fromJson({'firstName': 'Felix'});
  var e1 = Employee.fromJson({'firstName': 'Bob'});
  print(p1.firstName);
  print(e1.firstName);
}

class Point4 {
  num x, y;
  Point4.origin() {
    this.x = 0;
    this.y = 0;
  }
  @override
  String toString() {
    return '$x,$y';
  }
}

void testMingMing() {
  var p4 = new Point4.origin();
  print(p4);
}

class Point3 {
  num x, y;
  Point3() : super();
  @override
  String toString() {
    return '$x,$y';
  }
}

class Point {
  num x, y;
  Point(num x, num y) {
    this.x = x;
    this.y = y;
  }
  @override
  String toString() {
    return '$x,$y';
  }
}

class Point2 {
  num x, y;
  Point2(this.x, this.y);
  @override
  String toString() {
    return '$x,$y';
  }
}

void testGouZaoHanShu1() {
  var p = Point(1, 2);
  var p2 = Point2(2, 3);
  print(p);
  print(p2);
  var p3 = Point3();
  p3.x = 5;
  p3.y = 6;
  print(p3);
}
