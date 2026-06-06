void main(List<String> args) {
  List<String?>? names = [];
  names.add('Foo');
  names.add(null);
  print(names);

  names.add('dustin');

  String? firstName = names.first;
  print(firstName ?? 'No first name');
}