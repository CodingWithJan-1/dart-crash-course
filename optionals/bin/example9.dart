void main(List<String> args) {
  String? lastName;

  void changeName() {
    lastName = 'Bar';
  }

  lastName = 'Foo';
  
  changeName();

  

  if (lastName?.contains('Bar') ?? false) {
    print('LastName contains Bar');
  }
}