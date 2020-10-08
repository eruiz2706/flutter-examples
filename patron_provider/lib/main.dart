import 'package:flutter/material.dart';
import 'package:patron_provider/src/providers/villanosInfo.dart';
import 'package:provider/provider.dart';
import 'package:patron_provider/src/providers/heroesInfo.dart';
import 'package:patron_provider/src/pages/homePage.dart';
 
void main() => runApp(MyApp());
 
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider( builder: (context) => HeroesInfo()),
        ChangeNotifierProvider( builder: (context) => VillanosInfo())
      ],
      child: MaterialApp(
        title: 'Material App',
        initialRoute: 'home',
        routes: {
          "home" : (context) => HomePage()
        },
      )
    );
  }
}