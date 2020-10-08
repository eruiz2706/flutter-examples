import 'package:flutter/material.dart';

class HomeMenu extends StatefulWidget{
   
  @override
  _HomeMenuState createState() => new _HomeMenuState();
}

class _HomeMenuState extends State<HomeMenu>{

  Drawer _getDrawer(BuildContext context){
    
    var header = DrawerHeader(
      child: Text("Ajustes"),
    );

    var info = AboutListTile(
      child: Text("Informacion App"),
      applicationIcon: Icon(Icons.favorite),
      icon : Icon(Icons.info),
      applicationVersion: 'V1.0.0'
    );

    ListTile _getItem(Icon icon,String descripcion,String routeName){
      return ListTile(
        leading: icon,
        title: Text(descripcion),
        onTap : (){
          setState(() {
            Navigator.of(context).pushNamed(routeName);
          });
        }
      );
    }

    ListView listView = new ListView(children: <Widget>[
      header,
      _getItem(Icon(Icons.settings),"Configuracion","configuration_menu"),
      _getItem(Icon(Icons.home),"Pagina Principal","amburguesa"),
      info
    ]);

    return Drawer(
        child: listView
    );
  }

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text("Demo Menu")
      ),
      drawer: _getDrawer(context)
    );
  }

  

}
