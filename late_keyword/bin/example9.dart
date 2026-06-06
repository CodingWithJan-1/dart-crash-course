void main(List<String> args) {
  final johnDoe = Person(name: 'John Doe');
  final janeDoe = Person(name: 'Jane Doe');

  final doeFamily = CorrectImplementationOfFamily(
    members: [
      johnDoe,
      janeDoe
    ]);

  print(doeFamily.membersCount);
}

class Person {
  final String name;

  Person({required this.name});
}

class WrongImplementationOfFamily {
  final Iterable<Person> members;
  late int membersCount; // this is lazely initalize that why theres no
                         // value return and showed

  WrongImplementationOfFamily({required this.members}){
    membersCount = _getMembersCount(); // as you see here you initialize the method on the contructor

    // also avoid using the code above
  }
  // so this function get called (go to line 22)
  int _getMembersCount(){
    print('getting Members Count');
    return members.length;
  }
}


class CorrectImplementationOfFamily {
  final Iterable<Person> members;
  late int membersCount = _getMembersCount(); 

  CorrectImplementationOfFamily({required this.members});

  int _getMembersCount(){
    print('getting Members Count');
    return members.length;
  }
}


// hey if your brain doing mental gymnastics on LATE keyword, TRY CATCH YOU ARE NOT DOING IT RIGHT instead USE nullable values