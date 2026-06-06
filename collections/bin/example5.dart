// Iterables
// the natures of Iterables is they are
// lazely evaulated
void main(List<String> args) {
  final iterable = Iterable.generate(10, (i) => getNames(i));
  // iterable

  for (final names in iterable.take(2)) {
    print(names);
  }
}

String getNames(int i) {
  print('Getnames called');
  return 'Jeb #$i';
}
