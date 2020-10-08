import 'package:flutter/material.dart';

class BasicoPage extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Container(
              width: double.infinity,
              child: Image(
                image: NetworkImage('https://images.unsplash.com/photo-1570554182189-26894055a620?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=967&q=80'),
                fit: BoxFit.cover,
                height: 200.0,
              ),
            ),
            _datos1(),
            _datos2(),
            _datos3(),
            _datos3(),
            _datos3(),
            _datos3(),
            _datos3(),
          ],
        ),
      )
    );
  }

  Widget _datos1() {

    final estiloTitulo = TextStyle(fontSize: 20.0,fontWeight: FontWeight.bold);
    final estiloSubTitulo = TextStyle(fontSize: 18.0,fontWeight: FontWeight.normal,color: Colors.grey);

    return Container(
      padding: EdgeInsets.symmetric(horizontal:30.0,vertical:20.0),
      child: Row(
        children: <Widget>[
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text('Lago con un puente',style: estiloTitulo,),
                SizedBox(height: 7.0,),
                Text('Un lago en Alemania',style: estiloSubTitulo,),
              ],
            ),
          ),
          Icon( Icons.star_border,color: Colors.red,size: 30.0,),
          Text('41',style: TextStyle(fontSize: 20.0),)
        ],
      ),
    );
  }

  Widget _datos2() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        _crearAccion(Icons.call,'Call'),
        _crearAccion(Icons.near_me,'Row'),
        _crearAccion(Icons.share,'Share')
      ],
    );
  }

  Widget _crearAccion(IconData icon,String texto){
    return Column(
      children: <Widget>[
        Icon(icon,color: Colors.blue,size: 40.0,),
        SizedBox(height: 5.0,),
        Text(texto,style: TextStyle(fontSize: 15.0,color: Colors.blue),)
      ],
    );
  }

  Widget _datos3() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal:40.0,vertical:20.0),
      child: Text(
        'Id sint nostrud labore culpa do mollit. Et pariatur proident excepteur esse pariatur ad sit. Consequat do sit aliqua reprehenderit sit magna. Amet aute nulla velit velit magna deserunt reprehenderit cillum deserunt adipisicing id. Sunt officia aute laboris sunt est eu sint et et labore. Nisi reprehenderit minim ullamco est laborum. Enim fugiat pariatur pariatur culpa sit eu cillum sunt anim culpa dolor aute sunt elit.',
        textAlign: TextAlign.justify,
      ),
    );
  }
}