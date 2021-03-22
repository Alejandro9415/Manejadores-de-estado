import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:singleton/Models/usuario.dart';
import 'package:singleton/Provider/service/usuario_service.dart';

class Page2Page extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final usuario = Provider.of<UsuarioService>(context);
    return Scaffold(
        appBar: AppBar(
          title: Text(usuario.existeUsuario
              ? 'Nombre: ${usuario.usuario.nombre}'
              : 'Pagina2'),
          centerTitle: true,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              MaterialButton(
                onPressed: () {
                  Usuario user = new Usuario(
                      nombre: 'Alejandro',
                      edad: 26,
                      profesiones: [
                        'Developers flutter',
                        'java',
                        'javascript'
                      ]);
                  usuario.cargarUsuario(user);
                },
                child: Text(
                  'Establecer Usuario',
                ),
                color: Colors.blue,
                textColor: Colors.white,
              ),
              MaterialButton(
                onPressed: () {
                  usuario.cambiarEdad(35);
                },
                child: Text(
                  'Cambiar Edad',
                ),
                color: Colors.blue,
                textColor: Colors.white,
              ),
              MaterialButton(
                onPressed: () =>usuario.agregarProfesiones(),
                child: Text(
                  'Añadir Profesión',
                ),
                color: Colors.blue,
                textColor: Colors.white,
              ),
            ],
          ),
        ));
  }
}
