import 'dart:io';

// Función para calcular la potencia usando multiplicación repetida
int calcularPotencia(int base, int exponente) {
  int resultado = 1;
  
  // Bucle para realizar la multiplicación repetida
  for (int i = 0; i < exponente; i++) {
    resultado *= base;
  }
  
  return resultado;
}

void main() {
  try {
    // Solicitar la base y el exponente al usuario
    print('Introduce la base:');
    int base = int.parse(stdin.readLineSync()!);
    
    print('Introduce el exponente (debe ser un entero no negativo):');
    int exponente = int.parse(stdin.readLineSync()!);
    
    if (exponente < 0) {
      print('El exponente debe ser no negativo.');
      return;
    }
    
    // Calcular la potencia usando la función
    int resultado = calcularPotencia(base, exponente);
    
    // Mostrar el resultado
    print('$base^$exponente = $resultado');
    
  } catch (e) {
    print('Error en la entrada. Asegúrate de introducir números enteros.');
  }
}
