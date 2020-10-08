import 'package:flutter/material.dart';
import 'package:patron_provider/src/providers/heroesInfo.dart';
import 'package:patron_provider/src/providers/villanosInfo.dart';
import 'package:provider/provider.dart';

class SuperText extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
      //final heroesInfo = Provider.of<HeroesInfo>(context);
      final villanosInfo = Provider.of<VillanosInfo>(context);
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Consumer<HeroesInfo>(
          builder: (context,heroesInfo,_) =>
            Text(heroesInfo.heroe,
              style: TextStyle(
                  fontSize: 38.0,
                  color: Colors.red
                )
            )
        ),
        Text(villanosInfo.villano,
              style: TextStyle(
                  fontSize: 38.0,
                  color: Colors.red
                )
        )
      ],
    );
  }
}