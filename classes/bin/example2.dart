// sub classing

void main(List<String> args) {
  print(Vehicle(4));
  print(Car(4));
  print(Bycicle());
}

class Vehicle {
  final int wheelCount;
  const Vehicle(this.wheelCount);

  @override
  String toString(){

    if (runtimeType == Vehicle) {
      return '$runtimeType has $wheelCount wheels';  
    } else {
      return super.toString();
    }
    
  }
}

class Car extends Vehicle {
  // const Car() : super(4); this is a hardcoded value
  const Car(super.wheelCount); // this is flexible
}

class Bycicle extends Vehicle {
  const Bycicle() : super(4);
}
