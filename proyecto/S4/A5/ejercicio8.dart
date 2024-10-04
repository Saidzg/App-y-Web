import 'dart:io';
import 'dart:math';

// Función para verificar si un número es Armstrong
bool esNumeroArmstrong(int numero) {
  String numeroStr = numero.toString();
  int n = numeroStr.length;  // Obtener el número de dígitos
  int suma = 0;
  
  // Sumar cada dígito elevado a la potencia n
  for (int i = 0; i < n; i++) {
    int digito = int.parse(numeroStr[i]);
    suma += pow(digito, n).toInt();  // Elevar el dígito a la potencia n y sumar
  }
  
  // Verificar si la suma es igual al número original
  return suma == numero;
}

void main() {
  try {
    // Solicitar el número al usuario
    print('Introduce un número para verificar si es un número Armstrong:');
    int numero = int.parse(stdin.readLineSync()!);
    
    // Verificar si el número es Armstrong
    if (esNumeroArmstrong(numero)) {
      print('$numero es un número Armstrong.');
    } else {
      print('$numero no es un número Armstrong.');
    }
    
  } catch (e) {
    print('Error en la entrada. Asegúrate de introducir un número entero.');
  }
}
