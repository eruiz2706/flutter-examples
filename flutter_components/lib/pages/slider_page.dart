import 'package:flutter/material.dart';

class SliderPage extends StatefulWidget {
  
  @override
  _SliderPageState createState() => _SliderPageState();
}

class _SliderPageState extends State<SliderPage> {

  double _valorSlider = 100.0;
  bool _bloquearCheck = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Slider'),
      ),
      body: Container(
        padding: EdgeInsets.only(top: 50.0),
        child: Column(
          children: <Widget>[
            _crearSlider(),
            _checkBox(),
            _switch(),
            _crearImagen()
          ],
        )
      )
    );
  }

  Widget _crearSlider() {
    return Slider(
      activeColor: Colors.indigoAccent,
      label: 'Tamaño de la imagen $_valorSlider',
      divisions: 10,
      value: _valorSlider,
      min: 10.0,
      max: 400.0,
      onChanged: (_bloquearCheck) ? null : (value) => onChangedSlider(value)
    );
  }

  void onChangedSlider(value){
    setState(() {
          _valorSlider = value;
    });
  }

  Widget _crearImagen() {
    return Expanded(
      child: Image(
        width: _valorSlider,
        image: NetworkImage('https://www.viajejet.com/wp-content/viajes/Lago-Moraine-Parque-Nacional-Banff-Alberta-Canada-1440x810.jpg'),
        fit: BoxFit.contain,
      )
    );
  }

  Widget _checkBox() {
    /*return Checkbox(
      value: _bloquearCheck,
      onChanged: (value){
        setState(() {
          _bloquearCheck = value;    
        });
      },
    );*/

    return CheckboxListTile(
      title: Text('Bloquear slider'),
      value: _bloquearCheck,
      onChanged: (value){
        setState(() {
          _bloquearCheck = value;    
        });
      },
    );
  }

  _switch() {
    return SwitchListTile(
      title: Text('Bloquear slider'),
      value: _bloquearCheck,
      onChanged: (value){
        setState(() {
          _bloquearCheck = value;    
        });
      },
    );
  }
}