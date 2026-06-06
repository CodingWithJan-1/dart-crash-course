void main(List<String> args) {
  final woof = Animal(name: 'Woof', type: AnimalType.dog);
  final meow = Animal(name: 'Meow', type: AnimalType.cat);
  final chirp = Animal(name: 'chirp', type: AnimalType.bird);

  if (woof.type == AnimalType.dog) {
  } else if (woof.type == AnimalType.cat) {
  } else if (woof.type == AnimalType.bird) {}

  switch (woof.type) {
    case AnimalType.cat:
      // TODO: Handle this case.
      throw UnimplementedError();
    case AnimalType.dog:
      // TODO: Handle this case.
      throw UnimplementedError();
    case AnimalType.bird:
      // TODO: Handle this case.
      throw UnimplementedError();
    case AnimalType.rabbit:
      // TODO: Handle this case.
      throw UnimplementedError();
  }
}

enum AnimalType { cat, dog, bird, rabbit }

class Animal {
  final String name;
  final AnimalType type;

  const Animal({required this.name, required this.type});
}
