import 'package:flutter/material.dart';
import 'package:rutas_del_vino/src/widgets/menu_drawer_widget.dart';
 
class LocalidadesPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Localidades'),
      ),
      drawer: MenuWidget(),
      body: ListView(
        padding: EdgeInsets.all(20.0),
        children: <Widget>[
          _cardInfoCiudadReal(),
          SizedBox(height: 30.0),
          _cardImageCiudadReal(),
          SizedBox(height: 30.0),
          _cardInfoValdepenas(),
          SizedBox(height: 30.0),
          _cardImageValdepenas(),
          SizedBox(height: 30.0),
          _cardInfoAlmagro(),
          SizedBox(height: 30.0),
          _cardImageAlmagro(),
          SizedBox(height: 30.0),
          _cardInfoAlcazar(),
          SizedBox(height: 30.0),
          _cardImageAlcazar(),
          SizedBox(height: 30.0),
          _cardInfoCampo(),
          SizedBox(height: 30.0),
          _cardImageCampo(),
          SizedBox(height: 30.0),
        ],
      ),
    );
  }

  Widget _cardInfoCiudadReal() {
    return Card(
      elevation: 10.0,
      shape: RoundedRectangleBorder( borderRadius: BorderRadius.circular(20.0)),
      child: Column(
        children: <Widget>[
          ListTile(
            leading: Icon( Icons.location_on, color: Colors.blue, size: 50.0),
            title: Text('Ciudad Real'),
            subtitle: Text('Ciudad Real se encuentra en el centro de España, al sur de Madrid. La Puerta de Toledo es una de las puertas originales de la ciudad, de estilo mudéjar.'),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              FlatButton(
                child: Text('Ver opiniones'),
                onPressed: () {},
              ),
              FlatButton(
                child: Text('Ver fechas disponibles'),
                onPressed: () {},
              )
            ],
          )
        ],
      ), 
    );
  }

  Widget _cardImageCiudadReal() {

    final card = Container(
      child: Column(
        children: <Widget>[
          FadeInImage(
            image: NetworkImage('https://i.promecal.es/IMG/2012/039725B4-9373-D94A-A6EB80E75026D1B6.JPG'),
            placeholder: AssetImage('assets/jar-loading.gif'),
            fadeInDuration: Duration( milliseconds: 200),
            height: 300.0,
            fit: BoxFit.cover,
          ),

          Container(
            padding: EdgeInsets.all(10.0),
            child: Text('Puerta de Toledo. Ciudad Real.')
          )

        ],
      ),
    );

    // Para que nada sobresalga de los bordes de la tarjeta "Card"
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20.0),
        color: Colors.white,
        boxShadow: <BoxShadow>[
          BoxShadow(
            color: Colors.black26,
            blurRadius: 10.0,
            spreadRadius: 2.0,
            offset: Offset(2.0, 10.0)
          )
        ]
      ),
      child: ClipRRect( // Cortar cualquier cosa que se encuentra fuera de este contenedor
        borderRadius: BorderRadius.circular(20.0),
        child: card,
      ),
    );
  }

  Widget _cardInfoValdepenas() {
    return Card(
      elevation: 10.0,
      shape: RoundedRectangleBorder( borderRadius: BorderRadius.circular(20.0)),
      child: Column(
        children: <Widget>[
          ListTile(
            leading: Icon( Icons.location_on, color: Colors.blue, size: 50.0),
            title: Text('Valdepeñas'),
            subtitle: Text('Valdepeñas es una de las ciudades más importante de la provincia de Ciudad Real, está situada al sudeste y cerca de Sierra Morena.'),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              FlatButton(
                child: Text('Ver opiniones'),
                onPressed: () {},
              ),
              FlatButton(
                child: Text('Ver fechas disponibles'),
                onPressed: () {},
              )
            ],
          )
        ],
      ), 
    );
  }

  Widget _cardImageValdepenas() {

    final card = Container(
      child: Column(
        children: <Widget>[
          FadeInImage(
            image: NetworkImage('https://upload.wikimedia.org/wikipedia/commons/a/a4/Valdepe%C3%B1as_-_Plaza_de_Espa%C3%B1a_03.JPG'),
            placeholder: AssetImage('assets/jar-loading.gif'),
            fadeInDuration: Duration( milliseconds: 200),
            height: 300.0,
            fit: BoxFit.cover,
          ),

          Container(
            padding: EdgeInsets.all(10.0),
            child: Text('Plaza de España. Valdepeñas.')
          )

        ],
      ),
    );

    // Para que nada sobresalga de los bordes de la tarjeta "Card"
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20.0),
        color: Colors.white,
        boxShadow: <BoxShadow>[
          BoxShadow(
            color: Colors.black26,
            blurRadius: 10.0,
            spreadRadius: 2.0,
            offset: Offset(2.0, 10.0)
          )
        ]
      ),
      child: ClipRRect( // Cortar cualquier cosa que se encuentra fuera de este contenedor
        borderRadius: BorderRadius.circular(20.0),
        child: card,
      ),
    );
  }

  Widget _cardInfoAlmagro() {
    return Card(
      elevation: 10.0,
      shape: RoundedRectangleBorder( borderRadius: BorderRadius.circular(20.0)),
      child: Column(
        children: <Widget>[
          ListTile(
            leading: Icon( Icons.location_on, color: Colors.blue, size: 50.0),
            title: Text('Almagro'),
            subtitle: Text('Almagro, en el Campo de Calatrava, en el centro mismo de la provincia. La ciudad del teatro de corral, alberga el único Corral de Comedias que se ha mantenido intacto y en activo desde principios del siglo XVII.'),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              FlatButton(
                child: Text('Ver opiniones'),
                onPressed: () {},
              ),
              FlatButton(
                child: Text('Ver fechas disponibles'),
                onPressed: () {},
              )
            ],
          )
        ],
      ), 
    );
  }

  Widget _cardImageAlmagro() {

    final card = Container(
      child: Column(
        children: <Widget>[
          FadeInImage(
            image: NetworkImage('https://anterior.eldigitalcastillalamancha.es/imagenes/fotosdeldia/alm2.jpg'),
            placeholder: AssetImage('assets/jar-loading.gif'),
            fadeInDuration: Duration( milliseconds: 200),
            height: 300.0,
            fit: BoxFit.cover,
          ),

          Container(
            padding: EdgeInsets.all(10.0),
            child: Text('Plaza del Ayuntamiento. Almagro.')
          )

        ],
      ),
    );

    // Para que nada sobresalga de los bordes de la tarjeta "Card"
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20.0),
        color: Colors.white,
        boxShadow: <BoxShadow>[
          BoxShadow(
            color: Colors.black26,
            blurRadius: 10.0,
            spreadRadius: 2.0,
            offset: Offset(2.0, 10.0)
          )
        ]
      ),
      child: ClipRRect( // Cortar cualquier cosa que se encuentra fuera de este contenedor
        borderRadius: BorderRadius.circular(20.0),
        child: card,
      ),
    );
  }

  Widget _cardInfoAlcazar() {
    return Card(
      elevation: 10.0,
      shape: RoundedRectangleBorder( borderRadius: BorderRadius.circular(20.0)),
      child: Column(
        children: <Widget>[
          ListTile(
            leading: Icon( Icons.location_on, color: Colors.blue, size: 50.0),
            title: Text('Alcázar de San Juan'),
            subtitle: Text('Este municipio rivaliza con Alcalá de Henares por ser el lugar de nacimiento del célebre autor del Quijote, desde que en 1748 fue encontrada en la iglesia de Santa María la Mayor la partida de bautismo de "Miguel de Cervantes Saavedra".'),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              FlatButton(
                child: Text('Ver opiniones'),
                onPressed: () {},
              ),
              FlatButton(
                child: Text('Ver fechas disponibles'),
                onPressed: () {},
              )
            ],
          )
        ],
      ), 
    );
  }

  Widget _cardImageAlcazar() {

    final card = Container(
      child: Column(
        children: <Widget>[
          FadeInImage(
            image: NetworkImage('https://diariodelamancha.com/wp-content/uploads/2019/08/molinos-alcazar-de-san-juan.jpg'),
            placeholder: AssetImage('assets/jar-loading.gif'),
            fadeInDuration: Duration( milliseconds: 200),
            height: 300.0,
            fit: BoxFit.cover,
          ),

          Container(
            padding: EdgeInsets.all(10.0),
            child: Text('Molinos de Viento. Alcázar de San Juan.')
          )

        ],
      ),
    );

    // Para que nada sobresalga de los bordes de la tarjeta "Card"
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20.0),
        color: Colors.white,
        boxShadow: <BoxShadow>[
          BoxShadow(
            color: Colors.black26,
            blurRadius: 10.0,
            spreadRadius: 2.0,
            offset: Offset(2.0, 10.0)
          )
        ]
      ),
      child: ClipRRect( // Cortar cualquier cosa que se encuentra fuera de este contenedor
        borderRadius: BorderRadius.circular(20.0),
        child: card,
      ),
    );
  }

  Widget _cardInfoCampo() {
    return Card(
      elevation: 10.0,
      shape: RoundedRectangleBorder( borderRadius: BorderRadius.circular(20.0)),
      child: Column(
        children: <Widget>[
          ListTile(
            leading: Icon( Icons.location_on, color: Colors.blue, size: 50.0),
            title: Text('Campo de Criptana'),
            subtitle: Text('En la localidad se conserva una amplia muestra de los típicos molinos contra los que luchó Don Quijote en el capítulo VIII del libro universal de Cervantes, convertidos así en seña de identidad de La Mancha. De un total de diez molinos, tres datan del siglo XVI: Molino Burleta, Molino Infanto y Molino Sardinero.​'),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              FlatButton(
                child: Text('Ver opiniones'),
                onPressed: () {},
              ),
              FlatButton(
                child: Text('Ver fechas disponibles'),
                onPressed: () {},
              )
            ],
          )
        ],
      ), 
    );
  }

  Widget _cardImageCampo() {

    final card = Container(
      child: Column(
        children: <Widget>[
          FadeInImage(
            image: NetworkImage('https://ucmedia.er2.co/es/des/9/f/1600/29970.jpg'),
            placeholder: AssetImage('assets/jar-loading.gif'),
            fadeInDuration: Duration( milliseconds: 200),
            height: 300.0,
            fit: BoxFit.cover,
          ),

          Container(
            padding: EdgeInsets.all(10.0),
            child: Text('Ruta del Quijote. Campo de Criptana.')
          )

        ],
      ),
    );

    // Para que nada sobresalga de los bordes de la tarjeta "Card"
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20.0),
        color: Colors.white,
        boxShadow: <BoxShadow>[
          BoxShadow(
            color: Colors.black26,
            blurRadius: 10.0,
            spreadRadius: 2.0,
            offset: Offset(2.0, 10.0)
          )
        ]
      ),
      child: ClipRRect( // Cortar cualquier cosa que se encuentra fuera de este contenedor
        borderRadius: BorderRadius.circular(20.0),
        child: card,
      ),
    );
  }



}