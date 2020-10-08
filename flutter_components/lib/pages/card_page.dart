import 'package:flutter/material.dart';

class CardPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cards')
      ),
      body: ListView(
        padding: EdgeInsets.all(10.0),
        children: <Widget>[
          _cardTipo1(),
          SizedBox(height: 30.0),
          _cardTipo2(),
          _cardTipo1(),
          SizedBox(height: 30.0),
          _cardTipo2(),
          _cardTipo1(),
          SizedBox(height: 30.0),
          _cardTipo2(),
          _cardTipo1(),
          SizedBox(height: 30.0),
          _cardTipo2()
        ],
      )
    );
  }

  Widget _cardTipo1() {
    return Card(
      elevation: 10.0,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50.0)),
      child: Column(
        children: <Widget>[
          ListTile(
            title: Text('Titulo del card'),
            subtitle: Text('Subtitulo del card'),
            leading: Icon( Icons.photo_album, color: Colors.blue),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              FlatButton(
                child: Text('Cancelar..'),
                onPressed: (){

                },
              ),
              FlatButton(
                child: Text('Ok'),
                onPressed: (){
                  
                },
              )
            ],
          )
        ],
      )
    );
  }

  Widget _cardTipo2() {
    final card = Container(
      child: Column(
        children: <Widget>[
          FadeInImage(
            image: NetworkImage('https://maestriasydiplomadostec.blob.core.windows.net/maestriasydiplomados/uploads/programaec/imagen/247/Metropolitan-Landscape.jpg'),
            placeholder: AssetImage('assets/jar-loading.gif'),
            fadeInDuration: Duration(milliseconds: 200),
            fit: BoxFit.cover
          ),
          Container(
            padding: EdgeInsets.all(10.0),
            child: Text('No tengo idea de que poner..')
          )
          
        ],
      )
    );

    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20.0),
        boxShadow: <BoxShadow>[
          BoxShadow(
            color: Colors.black26,
            blurRadius: 10.0,
            spreadRadius: 2.0,
            offset: Offset(0, 10.0)
          )
        ]
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20.0),
        child: card
      ),
    );
  }
}