import 'dart:io';

// Función para obtener el puntaje por puntualidad
int obtenerPuntajePuntualidad(int minutosTardanza) {
  if (minutosTardanza == 0) {
    return 10;
  } else if (minutosTardanza >= 1 && minutosTardanza <= 2) {
    return 8;
  } else if (minutosTardanza >= 3 && minutosTardanza <= 5) {
    return 6;
  } else if (minutosTardanza >= 6 && minutosTardanza <= 9) {
    return 4;
  } else {
    return 0;
  }
}

// Función para obtener el puntaje por rendimiento
int obtenerPuntajeRendimiento(int observaciones) {
  if (observaciones == 0) {
    return 10;
  } else if (observaciones == 1) {
    return 8;
  } else if (observaciones == 2) {
    return 5;
  } else if (observaciones == 3) {
    return 1;
  } else {
    return 0;
  }
}

// Función para calcular la bonificación según el puntaje total
double calcularBonificacion(int puntajeTotal) {
  if (puntajeTotal < 11) {
    return puntajeTotal * 2.5;
  } else if (puntajeTotal >= 11 && puntajeTotal <= 13) {
    return puntajeTotal * 5.0;
  } else if (puntajeTotal >= 14 && puntajeTotal <= 16) {
    return puntajeTotal * 7.5;
  } else if (puntajeTotal >= 17 && puntajeTotal <= 19) {
    return puntajeTotal * 10.0;
  } else if (puntajeTotal == 20) {
    return puntajeTotal * 12.5;
  } else {
    return 0.0;
  }
}

void main() {
  // Solicitar los minutos de tardanza y observaciones del empleado
  stdout.write('Ingrese los minutos de tardanza del empleado: ');
  int minutosTardanza = int.parse(stdin.readLineSync()!);

  stdout.write('Ingrese el número de observaciones efectuadas al empleado: ');
  int observaciones = int.parse(stdin.readLineSync()!);

  // Calcular puntaje por puntualidad y rendimiento
  int puntajePuntualidad = obtenerPuntajePuntualidad(minutosTardanza);
  int puntajeRendimiento = obtenerPuntajeRendimiento(observaciones);

  // Calcular el puntaje total
  int puntajeTotal = puntajePuntualidad + puntajeRendimiento;

  // Calcular la bonificación
  double bonificacion = calcularBonificacion(puntajeTotal);

  // Mostrar los resultados
  stdout.write('------------------Reporte-------------------');
  print('Puntaje por puntualidad: $puntajePuntualidad');
  print('Puntaje por rendimiento: $puntajeRendimiento');
  print('Puntaje total: $puntajeTotal');
  print('Bonificación anual: S/ $bonificacion');
}
