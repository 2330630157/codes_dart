// import 'dart:';

// import '19test_lib1.dart';
// import '19test_lib1.dart' as f;
// import '19test_lib1.dart'  as test1 show test;
// import '19lib/19test_lib1.dart' hide test;
import '19lib/19test_lib1.dart' deferred as f;

main(List<String> args) {
  // foo();
  // f.foo();
  // test1.test();
  // foo();

  testAsync();
}

Future<Null> testAsync() async {
  print('start..');
  await f.loadLibrary();
  print('loaded');
  int x = await f.testLazy();
  print(x);
  // return null;
}
