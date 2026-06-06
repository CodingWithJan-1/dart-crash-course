void main(List<String> args) {
  describe('johnn');
  describe(1);
  describe(true);
  describe({'Foo' : 'bar'});
  describe([1, 2, 3, 4, 5]);
}

void describe<T> (T value) {
  switch (value) {
    case String _:
      print('this is a string');
      break;
    case int _:
      print('this is a int');
      break;
    case bool _:
      print('this is a bool');
      break;
    case Map<String, String> _:
      print('this is a map');
      break;
    default:
    print('this is something else');
    break;
  }
}