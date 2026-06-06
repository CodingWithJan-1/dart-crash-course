void main(List<String> args) {

  Person person = Person();
  person.desc = 'Hello 1';
  print(person.desc);
  person.desc = 'hello 2';
  print(person.desc);

 Dog dog = Dog();

 dog.desc = 'woof 1';
 print(dog.desc);

 try {
   dog.desc = 'woof 2';
   print(dog.desc);
 } catch (e) {
   print(e);
 }

//  with late keyword the initialization of variables can only be once
  
}

class Person {
  late String desc;
}

class Dog {
  late final String desc;
}