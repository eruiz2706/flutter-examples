import 'package:flutter/material.dart';

class StackPage extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Vigia"),
        ),
        body : Stack(children: <Widget>[
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/satelite-1.jpg'),
                fit : BoxFit.cover
              )
            )
          ),
          Center(
            child: Container(
              color: Colors.black54,
              height: 70.0,
              child: Center(
                child: Text("Vigia",style: TextStyle(color: Colors.white,fontSize: 30)),  
              )
            )
          )
        ])
      );
  }
}