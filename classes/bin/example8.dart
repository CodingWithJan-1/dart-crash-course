abstract class Shape {
  double area();

  factory Shape(String type, double size) {
    if (type == 'square') {
      return Square(size);
    } else if (type == 'circle') {
      return Circle(size);
    } else {
      throw ArgumentError('Unknown shape type: $type');
    }
  }
}

class Square implements Shape {
  final double side;
  Square(this.side);

  @override
  double area() => side * side;
}

class Circle implements Shape {
  final double radius;
  Circle(this.radius);

  @override
  double area() => 3.14159 * radius * radius;
}

void main() {
  Shape s1 = Shape('square', 4);
  Shape s2 = Shape('circle', 3);

  print(s1.area()); // 16.0
  print(s2.area()); // 28.27431
}