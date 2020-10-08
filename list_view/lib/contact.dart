import 'package:flutter/material.dart';
import 'package:list_view/model/ContactModel.dart';
import 'package:list_view/pages/contactList.dart';

class Contact extends StatelessWidget{

  _buildList(){
    return <ContactModel>[
      const ContactModel(name: "Rodrigo Morales", email: "rodrigo.morales@gmail.com"),
      const ContactModel(name: "Rodrigo Morales", email: "rodrigo.morales@gmail.com"), 
      const ContactModel(name: "Rodrigo Morales", email: "rodrigo.morales@gmail.com"),
      const ContactModel(name: "Rodrigo Morales", email: "rodrigo.morales@gmail.com"),
      const ContactModel(name: "Rodrigo Morales", email: "rodrigo.morales@gmail.com"),
      const ContactModel(name: "Rodrigo Morales", email: "rodrigo.morales@gmail.com"),
      const ContactModel(name: "Rodrigo Morales", email: "rodrigo.morales@gmail.com"),
      const ContactModel(name: "Rodrigo Morales", email: "rodrigo.morales@gmail.com"),
      const ContactModel(name: "Rodrigo Morales", email: "rodrigo.morales@gmail.com"),
      const ContactModel(name: "Rodrigo Morales", email: "rodrigo.morales@gmail.com"),
      const ContactModel(name: "Rodrigo Morales", email: "rodrigo.morales@gmail.com"),
      const ContactModel(name: "Rodrigo Morales", email: "rodrigo.morales@gmail.com"),
      const ContactModel(name: "Rodrigo Morales", email: "rodrigo.morales@gmail.com"),
      const ContactModel(name: "Rodrigo Morales", email: "rodrigo.morales@gmail.com"),
      const ContactModel(name: "Rodrigo Morales", email: "rodrigo.morales@gmail.com"),
      const ContactModel(name: "Rodrigo Morales", email: "rodrigo.morales@gmail.com"),
      const ContactModel(name: "Rodrigo Morales", email: "rodrigo.morales@gmail.com"),
      const ContactModel(name: "Rodrigo Morales", email: "rodrigo.morales@gmail.com"),
      const ContactModel(name: "Rodrigo Morales", email: "rodrigo.morales@gmail.com"),
      const ContactModel(name: "Eduardo", email: "rodrigo.morales@gmail.com"),
    ];
  }

  @override
  Widget build(BuildContext context){

    return new Scaffold(
      body : ContactList(_buildList())
    );
  }
}