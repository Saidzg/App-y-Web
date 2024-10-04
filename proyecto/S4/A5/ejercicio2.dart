import 'dart:io';

// Función que genera la secuencia de Fibonacci hasta n términos
List<int> generarFibonacci(int n) {
  List<int> secuencia = [];
  
  // Casos especiales para n <= 2
  if (n <= 0) return secuencia;
  if (n >= 1) secuencia.add(0); // Primer número de la secuencia
  
  if (n >= 2) secuencia.add(1); // Segundo número de la secuencia
  
  // Generar los términos de Fibonacci restantes
  for (int i = 2; i < n; i++) {
    int siguiente = secuencia[i - 1] + secuencia[i - 2];
    secuencia.add(siguiente);
  }
  
  return secuencia;
}

void main() {
  try {
    // Solicitar el número de términos al usuario
    print('Introduce el número de términos de la secuencia de Fibonacci:');
    int n = int.parse(stdin.readLineSync()!);
    
    if (n <= 0) {
      print('El número de términos debe ser un entero positivo.');
      return;
    }
    
    // Generar la secuencia de Fibonacci
    List<int> secuenciaFibonacci = generarFibonacci(n);
    
    // Mostrar la secuencia
    print('La secuencia de Fibonacci con $n términos es:');
    print(secuenciaFibonacci.join(', '));
    
  } catch (e) {
    print('Error en la entrada. Asegúrate de introducir un número entero positivo.');
  }
}
