import 'package:flutter/material.dart';


class VillanosInfo with ChangeNotifier{

  String _villano = 'Thanos';

  get villano {
    return this._villano;
  }

  set villano(String nombre){
    this._villano = nombre;
    notifyListeners();
  }

}