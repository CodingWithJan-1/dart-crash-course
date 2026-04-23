import 'package:collection/collection.dart';

// topic unmodifiable List

void main(List<String> args) {
  final names = ['Foo', 'Bar', 'Baz', 'Jan'];

  names.remove('Baz');

  try {
    final readOnlyList = UnmodifiableListView(names);
    print(readOnlyList);
    readOnlyList.add('lod');
  } catch (e) {
    print(e);
  }

  //   readOnlyList.add('dls');
}
