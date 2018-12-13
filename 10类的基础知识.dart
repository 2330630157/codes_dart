main(List<String> args) {
  // testChengYuan();
  // testGouZaoHanShu();
  testRuntimeType();
}

void testRuntimeType() {
  var p2 = new Point.fromJson({'x': 3, 'y': 4});
  print('p2 runtime type is: ${p2.runtimeType}');
  var p3 = PointConst(2, 5);
  print('p3 runtime type is: ${p3.runtimeType}');
}

void testGouZaoHanShu() {
  var p2 = new Point.fromJson({'x': 3, 'y': 4});
  print(p2.toJson().toString());
  const p3 = {'startPoint': PointConst(1, 2), 'endPoint': PointConst(3, 5)};
  print(p3);
}

class PointConst {
  final num x;
  final num y;
  const PointConst(num x, num y)
      : this.x = x,
        this.y = y;
  num distanceTo(Point p) {
    return 3.14;
  }

  Map toJson() {
    return {'x': x, 'y': y};
  }

  @override
  String toString() {
    return toJson().toString();
  }
}

class Point {
  num x;
  num y;
  Point(this.x, this.y);
  num distanceTo(Point p) {
    return 3.14;
  }

  Point.fromJson(Map json)
      : x = json['x'],
        y = json['y'];

  Map toJson() {
    return {'x': x, 'y': y};
  }
}

void testChengYuan() {
  var p = Point(2, 2.0);
  p.y = 3;
  print(p.y);
  assert(p.y == 3);
  double x = p.distanceTo(Point(5, 5.5));
  print(x);
  assert(x == 3.14);
  p = null;
  p?.x = 6.0;
  print(p?.x);
  assert(p?.x == null);
}
