
void main(List<String> args) {
  Person person = Person();
  print(person.fullName);
  print(person.firstName);
  print(person.lastName);
  
}


class Person {

  late String fullName = _getFullName();
  late String firstName = fullName.split(' ').first;
  late String lastName = fullName.split(' ').last;

  String _getFullName (){
    print('method is called');
    return 'Jan bitoon';
  }
}