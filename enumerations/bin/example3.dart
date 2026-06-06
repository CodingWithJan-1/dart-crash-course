// switch enums

void main(List<String> args) {
  final whiskers = AnimalType.cat;

  switch (whiskers) {
    case AnimalType.cat:
      print('This is a cat');
      break;
    default:
      print('this is not a cat');
  }

  // note here is that you have to avoid future cases unless you know that what exactly u need
}

enum AnimalType { cat, dog, rabbit }
