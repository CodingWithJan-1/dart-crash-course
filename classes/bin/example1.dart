void main(List<String> args) {
  const person = Person('Jan', 21);
  print('name: ${person.name}, age: ${person.age}');

  const foo = Person.foo(); 
  print('name: ${foo.name}, age: ${foo.age}');

  const bar = Person.bar(60); 
  print('name: ${bar.name}, age: ${bar.age}');
  
  print('-----------------------');

  const baz = Person.other(name: 'Jan 3rd', age: 21);
  print('name: ${baz.name}, age: ${baz.age}');
}

class Person {
  final String name;
  final int age;

  const Person(
    this.name, 
    this.age
 );

    // this a name constructor with 
    // an initializer List
  const Person.foo() 
    : name = 'Foo', 
      age = 22;

  const Person.bar(this.age) 
    : name = 'bar'; 

  const Person.other({
    String? name,
    int? age
  }) : name = name ?? 'no name',
       age = age ?? 999;
} 