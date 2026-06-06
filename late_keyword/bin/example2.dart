void main(List<String> args) {
  print('before');
  late String name = provideName();
  print('after');
  print(name);
}

String provideName() {
  return 'Goo';
}