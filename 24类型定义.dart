main(List<String> args) {
  // testNoTypedef();
  // testTypedef();
  testFanXing();
}

typedef Compare2<T> = int Function(T t1, T t2);
int sort2(String a, String b) => 0;
void testFanXing() {
  assert(sort is Compare2);
  // assert(sort2 is Compare2); 错误的写法
  assert(sort2 is Compare2<String>);
}

///
/// typedef Compare = int Function(Object a, Object b);
///
typedef Compare = int Function(Object a, Object b);

class SortedCollection2 {
  Compare compare;
  SortedCollection2(this.compare);
}

int sort(Object a, Object b) => 0;

void testTypedef() {
  var sc = SortedCollection2(sort);
  assert(sc.compare is Function);
  assert(sc.compare is Compare);
}

void testNoTypedef() {
  int sort(Object a, Object b) {
    return 0;
  }

  var sc = SortedCollection(sort);
  assert(sc.compare is Function);
}

class SortedCollection {
  Function compare;
  SortedCollection(int compare(Object a, Object b)) {
    this.compare = compare;
  }
}
