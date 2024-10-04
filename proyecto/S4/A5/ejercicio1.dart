import 'dart:io';

// Función para verificar si un número es primo
bool esPrimo(int numero) {
  if (numero <= 1) return false;
  if (numero == 2) return true;  // El 2 es el único número primo par
  if (numero % 2 == 0) return false; // Si es divisible por 2 no es primo
  
  // Solo verificar hasta la raíz cuadrada de 'numero'
  for (int i = 3; i * i <= numero; i += 2) {
    if (numero % i == 0) return false;
  }
  return true;
}

// Función para sumar todos los números primos en el rango
int sumatoriaPrimos(int inicio, int fin) {
  int suma = 0;
  for (int i = inicio; i <= fin; i++) {
    if (esPrimo(i)) {
      suma += i;
    }
  }
  return suma;
}

void main() {
  try {
    // Entrada del usuario
    print('Introduce el primer número:');
    int inicio = int.parse(stdin.readLineSync()!);
    print('Introduce el segundo número:');
    int fin = int.parse(stdin.readLineSync()!);
    
    if (inicio > fin) {
      print('El primer número debe ser menor o igual al segundo.');
      return;
    }
    
    // Calcular la sumatoria de primos en el rango
    int resultado = sumatoriaPrimos(inicio, fin);
    print('La sumatoria de los números primos entre $inicio y $fin es: $resultado');
  } catch (e) {
    print('Error en la entrada. Asegúrate de introducir números enteros.');
  }
}
