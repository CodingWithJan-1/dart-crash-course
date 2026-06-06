void main(List<String> args) {
  Person person = Person();

  print(person.age);
  print(person.bla);
  

  // the bla is only truly resolve when it is used.
}

class Person {
  late String bla = someCalculationMethod();
  final int age;

  Person({this.age = 18}){
    print('Constructor is called');
  }

  String someCalculationMethod(){
    print('Method "someCalculationMethod" is called');
    return 'Foo bar';
  }
}