import 'package:flutter/material.dart';

class ConfiguracionMenu extends StatelessWidget{

  static const String routeName = '/configuracion';

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text('Configuracion')
      ),
      body : Container(
        child: Center(
          child: Text("Estamos en configuracion")
        )
      )
    );
  }
}
  


