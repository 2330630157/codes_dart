

/// A domesticated South American camelid (Lama glama).
///
/// Andean cultures have used llamas as meat and pack
/// animals since pre-Hispanic times.
class A {
  // FIXME 单行注释
  test() {
    // TODO 但行注释
    print("a.test");
  }
}
 /**
   * 
   */
class B extends A {
 
  ///
  /// [A]
  /// test 方法
  @override
  test() {
    print('b.test');
  }
  // @override
  test2(){
  }
}

test1() {}

@deprecated
test2() {}


main(List<String> args) {
  test1();
  test2();
  var a =B ();
  a.test();
}