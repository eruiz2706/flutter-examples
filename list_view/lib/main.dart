import 'package:flutter/material.dart';
import 'package:list_view/contact.dart';

void main() {
  runApp(
    new MaterialApp(
      title: 'Primera app',
      home: Scaffold(
        appBar: AppBar(
          title: Text("Contactos"),
        ),
        body : Contact()
      )
    )
  );
}
