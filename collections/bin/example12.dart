// spread operator with collections

void main(List<String> args) {
  addToArrayWrong();
  print('--------------------');
  addToArrayRight();
  print('--------------------');
  addToDictionWrong();
  print('--------------------');
  addToDictionRight();
}

void addToArrayWrong() {
  final names1 = ['Foo 1', 'Bar 1', 'Baz 1'];
  final names2 = ['Foo 2', 'Bar 2', 'Baz 2'];

  final allNamesWrong = names1;

  allNamesWrong.addAll(names2);

  print(names1);
  print(names2);

  print(allNamesWrong);
}

void addToArrayRight() {
  final names1 = ['Foo 1', 'Bar 1', 'Baz 1'];
  final names2 = ['Foo 2', 'Bar 2', 'Baz 2'];

  final allNamesRight = [...names1, ...names2];

  print(names1);
  print(names2);

  print(allNamesRight);

  final anotherWay = [...names1]
    ..addAll(names2); // the .. is a cascade operator
  // Instead of returning what the method returns (void),
  //it returns the object itself
  print(anotherWay);
}

void addToDictionWrong() {
  const info = {'name': 'Jeb', 'age': 21, 'height': 1.77};

  try {
    info.addAll({'wieght': '56kg'});
  } catch (e) {
    print(e);
  }
  print(info);
}

void addToDictionRight() {
  const info = {'name': 'Jeb', 'age': 21, 'height': 1.77};

  final result = {...info}..addAll({'weight': '55kg'});

  print(result);
}
