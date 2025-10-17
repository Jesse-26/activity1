import 'dart:io';

void main() {
  print('Ingrese el tiempo (s): ');
  String? tiempoInput = stdin.readLineSync();
  int tiempo = int.parse(tiempoInput!); 

  print('Ingrese la distancia (m): ');
  String? distanciaInput = stdin.readLineSync(); 
  int distancia = int.parse(distanciaInput!); 

  double velocidad = distancia / tiempo;
  print('La velocidad es: $velocidad metros/segundo');
}