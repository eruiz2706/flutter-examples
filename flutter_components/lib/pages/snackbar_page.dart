import 'package:flutter/material.dart';

class SnackbarPage extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Snackbar'),
      ),
      body: Builder(
          builder: (context) => Center(
          child: _getSnack(context)
        ),
      ),
    );
  }


  Widget _getSnack(BuildContext context){
    return RaisedButton(
      child: Text("Desplegar snackbar"),
      onPressed: (){
        Scaffold.of(context).showSnackBar(
          SnackBar(
            content: Text("Hola soy un snackbar"),
            duration: Duration(seconds: 5),
            backgroundColor: Colors.blueAccent,
            action: SnackBarAction(
              label: "Click Aqui",
              textColor: Colors.white,
              onPressed: (){
                Scaffold.of(context).showSnackBar(
                  SnackBar(
                    content: Text("Hola, nuevamente :)",style: TextStyle(color: Colors.white)),
                  )
                );
              },
            )
          )
        );
      },
    );
  
  }
}