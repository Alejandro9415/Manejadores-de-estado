import 'package:flutter/material.dart';
import 'package:singleton/Models/usuario.dart';
import 'package:singleton/Singleton/service/usuario_services.dart';

class Page2Page extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: StreamBuilder(
              stream: usuarioService.usuarioStream,
              builder: (context, AsyncSnapshot<Usuario> snapshot) {
                return Text(
                    snapshot.hasData ? '${snapshot.data.nombre}' : 'Pagina2');
              }),
          centerTitle: true,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              MaterialButton(
                onPressed: () {
                  final nuevoUsuario =
                      new Usuario(nombre: 'Alejandro', edad: 26);

                  usuarioService.cargarUsuario(nuevoUsuario);
                },
                child: Text(
                  'Establecer Usuario',
                ),
                color: Colors.blue,
                textColor: Colors.white,
              ),
              MaterialButton(
                onPressed: () {
                  usuarioService.cambiarEdad(30);
                },
                child: Text(
                  'Cambiar Edad',
                ),
                color: Colors.blue,
                textColor: Colors.white,
              ),
              MaterialButton(
                onPressed: () {},
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
