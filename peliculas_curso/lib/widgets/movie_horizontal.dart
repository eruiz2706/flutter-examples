import  'package:flutter/material.dart';
import 'package:peliculas_curso/models/pelicula_model.dart';
 
 class MovieHorizontal extends StatelessWidget {
   
   final List<Pelicula> peliculas;
  final Function siguientePagina;

   MovieHorizontal({@required this.peliculas,@required this.siguientePagina});

   @override
   Widget build(BuildContext context) {

     final _pageController = new PageController(initialPage: 1,viewportFraction: 0.3);

    _pageController.addListener( () {

        if(_pageController.position.pixels >= _pageController.position.maxScrollExtent - 200){
          print("siguiente pagina");
          this.siguientePagina();
        }
      });

     final _screenSize = MediaQuery.of(context).size;

     return Container(
       height: _screenSize.height * 0.3,
       child: PageView.builder(
         pageSnapping: false,
         controller: _pageController,
         //children: _tarjetas()

         itemCount: peliculas.length,
         itemBuilder: (context, i) {
           return _tarjetas(context,peliculas[i]);
         },
       ),
     );
   }

    Widget _tarjetas(BuildContext context,Pelicula pelicula) {

      pelicula.uniqueId = '${pelicula.id}-poster';

    final tarjeta = Container(
        margin: EdgeInsets.only(right: 15.0),
        child: Column(
          children: <Widget>[
            Hero(
              tag: pelicula.uniqueId,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(15),
                child: FadeInImage(
                  image: NetworkImage(pelicula.getPosterImg()),
                  placeholder: AssetImage('assets/img/no-image.jpg'),
                  fit: BoxFit.cover,
                  height: 160.0,
                ),
              ),
            ),
            SizedBox(height: 5.0),
            Text(pelicula.title,overflow: TextOverflow.ellipsis)
          ],
        ),
      );

    return GestureDetector(
      child: tarjeta,
      onTap: (){
        print("presiono tarjeta ${pelicula.title}");
        Navigator.pushNamed(context,'detalle',arguments: pelicula);
      },
    );
  }

  /*List<Widget> _tarjetas() {
    return peliculas.map((pelicula){
      return Container(
        margin: EdgeInsets.only(right: 15.0),
        child: Column(
          children: <Widget>[
            ClipRRect(
              borderRadius: BorderRadius.circular(15),
              child: FadeInImage(
                image: NetworkImage(pelicula.getPosterImg()),
                placeholder: AssetImage('assets/img/no-image.jpg'),
                fit: BoxFit.cover,
                height: 160.0,
              ),
            ),
            SizedBox(height: 5.0),
            Text(pelicula.title,overflow: TextOverflow.ellipsis)
          ],
        ),
      );
    }).toList();
  }*/
 }