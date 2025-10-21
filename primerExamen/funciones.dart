import 'dart:io';

// Variable global para contador automático de códigos
int contadorCodigo = 1;

// Función para agregar un producto con código automático
void agregarProducto(List<Map<String, dynamic>> productos) {
  print('--- Agregar producto ---');
  
  stdout.write('Nombre del producto: ');
  String? nombre = stdin.readLineSync();
  
  stdout.write('Precio del producto: ');
  double? precio = double.tryParse(stdin.readLineSync() ?? '');

  stdout.write('Cantidad disponible: ');
  int? cantidad = int.tryParse(stdin.readLineSync() ?? '');

  if (nombre != null && nombre.isNotEmpty && precio != null && cantidad != null) {
    productos.add({
      'codigo': contadorCodigo,
      'nombre': nombre,
      'precio': precio,
      'cantidad': cantidad,
    });
    contadorCodigo++; // Incrementar el contador para el próximo producto
    print('Producto agregado correctamente.');
  } else {
    print('Error: Datos inválidos.');
  }
}

// Función para listar productos mostrando el código
void listarProductos(List<Map<String, dynamic>> productos) {
  if (productos.isEmpty) {
    print('No hay productos en el catálogo.');
  } else {
    print('--- Listado de productos ---');
    for (var producto in productos) {
      print('Código: ${producto['codigo']} - ${producto['nombre']} - \$${producto['precio']} - Cantidad: ${producto['cantidad']}');
    }
  }
}

// Función para actualizar un producto, permitiendo mantener campos con Enter
void actualizarProducto(List<Map<String, dynamic>> productos) {
  if (productos.isEmpty) {
    print('No hay productos para actualizar.');
    return;
  }

  listarProductos(productos);

  stdout.write('Ingrese el código del producto a actualizar: ');
  int? codigo = int.tryParse(stdin.readLineSync() ?? '');

  if (codigo == null) {
    print('Código no válido.');
    return;
  }

  // Buscar producto por código
  var producto = productos.firstWhere(
    (p) => p['codigo'] == codigo,
    orElse: () => {},
  );

  if (producto.isEmpty) {
    print('No se encontró un producto con ese código.');
    return;
  }

  print('Presione Enter para mantener el valor actual.');

  stdout.write('Nuevo nombre del producto (${producto['nombre']}): ');
  String? nuevoNombre = stdin.readLineSync();
  if (nuevoNombre != null && nuevoNombre.isNotEmpty) {
    producto['nombre'] = nuevoNombre;
  }

  stdout.write('Nuevo precio del producto (${producto['precio']}): ');
  String? nuevoPrecioInput = stdin.readLineSync();
  if (nuevoPrecioInput != null && nuevoPrecioInput.isNotEmpty) {
    double? nuevoPrecio = double.tryParse(nuevoPrecioInput);
    if (nuevoPrecio != null) {
      producto['precio'] = nuevoPrecio;
    } else {
      print('Precio inválido, manteniendo el valor anterior.');
    }
  }

  stdout.write('Nueva cantidad disponible (${producto['cantidad']}): ');
  String? nuevaCantidadInput = stdin.readLineSync();
  if (nuevaCantidadInput != null && nuevaCantidadInput.isNotEmpty) {
    int? nuevaCantidad = int.tryParse(nuevaCantidadInput);
    if (nuevaCantidad != null) {
      producto['cantidad'] = nuevaCantidad;
    } else {
      print('Cantidad inválida, manteniendo el valor anterior.');
    }
  }

  print('Producto actualizado correctamente.');
}

// Función para eliminar un producto por código
void eliminarProducto(List<Map<String, dynamic>> productos) {
  if (productos.isEmpty) {
    print('No hay productos para eliminar.');
    return;
  }

  listarProductos(productos);

  stdout.write('Ingrese el código del producto a eliminar: ');
  int? codigo = int.tryParse(stdin.readLineSync() ?? '');

  if (codigo == null) {
    print('Código no válido.');
    return;
  }

  int index = productos.indexWhere((p) => p['codigo'] == codigo);
  if (index == -1) {
    print('No se encontró un producto con ese código.');
    return;
  }

  productos.removeAt(index);
  print('Producto eliminado correctamente.');
}
