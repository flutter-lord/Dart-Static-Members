import 'CircularClass.dart';

void main() {
  Circular circle1 = Circular(5);
  Circular circle2 = Circular(10);
  Circular circle3 = Circular(20);

  print('The area of circle1 is ${circle1.getArea()}\nThe perimeter of circle1 is ${circle1.getPerimeter()}\n');
  print('The area of circle2 is ${circle2.getArea()}\nThe perimeter of circle2 is ${circle2.getPerimeter()}\n');
  print('The area of circle3 is ${circle3.getArea()}\nThe perimeter of circle3 is ${circle3.getPerimeter()}\n');
  
}