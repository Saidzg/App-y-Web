import 'dart:io';

// Función para invertir los dígitos de un número
int invertirNumero(int numero) {
  int invertido = 0;
  
  // Bucle while para extraer y reordenar los dígitos
  while (numero != 0) {
    int digito = numero % 10;  // Obtiene el último dígito
    invertido = invertido * 10 + digito;  // Reorganiza el número
    numero ~/= 10;  // Elimina el último dígito
  }
  
  return invertido;
}

void main() {
  try {
    // Solicitar el número al usuario
    print('Introduce un número entero:');
    int numero = int.parse(stdin.readLineSync()!);
    
    // Invertir el número usando la función
    int numeroInvertido = invertirNumero(numero);
    
    // Mostrar el número invertido
    print('El número invertido es: $numeroInvertido');
    
  } catch (e) {
    print('Error en la entrada. Asegúrate de introducir un número entero.');
  }
}
