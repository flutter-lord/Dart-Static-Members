import 'dart:math';

class Sphere {
  double _radius = 0;

  Sphere(double _radius);

  double get volume => pi * pow(_radius, 2);
  double get surfaceArea => 2 * pi * _radius;

  @override
  String toString() {
    // TODO: implement toString
    return 'The  vaue of radius is $_radius';
  }


}