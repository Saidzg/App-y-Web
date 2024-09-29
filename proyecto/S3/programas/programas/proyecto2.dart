import 'dart:io';
import 'dart:math';

void main() {
  print('Ingrese el radio:');
  double radio = double.parse(stdin.readLineSync()!);

  print('Ingrese la altura:');
  double altura = double.parse(stdin.readLineSync()!);

  double area = 2 * pi * radio * (radio + altura);
  double volumen = pi * pow(radio, 2) * altura;

  print('Área total: \$${area.toStringAsFixed(2)}');
  print('Volumen: \$${volumen.toStringAsFixed(2)}');
}
