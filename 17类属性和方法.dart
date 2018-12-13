import 'dart:math';

main(List<String> args) {
  print(A.ip);
  var p1 = Point(1, 2);
  var p2 = Point(2, 3);
  var n = Point.distanceTo(p1, p2);
  print(n);
  var n2 = distanceTo(p1, p2);
  assert(n == n2);
}

class A {
  static const String ip = '127.0.0.1';
}

class Point {
  final num x, y;

  Point(this.x, this.y);

  static num distanceTo(Point p1, Point p2) {
    num xx = p1.x - p2.x;
    num yy = p1.y - p2.y;
    return sqrt(xx * xx + yy * yy);
  }
}

num distanceTo(Point p1, Point p2) {
  num xx = p1.x - p2.x;
  num yy = p1.y - p2.y;
  return sqrt(xx * xx + yy * yy);
}
