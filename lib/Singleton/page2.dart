import 'package:flutter/material.dart';


class Page2Page extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Pagina2'),centerTitle: true,),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            MaterialButton(onPressed: (){}, child: Text('Establecer Usuario',),color: Colors.blue,textColor: Colors.white,),
            MaterialButton(onPressed: (){}, child: Text('Cambiar Edad',),color: Colors.blue,textColor: Colors.white,),
            MaterialButton(onPressed: (){}, child: Text('Añadir Profesión',),color: Colors.blue,textColor: Colors.white,),
          ],
        ),
      )
   );
  }
}