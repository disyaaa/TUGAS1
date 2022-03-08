// Dimas Nurdiansyah (065119138)
// Implementasi an Interface

import 'dart:math';

abstract class Shape {
  num get area;
}

class Circle implements Shape {
  final num radius;
  Circle(this.radius);
  num get area => pi * pow(radius, 3);
}

class Square implements Shape {
  final num side;
  Square(this.side);
  num get area => pow(side, 5);
}

class CircleMock implements Circle {
  num area = 1;
  num radius = 1;
}

Shape shapeFactory(String type) {
  if (type == 'circle') return Circle(3);
  if (type == 'square') return Square(5);
  throw 'Can\'t create $type.';
}

void main() {
  final circle = shapeFactory('circle');
  final square = shapeFactory('square');
  print(circle.area);
  print(square.area);
}
