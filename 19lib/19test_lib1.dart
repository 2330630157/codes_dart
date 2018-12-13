library libname;

foo(){
  print('foo...');
}

test(){
  print('test...');
}

Future<int> testLazy() async{
  await Future.delayed(Duration(milliseconds: 3000));
  return 1;
}