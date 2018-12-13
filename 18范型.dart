main(List<String> args) {
  // testWhy();
  // testCache();
  // testType();
  // testXianZhi();
  testFunction();
}

T first<T>(List<T> list) {
  if (list == null || list.isEmpty) return null;
  T t = list[0];
  return t;
}

void testFunction() {
  const list = [1, 2, 3, 4, 5]; // List<int>
  int i = first(list);
  print(i);
}

class A {}

class B extends A {}

class C<T extends A> {}

void testXianZhi() {
  var c1 = C<A>();
  var c2 = C<B>();
}

void testType() {
  dynamic map = Map<String, int>();
  map['a'] = 1;
  map['b'] = 2;
  map['c'] = 3;
  print(map.runtimeType);
  assert(map is Map<String, int>);
}

class Cache<T> {
  Map<String, T> _cache = Map<String, T>();
  Cache._internal();
  static Cache _self;
  factory Cache.getInstance() {
    if (_self == null) _self = Cache._internal();
    return _self;
  }
  T get(String key) => _cache[key];
  set(String key, T t) => _cache.putIfAbsent(key, () => t);
}

void testCache() {
  var c1 = Cache.getInstance();
  var v1 = c1
    ..set('key1', "hello world")
    ..get('key1');
  print(v1);

  final v2 = Cache.getInstance().get('key1');
  print(v2);
  assert(v1 == v2);
}

void testWhy() {
  var list = <String>["a", 'b', 'c'];
  var list1 = List<String>();
  list1 = ['1', '2', 'b'];
  // list.add(1);
}
