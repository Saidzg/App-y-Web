import 'dart:io';

void main() {
  print('Ingrese la cantidad total a repartir:');
  double cantidadTotal = double.parse(stdin.readLineSync()!);

  double josue = 0.27 * cantidadTotal;
  double daniel = 0.25 * cantidadTotal;
  double tamar = 0.85 * josue;
  double caleb = 0.23 * (josue + daniel);
  double david = cantidadTotal - (josue + daniel + tamar + caleb);

  print('Josué recibirá: \$${josue.toStringAsFixed(2)}');
  print('Daniel recibirá: \$${daniel.toStringAsFixed(2)}');
  print('Tamar recibirá: \$${tamar.toStringAsFixed(2)}');
  print('Caleb recibirá: \$${caleb.toStringAsFixed(2)}');
  print('David recibirá: \$${david.toStringAsFixed(2)}');
}
