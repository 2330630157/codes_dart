main(List<String> args) {
  testChongXieLeiChengYuan();
}

void testChongXieLeiChengYuan() {
  var v = Vector(1, 2);
  var v1 = v + Vector(2, 3);
  print(v1);
  assert(v1 == Vector(3, 5));

  dynamic v2 = v;
  var result = v2.test();
  print(result);

  assert(v2 != 7);
}

class Vector extends Object {
  final int x, y;
  Vector(this.x, this.y);

  Vector operator +(Vector v) => Vector(x + v.x, y + v.y);
  Vector operator -(Vector v) => Vector(x - v.x, y - v.y);

  @override
  bool operator ==(dynamic v) {
    if (v is Vector) {
      final v1 = v as Vector;
      return v1.x == x && v1.y == y;
    } else {
      return false;
    }
  }

  @override
  int get hashCode => super.hashCode;

  @override
  String toString() {
    return {'x': x, 'y': y}.toString();
  }

  @override
  noSuchMethod(Invocation invocation) {
    print('noSuchMethod');
    return '没有这个方法...';
  }
}
