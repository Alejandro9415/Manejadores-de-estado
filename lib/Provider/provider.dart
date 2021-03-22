import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:singleton/Models/usuario.dart';
import 'package:singleton/Provider/page2.dart';
import 'package:singleton/Provider/service/usuario_service.dart';

class ProviderPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final usuario = Provider.of<UsuarioService>(context);
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.navigate_next_sharp),
        onPressed: () => Navigator.push(
          context,
          MaterialPageRoute(
            builder: (_) => Page2Page(),
          ),
        ),
      ),
      appBar: AppBar(
        title: Text('Pagina1'),
        centerTitle: true,
      ),
      body: usuario.existeUsuario
          ? InformacionUsuario(
              usuario: usuario.usuario,
            )
          : Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CircularProgressIndicator(),
                  Text('No Hay ningun Usuario')
                ],
              ),
            ),
    );
  }
}

class InformacionUsuario extends StatelessWidget {
  final Usuario usuario;
  const InformacionUsuario({
    this.usuario,
  });
  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        height: double.infinity,
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'General',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            Divider(),
            ListTile(
              title: Text('Nombre: ${usuario.nombre}'),
            ),
            ListTile(
              title: Text('Edad: ${usuario.edad}'),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              'Profesiones',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            Divider(),
            ...usuario.profesiones
                .map(
                  (e) => ListTile(
                    title: Text('$e'),
                  ),
                )
                .toList()
          ],
        ));
  }
}
