import 'ejercicio1.dart';
import 'ejercicio2.dart';
import 'ejercicio3.dart';
import 'ejercicio4.dart';
import 'ejercicio5.dart';
import 'ejercicio6.dart';
import 'dart:io';

void main() {
  int? opcion;

  while (opcion != 0) {
    print(
        'Digite el número del ejercicio que desea ejecutar (1-6) o 0 para salir:');
    opcion = int.tryParse(stdin.readLineSync() ?? '');

    switch (opcion) {
      case 1:
        ejercicio1();
        break;
      case 2:
        ejercicio2();
        break;
      case 3:
        ejercicio3();
        break;
      case 4:
        ejercicio4();
        break;
      case 5:
        ejercicio5();
        break;
      case 6:
        ejercicio6();
        break;
      case 0:
        print('Saliendo del programa.');
        break;
      default:
        print('Opción no válida. Por favor, ingrese un número entre 1 y 6.');
    }
  }
}
