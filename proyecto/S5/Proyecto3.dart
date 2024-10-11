import 'dart:io';

// Función para obtener el precio unitario según el tipo de chocolate
double obtenerPrecio(String tipoChocolate) {
  switch (tipoChocolate.toLowerCase()) {
    case 'primor':
      return 8.5;
    case 'dulzura':
      return 10.0;
    case 'tentación':
      return 7.0;
    case 'explosión':
      return 12.5;
    default:
      return 0.0;
  }
}

// Función para obtener el porcentaje de descuento según la cantidad de chocolates
double obtenerDescuento(int cantidad) {
  if (cantidad < 5) {
    return 0.04; // 4%
  } else if (cantidad >= 5 && cantidad < 10) {
    return 0.065; // 6.5%
  } else if (cantidad >= 10 && cantidad < 15) {
    return 0.09; // 9%
  } else if (cantidad >= 15) {
    return 0.115; // 11.5%
  } else {
    return 0.0;
  }
}

// Función para calcular la cantidad de caramelos de obsequio
int calcularCaramelos(int cantidad, double importeFinal) {
  if (importeFinal >= 250) {
    return cantidad * 3;
  } else {
    return cantidad * 2;
  }
}

void main() {
  // Solicitar al usuario el tipo de chocolate y la cantidad
  stdout.write('Ingrese el tipo de chocolate (Primor, Dulzura, Tentación, Explosión): ');
  String? tipoChocolate = stdin.readLineSync();

  stdout.write('Ingrese la cantidad de chocolates: ');
  int cantidad = int.parse(stdin.readLineSync()!);

  // Obtener el precio unitario del chocolate
  double precioUnitario = obtenerPrecio(tipoChocolate!);

  // Calcular el importe total antes del descuento
  double importeTotal = precioUnitario * cantidad;

  // Obtener el porcentaje de descuento y calcular el importe con descuento
  double descuento = obtenerDescuento(cantidad);
  double importeDescuento = importeTotal * descuento;
  double importeFinal = importeTotal - importeDescuento;

  // Calcular la cantidad de caramelos de obsequio
  int caramelos = calcularCaramelos(cantidad, importeFinal);

  // Mostrar los resultados
  stdout.write('------------------Reporte-------------------');
  print('Importe total: S/ $importeTotal');
  print('Descuento aplicado: ${descuento * 100}%');
  print('Importe con descuento: S/ $importeFinal');
  print('Caramelos de obsequio: $caramelos');
}
