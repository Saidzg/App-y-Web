// Función para verificar si un número es perfecto
bool esNumeroPerfecto(int numero) {
  int sumaDivisores = 0;
  
  // Encontrar todos los divisores propios
  for (int i = 1; i <= numero ~/ 2; i++) {
    if (numero % i == 0) {
      sumaDivisores += i;
    }
  }
  
  // Un número es perfecto si la suma de sus divisores propios es igual al número
  return sumaDivisores == numero;
}

// Función para encontrar y mostrar todos los números perfectos en un rango
void encontrarNumerosPerfectos(int limite) {
  print('Números perfectos entre 1 y $limite:');
  
  for (int i = 1; i <= limite; i++) {
    if (esNumeroPerfecto(i)) {
      print(i);  // Mostrar el número perfecto
    }
  }
}

void main() {
  // Definir el rango hasta 10,000
  int limite = 10000;
  
  // Llamar a la función para encontrar los números perfectos
  encontrarNumerosPerfectos(limite);
}
