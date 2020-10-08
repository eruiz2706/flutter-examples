import 'package:flutter/material.dart';
import 'package:list_view/model/ContactModel.dart';

class ContactItem extends StatelessWidget{

  final ContactModel _contact;

  ContactItem(this._contact);

  @override
  Widget build(BuildContext context){
    return ListTile(
      title: Text(_contact.name),
      leading: CircleAvatar(
        child: Text(_contact.name[0])
      ),
      subtitle: Text(_contact.email),
    );
  }

}