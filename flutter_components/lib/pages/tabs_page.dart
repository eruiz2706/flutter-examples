import 'package:flutter/material.dart';
import 'package:flutter_components/pages/tabs/contact_tab.dart';
import 'package:flutter_components/pages/tabs/home_tab.dart';
import 'package:flutter_components/pages/tabs/video_tab.dart';



class TabsPage extends StatefulWidget{
   
  @override
  _TabsPageState createState() => new _TabsPageState();
}

class _TabsPageState extends State<TabsPage> with SingleTickerProviderStateMixin{

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
        title: Text("Tabs"),
        backgroundColor: Colors.red,
        bottom: TabBar(
          tabs: <Widget>[
            Tab(
              icon: Icon(Icons.comment),
            ),Tab(
              icon: Icon(Icons.computer),
            ),Tab(
              icon: Icon(Icons.content_paste),
            ),
          ],
          controller: controller
        )
      ),
      body: TabBarView(children: <Widget>[
        ContactTab(),
        HomeTab(),
        VideoTab()
      ],
      controller: controller
      )
    );
  }

  

}