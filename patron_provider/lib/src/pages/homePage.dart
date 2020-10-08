import 'package:flutter/material.dart';
import 'package:patron_provider/src/providers/villanosInfo.dart';
import 'package:patron_provider/src/widgets/superFloatingAction.dart';
import 'package:patron_provider/src/widgets/superText.dart';
import 'package:provider/provider.dart';

class HomePage extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {

    return Scaffold(
        appBar: AppBar(
          title: Text("villanosInfo.villano"),
        ),
        body: Center(child: SuperText()
        ),
        floatingActionButton: SuperFloatingAction(),
      );
    
  }
}