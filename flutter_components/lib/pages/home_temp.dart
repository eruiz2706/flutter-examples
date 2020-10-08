import 'package:flutter/material.dart';
 
class HomePageTemp extends StatelessWidget {

  final opciones = [
    'uno','dos','tres','cuatro..'
  ];

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Scaffold(
        appBar: AppBar(
          title: Text('Components')
        ),
        body: ListView(
          children: _crearItemsMap()
        ) 
      )
    );
  }

  List<Widget> _crearItems() {

    List<Widget> lista = new List<Widget>();

    for(String opcion in opciones){
      
      final tempWidget = ListTile(
        title: Text(opcion)
      );

      lista.add(tempWidget);
      lista.add(Divider());
    }

    return lista;
  }

  List<Widget> _crearItemsMap() {
    return opciones.map( (item) {
      return Column(
        children: <Widget>[
          ListTile(
            title: Text(item),
            subtitle: Text('Subitulo'),
            leading: Icon(Icons.accessibility),
            trailing: Icon(Icons.arrow_right),
            onTap: (){},
          ),
          Divider()
        ]);
    }).toList();
  }
}
