import 'package:flutter/material.dart';

void main() {
  runApp(
    new MaterialApp(
      title: 'Primera app',
      home: MyApp()
    )
  );
}

class MyApp extends StatelessWidget{

  @override
  Widget build(BuildContext context){

    final double iconSize = 40.0;

    return new Scaffold(
      appBar: new AppBar(
          title: new Text('Primera app'),
      ),
      body : new Center(
       child: RaisedButton(
          child: Text("Mostrar Pantalla"), 
          onPressed: (){
            Navigator.push(context,
              MaterialPageRoute(builder: (context) => Second())
            );
          },
        ) 
      )
    );
  }
}

class Second extends StatelessWidget{
    @override
  Widget build(BuildContext context){

    return new Scaffold(
      appBar: new AppBar(
          title: new Text('Segunda app'),
      ),
      body: Center(
        child: RaisedButton(
          child: Text("Volver"),
          onPressed: (){
            Navigator.pop(context);
          },
        ),
      )
    );
  }
}