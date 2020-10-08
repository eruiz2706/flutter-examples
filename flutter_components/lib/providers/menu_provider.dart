import 'dart:convert';

import 'package:flutter/services.dart' show rootBundle;


class _MenuProvider {

  List<dynamic> opciones = [];

  _MenuProvider(){
    
  }

  Future<List<dynamic>> cargarData() async{

    final resp = await rootBundle.loadString('data/menu-opts.json');
    Map dataMap = json.decode(resp);
    opciones = dataMap['rutas'];
    return opciones;

    /*rootBundle.loadString('data/menu-opts.json')
    .then( (data) {
      Map dataMap = json.decode(data);
      //print(dataMap['nombreApp']);
      opciones = dataMap['rutas'];
    });*/
  }
}

final menuProvider = new _MenuProvider();