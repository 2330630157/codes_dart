import 'dart:math';

main(List<String> args) {
  // testShiLiFangFa();
  // testGetterSetter();
  testChouXiangFangFa();
}

abstract class Animal {
  String name;
  eat();
}

class Dog extends Animal {
  final int age;
  final String name;

  Dog(this.age, this.name) : assert(age >= 1);

  @override
  eat() {
    print('${name}吃肉..');
  }
}

void testChouXiangFangFa() {
  var d = Dog(1, '小黑');
  d.eat();
}

class Rectangle {
  num top, width, height, left;

  Rectangle(this.top, this.left, this.width, this.height);

  num get right => left + width;
  set right(value) => left = value - width;
  num get bottom => top + height;
  set bottom(value) => top = value - height;

  @override
  String toString() {
    return {'top': top, 'left': left, 'width': width, 'height': height}.toString();
  }
}

void testGetterSetter() {
  var r = Rectangle(20, 20, 100, 100);
  print(r);
  r.right = 300;
  print(r);
}

class Point {
  num x, y;
  Point(this.x, this.y);
  num distanceTo(Point p) {
    var dx = x - p.x;
    var dy = y - p.y;
    return sqrt(dx * dx + dy * dy);
  }
}

void testShiLiFangFa() {
  var p1 = Point(2, 3);
  num dt = p1.distanceTo(Point(3, 4));
  print(dt);
}
