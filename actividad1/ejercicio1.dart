//Se desea calcular la distancia recorrida (D) por un automóvil que tiene velocidad constante
//(m/s) durante un tiempo T (Sg), considerar que es un MRU (Movimiento Rectilíneo
//Uniforme). Tenga en cuenta que la formula del movimiento rectilíneo es:

//D = V * T
import 'dart:io';
void ejercicio1() {
  print('Ingrese la velocidad del automóvil en m/s: ');
  String? velocidadInput =stdin.readLineSync();
  double velocidad =double.parse(velocidadInput!);

  print('Ingrese el tiempo recorrido en segundos: ');
  String? tiempoInput =stdin.readLineSync();
  double tiempo =double.parse(tiempoInput!);

  double distancia=velocidad*tiempo;
  print('La distancia recorrida por el automóvil es: $distancia metros');
}
