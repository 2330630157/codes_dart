main(List<String> args) {
  var a = new A("Bob");
  a.name = 'ZhangSan';
  a.test();
  // var result = a('WangWu', 'MaLiu');
  // print(result);
  print(a());
}

class A {
  String name;

  A(this.name);

  test() {
    print(name);
  }

  // call(String a, String b) => ''' $a,
  // $b !!!''';
  call()=>true;
}
