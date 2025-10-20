//Elaborar un algoritmo que permita ingresar el número de partidos ganados, perdidos y
//empatados, de un equipo en un torneo de futbol. Se debe de imprimir el puntaje total del
//equipo, tenga en cuenta que:
//a. Por cada partido ganado obtendrá 3 puntos.
//b. Por cada partido empatado 1 punto.
//c. Por cada partido perdido 0 puntos.
//Se desea imprimir la cantidad de partidos ganados, perdidos, empatados y el cálculo
//completo de la cantidad de puntos obtenidos del equipo de futbol.
import 'dart:io';

void ejercicio3() {
  print('Ingrese el número de partidos ganados: ');
  String? ganadosInput=stdin.readLineSync();
  int ganados=int.parse(ganadosInput!);

  print('Ingrese el número de partidos empatados: ');
  String?empatadosInput=stdin.readLineSync();
  int empatados=int.parse(empatadosInput!);

  print('Ingrese el número de partidos perdidos: ');
  String? perdidosInput=stdin.readLineSync();
  int perdidos=int.parse(perdidosInput!);

  int puntajeTotal = (ganados*3)+(empatados*1)+(perdidos*0);
  print('El puntaje total del equipo es: $puntajeTotal puntos');
}