import 'dart:io';

void main() {
  triangle();
}
void triangle() {
  print('Enter the base : ');
  double? base = double.tryParse(stdin.readLineSync()!);
  print('Enter the height : ');
    double? height = double.tryParse(stdin.readLineSync()!);

    if (base != null && height != null)
    {
    print('The area of the triangle is: ${0.5 * base * height}');
  }     else
  {
    print(' Please enter valid numbers.');
  }
}

