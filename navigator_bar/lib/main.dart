import 'package:flutter/material.dart';
import 'package:navigator_bar/pages/primera.dart';
import 'package:navigator_bar/pages/segunda.dart';
import 'package:navigator_bar/pages/tercera.dart';


void main() {
  runApp(
    new MaterialApp(
      title: 'Primera app',
      home: MyNavBar()
    )
  );
}


class MyNavBar extends StatefulWidget{
   
  @override
  _MyNavBarState createState() => new _MyNavBarState();
}

class _MyNavBarState extends State<MyNavBar> with SingleTickerProviderStateMixin{

  TabController controller;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    controller = new TabController(length: 3,vsync: this);
  }

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text("Stateful"),
      ),
      bottomNavigationBar: Material(
        color: Colors.blueAccent,
        child: TabBar(
          tabs: <Tab>[
            Tab(icon: Icon(Icons.color_lens)),
            Tab(icon: Icon(Icons.contacts)),
            Tab(icon: Icon(Icons.delete)),
          ],
          controller: controller
        ,)
      ),
      body: TabBarView(
        children: <Widget>[
          Primero(),Segunda(),Tercera()
        ],
        controller: controller,
      ),
    );
  }

  

}
