import 'package:fab_circular_menu/fab_circular_menu.dart';
import 'package:flutter/material.dart';
import 'package:rutas_del_vino/src/widgets/menu_drawer_widget.dart';
import 'package:slimy_card/slimy_card.dart';

class GuiasPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      resizeToAvoidBottomPadding: false,
      appBar: AppBar(
        title: Text('Guías turísticos'),
      ),
      drawer: MenuWidget(),
      body: ListView(
        padding: EdgeInsets.all(20.0),
        
        children: <Widget>[
          _cardPrimerGuia('Paula Jiménez García', 'Nº de teléfono: 639 30 45 86\nFecha de nacimiento: 12/05/1987\nNacionalidad: española'),
          SizedBox(height: 30.0),
          _cardSegundoGuia('Fabio Rossi Marino', 'Nº de teléfono: 606 01 07 53\nFecha de nacimiento: 05/10/1985\nNacionalidad: italiana'),
          SizedBox(height: 30.0),
          _cardTercerGuia('Valentina Rodríguez González', 'Nº de teléfono: 609 25 74 34\nFecha de nacimiento: 18/02/1990\nNacionalidad: argentina'),
          SizedBox(height: 30.0),
          _cardCuartoGuia('Mario Ortega Benito', 'Nº de teléfono: 620 95 80 03\nFecha de nacimiento: 24/07/1984\nNacionalidad: española'),
          SizedBox(height: 30.0),
          _cardQuintoGuia('Alexandre Bourdeu Moreau', 'Nº de teléfono: 682 63 39 81\nFecha de nacimiento: 20/11/1985\nNacionalidad: francesa'),
          SizedBox(height: 30.0),
          _cardSextoGuia('María Wang Sánchez', 'Nº de teléfono: 616 81 67 33\nFecha de nacimiento: 07/06/1991\nNacionalidad: china'),
        ],
      ),

      floatingActionButton: FabCircularMenu(
        fabColor: Colors.blue,
        fabElevation: 10.0,
        fabOpenIcon: Icon(Icons.list, size: 35.0, color: Colors.white),
        fabCloseIcon: Icon(Icons.close, size: 35.0, color: Colors.white),
        ringColor: Colors.white.withOpacity(0.8),
        ringWidth: 50.0,
        ringDiameter: 220.0,
          children: <Widget>[
            IconButton(icon: Icon(Icons.delete), color: Colors.blue, iconSize: 40.0, onPressed: () { _mostrarAlerta(context);}),
            IconButton(icon: Icon(Icons.add), color: Colors.blue, iconSize: 40.0, onPressed: () { _mostrarAlerta(context);}),
            IconButton(icon: Icon(Icons.mode_edit), color: Colors.blue, iconSize: 40.0, onPressed: () { _mostrarAlerta(context);}),
          ],
        ),
    );
  }

  Widget _cardPrimerGuia(String nombre, String info) {
    return SlimyCard(
            color: Colors.orangeAccent,
            width: 330,
            topCardHeight: 285,
            bottomCardHeight: 150,
            borderRadius: 15,
            topCardWidget: topCardWidget('Paula Jiménez', 'español e inglés', 'Ciudad Real y Almagro', 'https://cdn.icon-icons.com/icons2/1879/PNG/512/iconfinder-9-avatar-2754584_120518.png'),
            bottomCardWidget: bottomCardWidget(nombre, info),
            slimeEnabled: true,
    );
  }

  Widget _cardSegundoGuia(String nombre, String info) {
    return SlimyCard(
            color: Colors.orangeAccent,
            width: 330,
            topCardHeight: 285,
            bottomCardHeight: 150,
            borderRadius: 15,
            topCardWidget: topCardWidget('Fabio Rossi', 'italiano y francés', 'Campo de Criptana', 'https://cdn.icon-icons.com/icons2/1879/PNG/512/iconfinder-10-avatar-2754575_120521.png'),
            bottomCardWidget: bottomCardWidget(nombre, info),
            slimeEnabled: true,
    );
  }

   Widget _cardTercerGuia(String nombre, String info) {
    return SlimyCard(
            color: Colors.orangeAccent,
            width: 330,
            topCardHeight: 285,
            bottomCardHeight: 150,
            borderRadius: 15,
            topCardWidget: topCardWidget('Valentina Rodríguez', 'español y alemán', 'Alcázar de San Juan y Almagro', 'https://cdn.icon-icons.com/icons2/1879/PNG/512/iconfinder-4-avatar-2754580_120522.png'),
            bottomCardWidget: bottomCardWidget(nombre, info),
            slimeEnabled: true,
    );
  }

   Widget _cardCuartoGuia(String nombre, String info) {
    return SlimyCard(
            color: Colors.orangeAccent,
            width: 330,
            topCardHeight: 285,
            bottomCardHeight: 150,
            borderRadius: 15,
            topCardWidget: topCardWidget('Marío Ortega', 'español y alemán', 'Valdepeñas y Ciudad Real', 'https://cdn.icon-icons.com/icons2/1879/PNG/512/iconfinder-1-avatar-2754574_120513.png'),
            bottomCardWidget: bottomCardWidget(nombre, info),
            slimeEnabled: true,
    );
  }

   Widget _cardQuintoGuia(String nombre, String info) {
    return SlimyCard(
            color: Colors.orangeAccent,
            width: 330,
            topCardHeight: 285,
            bottomCardHeight: 150,
            borderRadius: 15,
            topCardWidget: topCardWidget('Alexandre Bourdeu', 'francés y español', 'Ciudad Real y Campo de Criptana', 'https://cdn.icon-icons.com/icons2/1879/PNG/512/iconfinder-8-avatar-2754583_120515.png'),
            bottomCardWidget: bottomCardWidget(nombre, info),
            slimeEnabled: true,
    );
  }

   Widget _cardSextoGuia(String nombre, String info) {
    return SlimyCard(
            color: Colors.orangeAccent,
            width: 330,
            topCardHeight: 285,
            bottomCardHeight: 150,
            borderRadius: 15,
            topCardWidget: topCardWidget('María Wang', 'chino, español e inglés', 'Ciudad Real', 'https://cdn.icon-icons.com/icons2/1879/PNG/512/iconfinder-11-avatar-2754576_120520.png'),
            bottomCardWidget: bottomCardWidget(nombre, info),
            slimeEnabled: true,
    );
  }

  Widget topCardWidget(String nombre, String idioma, String localidad, String rutaImagen) {
    return Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          FadeInImage(
            image: NetworkImage('$rutaImagen'),
            placeholder: AssetImage('assets/jar-loading.gif'),
            fadeInDuration: Duration( milliseconds: 200),
            height: 100.0,
            fit: BoxFit.cover,
          ),
          SizedBox(height: 15),

          Container(
              child: Text(nombre,
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold))),
          SizedBox(height: 15),

          Text('Idiomas: $idioma',
            style: TextStyle(
              color: Colors.white.withOpacity(0.8), 
              fontSize: 16,
              fontWeight: FontWeight.w500),
          ),
          SizedBox(height: 5),
          Text('Localidades: $localidad',
            style: TextStyle (
                color: Colors.white.withOpacity(0.8),
                fontSize: 15,
                fontWeight: FontWeight.w500),
          ),
        ]);
  }

  Widget bottomCardWidget(String nombre, String info) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          ListTile(
            leading: Icon( Icons.person_pin_circle, color: Colors.white.withOpacity(0.8), size: 70.0),
            title: Text(nombre),
            subtitle: Text(info),
          ),
        ],
      ),
    );
  }

  void _mostrarAlerta(BuildContext context){
    showDialog(
      context: context,
      barrierDismissible: false, // Cerrar la alerta haciendo click fuera
      builder: (context) {
        return AlertDialog(
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
          title: Text('Alerta (Opciones sobre guías)'),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Text('Ha seleccionado la opción "añadir, eliminar o modificar guías".\nLa aplicación no tiene capa de persistencia, por lo que esta opción no está disponible.\n'),
              FlutterLogo(size: 50.0)
            ],
          ),
          actions: <Widget>[
            FlatButton(
              child: Text('De acuerdo',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18.0)),
              onPressed: () => Navigator.of(context).pop(), 
            ),
          ],
        );
      }
    );
  }

}

