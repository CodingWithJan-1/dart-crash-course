// enums in dart can also create instances from a strings, numbers, and more. They can also have methods and properties.

void main(List<String> args) {
  describe(animalType(fromStr: 'cat'));
  describe(animalType(fromStr: 'dog'));
  describe(animalType(fromStr: 'rabbit'));
  describe(animalType(fromStr: 'mouse'));
}

enum AnimalType { rabbit, cat, dog }

void describe(AnimalType? animalType) {
  switch (animalType) {
    case AnimalType.rabbit:
      print('this is a rabbit');
      break;
    case AnimalType.cat:
      print('this is a cat');
      break;
    case AnimalType.dog:
      print('this is a dog');
      break;
    default:
      print('this is unknown');
  }
}

AnimalType? animalType({required String fromStr}) {
  try {
    return AnimalType.values.firstWhere((element) => element.name == fromStr);
  } catch (e) {
    return null;
  }
}
