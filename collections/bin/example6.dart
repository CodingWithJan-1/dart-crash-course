// mapping list to Iterables

void main(List<String> args) {
  final names = ['Foo', 'Bar', 'Baz', 'Jan'];

  final upperCasedNames = names.map((name) {
    print('map got called');
    return name.toUpperCase();
  });

  for (final name in upperCasedNames.take(3)) {
    print('got the value');
    print(name);
  }
}
