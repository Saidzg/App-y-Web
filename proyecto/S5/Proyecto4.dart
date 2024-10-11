import 'dart:io';

void main() {
  // Lista de precios de los productos
  Map<String, double> productos = {
    'P1': 15.0,
    'P2': 17.5,
    'P3': 20.0,
  };

  // Solicitar el tipo de producto al usuario
  print('Ingrese el tipo de producto (P1, P2, P3):');
  String? tipoProducto = stdin.readLineSync();

  // Verificar si el tipo de producto ingresado es válido
  if (!productos.containsKey(tipoProducto)) {
    print('Producto inválido. Intente de nuevo.');
    return;
  }

  // Solicitar la cantidad de unidades al usuario
  print('Ingrese la cantidad de unidades adquiridas:');
  int cantidad = int.parse(stdin.readLineSync()!);

  // Calcular el importe total a pagar
  double precioProducto = productos[tipoProducto]!;
  double total = precioProducto * cantidad;

  // Determinar el regalo
  String regalo;
  if (cantidad < 26) {
    regalo = 'Un lapicero';
  } else if (cantidad <= 50) {
    regalo = 'Un cuaderno';
  } else {
    regalo = 'Una agenda';
  }

  // Mostrar el importe total y el regalo
  stdout.write('------------------Reporte-------------------');
  print('El importe total a pagar es: S/ $total');
  print('El regalo es: $regalo');
}
