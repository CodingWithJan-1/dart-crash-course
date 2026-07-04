void main(List<String> args) {
  AnimalType.cat.jump();
  AnimalType.dog.jump();
  AnimalType.chicken.jump();
  try {
    AnimalType.snake.jump();
  } catch (e) {
    print("cant't jump!");
  }
}

mixin CanJump {
  int get feetCount;
  void jump() {
    if (feetCount < 1) {
      throw Exception("You can't jump");
    } else {
      print('jumping');
    }
  }
}

enum AnimalType with CanJump {
  cat(feetCount: 4),
  dog(feetCount: 4),
  chicken(feetCount: 2),
  snake(feetCount: 0);

  @override
  final int feetCount;
  const AnimalType({required this.feetCount});
}

/*

    this feature is not yet on the stable release 
    and need to explicitly enable.
    
enum AnimalType (
  final int feetCount,
) with CanJump {
  cat(4),
  dog(4),
  chicken(2),
  snake(0),
}
*/
