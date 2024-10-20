import 'dart:io';

class Estudiante {
  String codigo;
  String nombres;
  double nota1;
  double nota2;

  Estudiante(this.codigo, this.nombres, this.nota1, this.nota2);

  void mostrarInformacion() {
    print('Código : $codigo');
    print('Nombres : $nombres');
    print('Nota 1 : $nota1');
    print('Nota 2 : $nota2');
    print('Promedio: ${calcularPromedio()}');
  }

  double calcularPromedio() {
    return (nota1 + nota2) / 2; 
  }

  // Método para almacenar un nuevo estudiante
  static Estudiante almacenar() {
    String? codigo;
    String? nombres;
    double? nota1;
    double? nota2;

    while (codigo == null || codigo.isEmpty) {
      stdout.write('Ingrese el código del estudiante: ');
      codigo = stdin.readLineSync();
    }

    while (nombres == null || nombres.isEmpty) {
      stdout.write('Ingrese el nombre del estudiante: ');
      nombres = stdin.readLineSync();
    }

    nota1 = _leerNota('Ingrese la primera nota: ');
    nota2 = _leerNota('Ingrese la segunda nota: ');

    return Estudiante(codigo, nombres, nota1, nota2);
  }

  // Método privado para leer y validar notas
  static double _leerNota(String mensaje) {
    double? nota;
    while (nota == null) {
      stdout.write(mensaje);
      String? input = stdin.readLineSync();
      try {
        nota = double.parse(input!);
        if (nota < 0 || nota > 20) {
          print('La nota debe estar entre 0 y 20. Intente de nuevo.');
          nota = null;
        }
      } catch (e) {
        print('Entrada inválida. Por favor, ingrese un número.');
      }
    }
    return nota;
  }
}

void main() {
  List<Estudiante> listaEstudiante = [];

  // Añadir estudiantes desde la entrada del usuario
  while (true) {
    listaEstudiante.add(Estudiante.almacenar());
    stdout.write('¿Desea agregar otro estudiante? (s/n): ');
    String? continuar = stdin.readLineSync();
    if (continuar?.toLowerCase() != 's') break;
  }

  // Mostrar información de todos los estudiantes
  for (var estudiante in listaEstudiante) {
    estudiante.mostrarInformacion();
    print('---');
  }
}