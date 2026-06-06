void main (List<String> args) {
    const names = ['Foo','Bar','Baz','John Doe'];

    for (var name in names) {
      if (name.startsWith('B')) {
        continue;
      } else {
        print(name);
      }
    }

    print('------------------------');

    for (var name in names) {
      if (name.startsWith('B')) {
        continue;
      }
      print(name);
    }

    print('------------------------');

    for (var num in Iterable.generate(20)) {
      print(num);
    }
}