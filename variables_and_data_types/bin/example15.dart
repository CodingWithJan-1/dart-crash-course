void main(List<String> args) {
  const int someInteger = 10;
  print(someInteger);
  const double someDouble = 10.1;
  print(someDouble);
  const String someString = "a string";
  print(someString);
  const bool value = true;
  print(value);
  print('------------------------');

  const List<int> integerList = <int>[1,2,3,4,4];
  print(integerList);
  const Map<String, String> someMap = {'key':'value'};
  print(someMap['key']);
  const Set<int> someSet = {1,2,3,4,5};
  print(someSet.length);
}