import 'package:flutter/material.dart';
import 'package:peliculas_curso/models/actores_model.dart';
import 'package:peliculas_curso/models/pelicula_model.dart';
import 'package:peliculas_curso/providers/peliculas_provider.dart';

class PeliculaDetallePage extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {

    final Pelicula pelicula = ModalRoute.of(context).settings.arguments;

    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          _crearAppbar(pelicula),
          SliverList(
            delegate: SliverChildListDelegate([
              SizedBox(height: 10.0),
              _posterTitulo(pelicula),
              _descripcion(pelicula),
              _descripcion(pelicula),
              _crearCasting(pelicula)
            ])
          )
        ],
      ),
    );
  }

  Widget _crearAppbar(Pelicula pelicula) {
    return SliverAppBar(
      elevation: 2.0,
      backgroundColor: Colors.indigoAccent,
      expandedHeight: 200.0,
      pinned: true,
      flexibleSpace: FlexibleSpaceBar(
        centerTitle: true,
        title: Text(
          pelicula.title,
          style: TextStyle(color: Colors.white,fontSize: 14.0),
        ),
        background: FadeInImage(
          image: NetworkImage(pelicula.getBackgroundImg()),
          placeholder: AssetImage('assets/img/loading.gif'),
          fadeInDuration: Duration(milliseconds: 15),
          fit: BoxFit.cover,
        ),
      ),
      
    );
  }

  Widget _posterTitulo(Pelicula pelicula) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal:20.0),
      child: Row(
        children: <Widget>[
          Hero(
            tag: pelicula.id,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20.0),
              child: Image(
                image: NetworkImage(pelicula.getPosterImg()),
                height: 150.0,
              ),
            ),
          ),
          SizedBox(width: 20.0),
          Flexible(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(pelicula.title,style: TextStyle(fontSize: 16),overflow: TextOverflow.ellipsis),
                Text(pelicula.originalTitle),
                Row(
                  children: <Widget>[
                    Icon( Icons.star_border),
                    Text(pelicula.voteAverage.toString())
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget _descripcion(Pelicula pelicula) {
    return Container(
      padding: EdgeInsets.all(15.0),
      child: Text(
        pelicula.overview,
        textAlign: TextAlign.justify,
      ),
    );
  }

  Widget _crearCasting(Pelicula pelicula) {

    final peliculasProvider = new PeliculasProvider();
    final peliId = pelicula.id.toString();
    
    return FutureBuilder(
      future: peliculasProvider.getCast(peliId),
      //initialData: ,
      builder: (BuildContext context, AsyncSnapshot<List> snapshot){
        
        if(snapshot.hasData){
          return _crearActoresPageView(snapshot.data);
        }else{
          return Center(
            child: CircularProgressIndicator(),
          );
        }

      }
    
    );

  }

  Widget _crearActoresPageView(List<Actor> actores) {

    return SizedBox(
      height: 200.0,
      child: PageView.builder(
        pageSnapping: false,
        itemCount: actores.length,
        controller: PageController(
          viewportFraction: 0.3,
          initialPage:1
        ),
        itemBuilder: (context,i){
          return _actorTarjeta(actores[i]);
        },
      ),
    );

  }

  Widget _actorTarjeta(Actor actor){
    return Container(
      child: Column(
        children: <Widget>[
          ClipRRect(
            borderRadius: BorderRadius.circular(20.0),
            child: FadeInImage(
              height: 150.0,
              image: NetworkImage(actor.getFoto()),
              placeholder: AssetImage('assets/img/no-image.jpg'),
              fit: BoxFit.cover,
            ),
          ),
          Text(actor.name,overflow: TextOverflow.ellipsis,)
        ],
      ),
    );
  }
}