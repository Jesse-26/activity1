//Se tiene un triángulo rectángulo cuyos lados deberán ser digitados por el usuario. Se debe
//hallar la hipotenusa teniendo en cuenta la formula: H = raíz cuadrada (a**2 + b**2)
import 'dart:io';
import 'dart:math';

void main() {
  print('Ingrese la longitud del cateto a:');
  String? catetoAInput=stdin.readLineSync();
  double catetoA=double.parse(catetoAInput!);

  print('Ingrese la longitud del cateto b:');
  String? catetoBInput =stdin.readLineSync();
  double catetoB =double.parse(catetoBInput!);

  double hipotenusa =sqrt(pow(catetoA, 2)+pow(catetoB, 2));

  print('La hipotenusa del triángulo rectángulo es: $hipotenusa');
} 