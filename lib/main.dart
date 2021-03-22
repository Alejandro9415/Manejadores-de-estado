import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:singleton/Cubit/cubit.dart';
import 'package:singleton/Provider/provider.dart';

import 'Provider/service/usuario_service.dart';
import 'Singleton/SingletonPage.dart';

void main() => runApp(
      MultiProvider(
        providers: [
          ChangeNotifierProvider(create: (_)=>UsuarioService(),)
        ],
        child: MaterialApp(
          debugShowCheckedModeBanner: false,
          theme: ThemeData(
            primarySwatch: Colors.blue,
          ),
          home: MyApp(),
        ),
      ),
    );

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  onPages(Widget page) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (BuildContext context) => page),
    );
  }

  List<Pages> pages = [
    Pages(
      text: 'Singleton',
      actionTap: SingletonPage(),
    ),
    Pages(
      text: 'Provider',
      actionTap: ProviderPage(),
    ),
    Pages(
      text: 'Cubit',
      actionTap: CubitPage(),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Manejadores de estado'),
        centerTitle: true,
      ),
      body: ListView.builder(
        itemCount: pages.length,
        itemBuilder: (_, i) => InkWell(
          onTap: () => onPages(pages[i].actionTap),
          child: Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: 15.0, vertical: 5.0),
            child: Material(
              elevation: 5.0,
              child: Container(
                alignment: Alignment.center,
                padding: const EdgeInsets.all(15.0),
                child: Text(
                  pages[i].text,
                  style: TextStyle(color: Colors.white, fontSize: 18),
                ),
                decoration: BoxDecoration(
                  color: Color(0xFF304ffe),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class Pages {
  final String text;
  final Widget actionTap;

  Pages({
    @required this.text,
    @required this.actionTap,
  });
}
