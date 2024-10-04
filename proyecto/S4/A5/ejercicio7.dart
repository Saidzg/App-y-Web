import 'dart:io';

// Función para generar una matriz espiral de tamaño n x n
List<List<int>> generarMatrizEspiral(int n) {
  // Crear una matriz vacía de tamaño n x n
  List<List<int>> matriz = List.generate(n, (_) => List.filled(n, 0));
  
  int valor = 1;
  int filaInicio = 0, filaFin = n - 1;
  int columnaInicio = 0, columnaFin = n - 1;
  
  // Rellenar la matriz en forma de espiral
  while (filaInicio <= filaFin && columnaInicio <= columnaFin) {
    // Recorrer la fila superior de izquierda a derecha
    for (int i = columnaInicio; i <= columnaFin; i++) {
      matriz[filaInicio][i] = valor++;
    }
    filaInicio++;
    
    // Recorrer la columna derecha de arriba hacia abajo
    for (int i = filaInicio; i <= filaFin; i++) {
      matriz[i][columnaFin] = valor++;
    }
    columnaFin--;
    
    // Recorrer la fila inferior de derecha a izquierda, si queda
    if (filaInicio <= filaFin) {
      for (int i = columnaFin; i >= columnaInicio; i--) {
        matriz[filaFin][i] = valor++;
      }
      filaFin--;
    }
    
    // Recorrer la columna izquierda de abajo hacia arriba, si queda
    if (columnaInicio <= columnaFin) {
      for (int i = filaFin; i >= filaInicio; i--) {
        matriz[i][columnaInicio] = valor++;
      }
      columnaInicio++;
    }
  }
  
  return matriz;
}

// Función para imprimir la matriz
void imprimirMatriz(List<List<int>> matriz) {
  for (List<int> fila in matriz) {
    print(fila.map((e) => e.toString().padLeft(4)).join(' '));
  }
}

void main() {
  try {
    // Solicitar el tamaño de la matriz
    print('Introduce el tamaño de la matriz (n x n):');
    int n = int.parse(stdin.readLineSync()!);
    
    if (n <= 0) {
      print('El tamaño debe ser un entero positivo.');
      return;
    }
    
    // Generar y mostrar la matriz en forma de espiral
    List<List<int>> matrizEspiral = generarMatrizEspiral(n);
    imprimirMatriz(matrizEspiral);
    
  } catch (e) {
    print('Error en la entrada. Asegúrate de introducir un número entero.');
  }
}