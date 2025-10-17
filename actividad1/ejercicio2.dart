//Se necesita obtener el promedio de un estudiante a partir de sus tres notas parciales. El
//estudiante debe digitar sus tres notas y el sistema deberá darle el promedio del semestre.
import 'dart:io';

void main() {
  print('Ingrese la primera nota:');
  String? nota1Input = stdin.readLineSync();
  double nota1 = double.parse(nota1Input!);

  print('Ingrese la segunda nota:');
  String? nota2Input= stdin.readLineSync();
  double nota2 =double.parse(nota2Input!);

  print('Ingrese la tercera nota:');
  String? nota3Input= stdin.readLineSync();
  double nota3 =double.parse(nota3Input!);

  double promedio=(nota1+nota2+nota3) / 3;
  print('El promedio es: $promedio');
}