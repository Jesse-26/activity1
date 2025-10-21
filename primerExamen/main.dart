import 'dart:io';
import 'funciones.dart';

void main() {
  // Lista para almacenar los productos (cada producto es un mapa)
  List<Map<String, dynamic>> productos = [];

  // Ciclo principal que muestra el menú
  while (true) {
    print('--- Menú Principal ---');
    print('1. Agregar producto');
    print('2. Listar productos');
    print('3. Actualizar producto');
    print('4. Eliminar producto');
    print('5. Salir');
    stdout.write('Seleccione una opción: ');

    // Leer la opción seleccionada por el usuario
    String? opcion = stdin.readLineSync();

    switch (opcion) {
      case '1':
        // Agregar producto
        agregarProducto(productos);
        break;

      case '2':
        // Listar productos
        listarProductos(productos);
        break;

      case '3':
        // Actualizar producto
        actualizarProducto(productos);
        break;

      case '4':
        // Eliminar producto
        eliminarProducto(productos);
        break;

      case '5':
        // Salir
        print('¡Hasta luego!');
        return;

      default:
        print('Opción no válida, por favor intente de nuevo.');
    }
  }
}
