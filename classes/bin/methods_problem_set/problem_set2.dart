

/*
    Create an abstract-ish base class Shape with:

    A method area() that returns 0 by default
    A method describe() that prints 'This shape has an area of ${area()}'

    Then create two subclasses:

    Square (takes side) — overrides area() to return side * side
    Triangle (takes base and height) — overrides area() to return 0.5 * base * height
*/

void main(List<String> args) {
  List<Shape> shapes = [
    Square(side: 4), 
    Triangle(base: 5, height: 10)];

  for (final shape in shapes) {
    shape.describe();
  }
}

class Shape {

  num area(){
    return 0;
  }

  void describe() => print('$runtimeType: This shape has an area of ${area()}');
}

class Square extends Shape {
  final int side;

  Square({required this.side});

  @override
  int area () {
    return side * side; 
  }
}

class Triangle extends Shape {

  final int base;
  final int height;

  Triangle({required this.base, required this.height});

  @override
  double area () {
    return 0.5 * base * height; 
  }
}

