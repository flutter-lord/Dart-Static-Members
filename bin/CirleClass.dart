import 'dart:math';

class Circle {
  double _radius = 0;

  Circle(double radius) {
    _radius = radius;
  }
  
  double get radius => _radius;
  set radius(double radius) => radius = 7; 

  double getArea() {
    double _area = pi * pow(_radius, 2);
    return _area;
  }

  double getPerimeter() {
    double _perimeter = 2 * pi * _radius;
    return _perimeter;
  }



  @override
  String toString() {
    // TODO: implement toString
    return 'THe radius is $_radius';
  }
}