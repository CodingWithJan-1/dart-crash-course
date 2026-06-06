// hashcode and equality

void main(List<String> args) {
  final person = Person(name: 'Foo', age: 10);
  final dog = Dog(name: 'Foo', age: 10);

  print(person.hashCode);
  print(dog.hashCode);

  // print(person1.hashCode);
  // print(person2.hashCode);

  final beings = {person, dog};

  print(beings);
}

class Person {
  final String name;
  final int age;

  Person({required this.name, required this.age});

  @override
  String toString() => 'Person: $name, $age';

  @override
  int get hashCode => Object.hash(name, age);

  @override
  bool operator ==(Object other) =>
      identical(this, other) || // 1. same object in memory? instant true
      other is Person && // 2. is it even a Person?
          name == other.name && // 3. same name?
          age == other.age; // 4. same age?
}

class Dog {
  final String name;
  final int age;

  Dog({required this.name, required this.age});

  @override
  String toString() => 'Dog: $name, $age';

  @override
  int get hashCode => Object.hash(name, age);

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is Dog && name == other.name && age == other.age;
}
