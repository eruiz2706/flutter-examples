import 'package:flutter/material.dart';

class Tercera extends StatelessWidget{

  @override
  Widget build(BuildContext context){
    return Container(
      child: Column(
        children: <Widget>[
          Icon(Icons.content_paste,color: Colors.blueAccent,size: 170.0),
          Text("Tercera Tab")
        ],
      )
    );
  }
}
