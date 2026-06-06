void main(List<String> args) {
  String? lastName;
  print(lastName ?? 'Foo');
  print(lastName ?? lastName ?? 'Boo');
}