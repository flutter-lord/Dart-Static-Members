import 'dart:math';

class Circular {
  double _radius = 0;

  Circular(this._radius);

  double get radius => _radius;

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
    return '$_radius';
  }

}