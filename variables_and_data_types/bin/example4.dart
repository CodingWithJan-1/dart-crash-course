void main(List<String> args) {
  String name = 'Foo';
  var address = 'St 1';

  name = address;
  print(name);

  // invalid code 
  // int age = 2;
  // age = name;
}