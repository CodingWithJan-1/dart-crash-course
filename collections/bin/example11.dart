// synchronous generators

void main(List<String> args) {
  for (final name in getNames()) {
    print(name);

    // if (name == 'Jeb') {
    //   print('Found $name');
    //   break;
    // }
  }
}

Iterable<String> getNames() sync* {
  print('producing Jan');
  yield 'Jeb';
  print('producing Jin');
  yield 'Jin';
  print('producing Jen');
  yield 'Jen';
  print('producing Other names');
  yield* getOtherNames();
}

Iterable<String> getOtherNames() sync* {
  print('producing Jon');
  yield 'Jon';
  print('producing Jun');
  yield 'Jun';
  print('producing Jeb');
  yield 'Jeb';
}
