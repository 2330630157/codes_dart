main(List<String> args) {

  var name ='Bob';
  // name = 33;
  dynamic name2 = 'Bob';
  name2 = 33;

  String name4 = 'Bob';

  name4 = 'Wangwu';

  int lineCount;
  assert(lineCount == null);
  
  final name5 = 'Bob';
  // name5 = 'zhang san';
  final  String name6 = 'lisi';

  const bar = 3.14;
  const double result1 = bar * 5;
  print(result1);

  var foo = const[];
  final foo1 = const[];
  const foo2 = const[];

  foo = [1,2,3];
  // foo1 = [42];
  print(foo);
}