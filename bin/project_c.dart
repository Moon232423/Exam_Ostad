import 'dart:io';

void main() {
  triangle();
}

void triangle() {
  print('Enter the base of the triangle: ');
  double? base = double.tryParse(stdin.readLineSync()!);

  print('Enter the height of the triangle: ');
  double? height = double.tryParse(stdin.readLineSync()!);

  if (base != null && height != null) {
    print('The area of the triangle is: ${0.5 * base * height}');
  } else {
    print('Invalid input. Please enter valid numbers.');
  }
}

