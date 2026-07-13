// getters in classes

void main(List<String> args) {
  final person1 =Person(firstName: 'Jan 3rd', lastName: 'Bitoon');

  print(person1.fullName);
}

class Person {
  final String firstName;
  final String lastName;

  // take not that when doing heavy calculation must use
  // the getter so that it wont be heavy if done using 
  // constructor initializer
  
   String get fullName => '$firstName $lastName';

  // by using constructor initializer
  const Person({
    required this.firstName, 
    required this.lastName
  });
}

/*
class Person {
  final String firstName;
  final String lastName;

  final String fullName;

  // by using constructor initializer
  const Person({
    required this.firstName, 
    required this.lastName
  }) : fullName = '$firstName $lastName';
}
*/