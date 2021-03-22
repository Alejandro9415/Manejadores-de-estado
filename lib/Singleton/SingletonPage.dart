import 'package:flutter/material.dart';
import 'package:singleton/Models/usuario.dart';
import 'package:singleton/Singleton/page2.dart';
import 'package:singleton/Singleton/service/usuario_services.dart';

class SingletonPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
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
      body: StreamBuilder(
        stream: usuarioService.usuarioStream,
        builder: (BuildContext context, AsyncSnapshot<dynamic> snapshot) =>
            snapshot.hasData
                ? InformacionUsuario(
                    usuario: snapshot.data
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
      ),
    );
  }
}

class InformacionUsuario extends StatelessWidget {
  final Usuario usuario;
  const InformacionUsuario({@required this.usuario});
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
              title: Text('Edad:  ${usuario.edad}'),
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
            ListTile(
              title: Text('Profesion 1:'),
            ),
          ],
        ));
  }
}
