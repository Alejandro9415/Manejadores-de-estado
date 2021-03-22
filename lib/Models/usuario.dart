import 'package:meta/meta.dart' show required;

class Usuario {
  String nombre;
  int edad;
  List<String> profesiones;

  Usuario({
    @required this.nombre,
    this.edad,
    this.profesiones,
  });
}
