main(List<String> args) {
  var c1 = C();
  c1.name = 'Bob';
  c1.testA();
  c1.age =22;
  c1.testB();
  c1.cc = 22.2;
  c1.testC();

}

abstract class A{
  String name;
  testA(){
    print('a.testA, $name');
  }
}
class B {
  int age;
  testB(){
    print('b.testB, $age');
  }
}
class C extends B with A{
  double cc;
  testC(){
    print('c.testC, $cc');
  }
}