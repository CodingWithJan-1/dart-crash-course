// maps

void main(List<String> args) {
  final info = {"name": 'Foo', "age": 10};

  print(info);
  print(info["name"]);
  print(info["age"]);

  print('------------------------');

  print(info.keys);
  print(info.values);

  print('------------------------');

  info.putIfAbsent('sex', () => 'Male');

  print(info);

  print('------------------------');

  info['sex'] = 'female'; // override the value

  print(info);
}
