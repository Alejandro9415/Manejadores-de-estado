import 'package:flutter/foundation.dart';
import 'package:provider/provider.dart';
import 'package:singleton/Models/usuario.dart';

class UsuarioService extends ChangeNotifier {
  Usuario _usuario;

  Usuario get usuario => this._usuario;

  bool get existeUsuario => (this._usuario != null) ? true : false;

  void cargarUsuario(Usuario user) {
    this._usuario = user;
    notifyListeners();
  }

  void cambiarEdad(int edad) {
    this._usuario.edad = edad;
    notifyListeners();
  }

  void agregarProfesiones() {
    this._usuario.profesiones.add('Profesion: ${this._usuario.profesiones.length + 1}');
    notifyListeners();
  }
}
