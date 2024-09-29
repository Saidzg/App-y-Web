import 'dart:io';

void main() {
  print('Ingresa la longitud del lado del cuadrado:');

  String? input = stdin.readLineSync();
  if (input != null && double.tryParse(input) != null) {
    double lado = double.parse(input);

    double perimetro = 4 * lado;
    double area = lado * lado;
    
    print('Perímetro del cuadrado: $perimetro');
    print('Área del cuadrado: $area');
  } else {
    print('Por favor, ingresa un número válido.');
  }
}
