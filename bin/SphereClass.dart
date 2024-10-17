import 'dart:math';

class Sphere {
  double _radius = 0;

  Sphere(this._radius);

  set (double radius) => _radius = radius;

  double get area => pi * pow(_radius, 2);
  double get volume => 2 * pi * _radius;

  @override
  String toString() {
    // TODO: implement toString
    return '$_radius';
  }
}