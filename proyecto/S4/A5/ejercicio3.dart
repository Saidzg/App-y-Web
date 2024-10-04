import 'dart:io';

// Función para calcular el factorial de un número grande usando BigInt
BigInt calcularFactorial(int n) {
  BigInt resultado = BigInt.one;
  
  // Bucle para calcular el factorial
  for (int i = 2; i <= n; i++) {
    resultado *= BigInt.from(i);
  }
  
  return resultado;
}

void main() {
  try {
    // Solicitar el número al usuario
    print('Introduce un número para calcular su factorial:');
    int n = int.parse(stdin.readLineSync()!);
    
    if (n < 0) {
      print('El número debe ser no negativo.');
      return;
    }
    
    // Calcular el factorial usando la función
    BigInt resultado = calcularFactorial(n);
    
    // Mostrar el resultado
    print('El factorial de $n es: $resultado');
    
  } catch (e) {
    print('Error en la entrada. Asegúrate de introducir un número entero.');
  }
}
