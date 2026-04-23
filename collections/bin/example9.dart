import 'package:collection/collection.dart';

void main(List<String> args) {
  // even tho the list is final the value itself is still mutsable

  final personInfo = Person(
    name: 'Jan',
    siblings: [Person(name: 'jezter')],
  );

  personInfo._siblings?.add(Person(name: 'jezter'));

  try {
    personInfo.siblings?.add(Person(name: "impostor"));
  } catch (e) {
    print(e);
  }
}

class Person {
  final String name;
  final List<Person>? _siblings;
  //   final int age;

  // creates read only list view
  UnmodifiableListView<Person>? get siblings =>
      _siblings == null ? null : UnmodifiableListView(_siblings);

  const Person({required this.name, List<Person>? siblings})
    : _siblings = siblings;
}
