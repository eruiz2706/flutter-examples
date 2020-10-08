import 'package:flutter/material.dart';


class HeroesInfo with ChangeNotifier{

  String _heroe = 'Capitan America';

  get heroe {
    return this._heroe;
  }

  set heroe(String nombre){
    this._heroe = nombre;
    notifyListeners();
  }

}