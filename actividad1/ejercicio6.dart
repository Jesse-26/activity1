//Se tiene un horno en casa con temperaturas en grados Celsius centígrado), requiere
//transformar la temperatura de 70°C a grados Fahrenheit. Para ello tenga en cuenta la
//siguiente fórmula.
//F = (C * 1.8) + 32
import 'dart:io';
void main() {
  print('Ingrese la temperatura en grados Celsius: ');
  String? celsiusInput =stdin.readLineSync();
  double celsius =double.parse(celsiusInput!);

  double fahrenheit=(celsius*1.8)+32;
  print('La temperatura en grados Fahrenheit es:$fahrenheit °F');
}