//Se requiere el algoritmo para elaborar la planilla de un empleado. Para ello se debe digitar:
//nombre del empleado, la cantidad de horas laboradas en el mes y la tarifa por hora. Se debe
//calcular el total devengado por el empleado en el mes e imprimir: Nombre del empleado,
//cantidad de horas laboradas y total devengado.
import 'dart:io';

void main(){
  print('Ingrese el nombre del empleado: ');
  String? nombre = stdin.readLineSync();

  print('Ingrese la cantidad de horas laboradas en el mes: ');
  String? horasInput =stdin.readLineSync();
  int horas= int.parse(horasInput!);

  print('tarifa por hora: ');
  String? tarifaInput =stdin.readLineSync();
  double tarifa=double.parse(tarifaInput!);

  double totalDevengado =horas*tarifa;

  print('Nombre del empleado:$nombre');
  print('Cantidad de horas laboradas:$horas');
  print('Total devengado: $totalDevengado');
}