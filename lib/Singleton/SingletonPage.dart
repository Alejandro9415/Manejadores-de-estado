import 'package:flutter/material.dart';
import 'package:singleton/Singleton/page2.dart';

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
        appBar: AppBar(),
        body: InformacionUsuario());
  }
}

class InformacionUsuario extends StatelessWidget {
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
              title: Text('Nombre:'),
            ),
            ListTile(
              title: Text('Edad:'),
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
