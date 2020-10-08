import 'package:flutter/material.dart';
import 'package:patron_provider/src/providers/heroesInfo.dart';
import 'package:patron_provider/src/providers/villanosInfo.dart';
import 'package:provider/provider.dart';

class SuperFloatingAction extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {

    final heroesInfo = Provider.of<HeroesInfo>(context);
    final villanosInfo = Provider.of<VillanosInfo>(context);

    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: <Widget>[
        FloatingActionButton(
          child: Icon(Icons.plus_one),
          backgroundColor: Colors.blue,
          onPressed: () {
            heroesInfo.heroe = 'Iroman';
            villanosInfo.villano='Dark';
          } 
        ),
        SizedBox(height: 10.0),
        FloatingActionButton(
          child: Icon(Icons.remove),
          backgroundColor: Colors.red,
          onPressed: () {
            heroesInfo.heroe = 'Capitan America';
            villanosInfo.villano= 'Thanos';
          }
        )
      ],
    );
  }
}