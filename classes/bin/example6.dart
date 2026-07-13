
// setters 
void main(List<String> args) {
  final car = Car();

  car.drive(acceleratingSpeed: 80);

  try {
    car.drive(acceleratingSpeed: -1);  
  } catch (e) {
    print(e);
  }
  
  car.stop();

}

class Car {
  
  int _speed = 0;

  int get speed => _speed;

  set speed (int newSpeed) {
    if (newSpeed < 0) {
      throw Exception("Speed can't be negative");
    }

    _speed = newSpeed;
  }

  void drive ({required int acceleratingSpeed}){
    speed = acceleratingSpeed;
    print('Car is accelerating at $speed kph');
  }

  void stop(){
    speed = 0;
    print('Car stopping...');
    print('Car stopped...');
  }

  // Car(this._speed)
}