import 'package:flutter/material.dart';

class InputPage extends StatefulWidget {
  
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {

  String _nombre='';
  String _email='';
  String _password='';
  String _fecha='';
  String _opcionSel= 'Volar';
  List<String> _poderes = ['Volar','Rayos X','Super Fuerza'];

  TextEditingController _inputFieldController = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Inputs de texto'),
      ),
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal:10.0, vertical:20.0),
        children: <Widget>[
          _crearInput(),
          Divider(),
          _crearEmail(),
          Divider(),
          _crearPassword(),
          Divider(),
          _crearFecha(context),
          Divider(),
          _crearDrowDown(),
          Divider(),
          _crearPersona(),
        ],
      )
    );
  }

  Widget _crearInput() {
    return TextField(
      autofocus: false,
      textCapitalization: TextCapitalization.sentences,
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20.0)
        ),
        counter: Text('Letras ${_nombre.length}'),
        hintText: 'Nombre de la persona',
        labelText: 'Nombre',
        helperText: 'Solo es el nombre',
        suffixIcon: Icon( Icons.accessibility ),
        icon: Icon( Icons.account_circle)
      ),
      onChanged: (valor){
        setState(() {
          _nombre = valor;
        });
      },
    );
  }

  Widget _crearPersona() {
    return ListTile(
      title: Text('Nombre es: $_nombre'),
      subtitle: Text('EMail es: $_email'),
      trailing: Text(_opcionSel),
    );
  }

  Widget _crearEmail() {
    return TextField(
      keyboardType: TextInputType.emailAddress,
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20.0)
        ),
        counter: Text('Letras ${_email.length}'),
        hintText: 'Email de la persona',
        labelText: 'Email',
        helperText: 'Solo es el Email',
        suffixIcon: Icon( Icons.accessibility ),
        icon: Icon( Icons.account_circle)
      ),
      onChanged: (valor){
        setState(() {
          _email = valor;
        });
      },
    );
  }

  Widget _crearPassword() {
    return TextField(
      obscureText: true,
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20.0)
        ),
        counter: Text('Letras ${_password.length}'),
        hintText: 'Password de la persona',
        labelText: 'Password',
        helperText: 'Solo es el Password',
        suffixIcon: Icon( Icons.accessibility ),
        icon: Icon( Icons.account_circle)
      ),
      onChanged: (valor){
        setState(() {
          _password = valor;
        });
      },
    );
  }

  Widget _crearFecha(context) {
    return TextField(
      enableInteractiveSelection: false,
      controller: _inputFieldController,
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20.0)
        ),
        hintText: 'Fecha nacimiento',
        labelText: 'Fecha nacimiento',
        suffixIcon: Icon( Icons.perm_contact_calendar ),
        icon: Icon( Icons.calendar_today)
      ),
      onTap: (){
        FocusScope.of(context).requestFocus(new FocusNode());
        _selectDate(context);
      },
    );
  }

  void _selectDate(BuildContext context) async {
    
    DateTime picked = await showDatePicker(
      context: context,
      initialDate: new DateTime.now(),
      firstDate: new DateTime(2020),
      lastDate: new DateTime(2025),
      locale: Locale('es','ES')
    );

    if(picked !=null){
      setState(() {
        _fecha = picked.toString();
        _inputFieldController.text = _fecha;
      });
    }
  }

  List<DropdownMenuItem<String>> getOpcionesDropDown(){

    List<DropdownMenuItem<String>> lista = new List();
    _poderes.forEach((poder){

        lista.add(DropdownMenuItem(
          child: Text(poder),
          value: poder,
        ));
    });

    return lista;
  }

  Widget _crearDrowDown() {

    return Row(
      children: <Widget>[
        Icon( Icons.select_all),
        SizedBox(width: 40.0,),
        Expanded(
                  child: DropdownButton(
            value: _opcionSel,
            items: getOpcionesDropDown(),
            onChanged: (opt){
            setState(() {
              _opcionSel = opt;
            });
              print(opt);
            },
          ),
        )
      ],
    );
;
  }
}