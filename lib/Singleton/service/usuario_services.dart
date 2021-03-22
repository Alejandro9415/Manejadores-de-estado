import 'dart:async';

import 'package:singleton/Models/usuario.dart';

class _UsuarioService {
  Usuario _usuario;

  StreamController<Usuario> _usuarioController =
      new StreamController<Usuario>.broadcast();

  Usuario get usuario => this._usuario;

  bool get existeUsuario => (this._usuario != null) ? true : false;

  Stream<Usuario> get usuarioStream => _usuarioController.stream;

  void cargarUsuario(Usuario user) {
    this._usuario = user;
    _usuarioController.add(user);
  }

  void cambiarEdad(int edad) {
    this._usuario.edad = edad;
    _usuarioController.add(this._usuario);
  }
}

final usuarioService = new _UsuarioService();
