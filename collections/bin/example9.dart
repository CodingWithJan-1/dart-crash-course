// unmodifiable list view
import 'package:collection/collection.dart';

void main(List<String> args) {
  final personFriends = Person(
    name: "Jan 3rd",
    friends: [Person(name: 'Chad Entero')],
  );

  try {
    personFriends.friends?.add(Person(name: 'someOthers'));
  } catch (e) {
    print(e);
  }

  for (final friend in personFriends._friends!) {
    if (friend.name.isNotEmpty) {
      print(friend.name);
    }
  }
}

class Person {
  final String name;
  final List<Person>? _friends;

  Person({required this.name, List<Person>? friends}) : _friends = friends;

  UnmodifiableListView<Person>? get friends =>
      _friends == null ? null : UnmodifiableListView(_friends);
}
