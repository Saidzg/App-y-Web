import 'dart:io';

// Función para obtener el porcentaje de descuento según el promedio
double obtenerDescuento(double promedio) {
  if (promedio >= 18.00 && promedio <= 20.00) {
    return 0.15; // 15%
  } else if (promedio >= 16.00 && promedio <= 17.99) {
    return 0.12; // 12%
  } else if (promedio >= 14.00 && promedio <= 15.99) {
    return 0.10; // 10%
  } else {
    return 0.0; // Sin descuento
  }
}

// Función para obtener la pensión según la categoría
double obtenerPension(String categoria) {
  switch (categoria.toUpperCase()) {
    case 'A':
      return 550;
    case 'B':
      return 500;
    case 'C':
      return 460;
    case 'D':
      return 400;
    default:
      return 0; // Categoría inválida
  }
}

void main() {
  // Solicitar al usuario la categoría y el promedio
  stdout.write('Ingrese la categoría del estudiante (A, B, C, D): ');
  String? categoria = stdin.readLineSync();

  stdout.write('Ingrese el promedio ponderado del estudiante: ');
  double? promedio = double.parse(stdin.readLineSync()!);

  // Obtener la pensión y el descuento
  double pensionActual = obtenerPension(categoria!);
  double descuento = obtenerDescuento(promedio);

  // Calcular la nueva pensión con el descuento
  double nuevaPension = pensionActual - (pensionActual * descuento);

  // Mostrar los resultados
  stdout.write('------------------Reporte-------------------');
  print('Pensión actual: S/ $pensionActual');
  print('Descuento aplicado: ${descuento * 100}%');
  print('Nueva pensión: S/ $nuevaPension');
}
