import 'package:fab_circular_menu/fab_circular_menu.dart';
import 'package:flutter/material.dart';
import 'package:rutas_del_vino/src/widgets/menu_drawer_widget.dart';

class HistorialPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text('Historial de circuitos'),
      ),
      drawer: MenuWidget(),
       body: ListView(
        padding: EdgeInsets.all(20.0),
        children: <Widget>[
          _cardHistorial('\nVisita día: 01/06/2020\n', 'Reserva a nombre de: Miguel Sánchez\nnº de personas: 10\nLugar: Almagro\nIdioma: español\n', context),
          SizedBox(height: 10.0),
          _cardHistorial('\nVisita día: 29/05/2020\n', 'Reserva a nombre de: María Gutiérrez\nnº de personas: 4\nLugar: Ciudad Real\nIdioma: español', context),
          SizedBox(height: 10.0),
          _cardHistorial('\nVisita día: 27/05/2020\n', 'Reserva a nombre de: Roisin McCarthy\nnº de personas: 16\nLugar: Campo de Criptana\nIdioma: inglés', context),
          SizedBox(height: 10.0),
          _cardHistorial('\nVisita día: 20/05/2020\n', 'Reserva a nombre de: Adrien Briand\nnº de personas: 8\nLugar: Valdepeñas\nIdioma: francés', context),
          SizedBox(height: 10.0),
          _cardHistorial('\nVisita día: 15/05/2020\n', 'Reserva a nombre de: Chen Liu\nnº de personas: 22\nLugar: Almagro\nIdioma: chino', context),
          SizedBox(height: 10.0),
          _cardHistorial('\nVisita día: 12/05/2020\n', 'Reserva a nombre de: Alicia Terreros\nnº de personas: 5 (con niños)\nLugar: Alcázar de San Juan\nIdioma: español', context),
          SizedBox(height: 10.0),
        ],
      ),
      
      floatingActionButton: FabCircularMenu(
        fabColor: Colors.blue,
        fabElevation: 10.0,
        fabOpenIcon: Icon(Icons.list, size: 35.0, color: Colors.white),
        fabCloseIcon: Icon(Icons.close, size: 35.0, color: Colors.white),
        ringColor: Colors.white.withOpacity(0.5),
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

  Widget _cardHistorial(String titulo, String subtitulo, BuildContext context) {
     final card = Container(
      child: Column(
        children: <Widget>[
          ListTile(
              trailing: Icon( Icons.history, color: Colors.orange[800], size: 70.0),
              title: Text(titulo,
                style: TextStyle(
                  color: Colors.grey[800],
                  fontSize: 20.0,
                ),
              ),
              subtitle: Text(subtitulo,
                style: TextStyle(
                  color: Colors.grey[600],
                  fontSize: 17.0,
            ),
              ),
            ),

          Container(
            child: BottomNavigationBar (
              backgroundColor: Colors.white,
              currentIndex : 0,
              fixedColor : Colors.orange[800],
              unselectedItemColor: Colors.orange[800],
              items: <BottomNavigationBarItem>[
                BottomNavigationBarItem(
                  icon: Icon(Icons.call),
                  title: Text('Llamar al cliente'),
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.info),
                  title: Text('Información'),
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.star),
                  title: Text('Consultar opiniones'),
                ), 
              ],
              onTap: (int index) {
                if (index == 1){
                  _mostrarInformacion(context);
                } else if (index == 0) {
                  _mostrarAlerta(context);
                } else {
                  _mostrarOpinion(context);
                }
              }
            ),
          ),
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

  void _mostrarAlerta(BuildContext context){
    showDialog(
      context: context,
      barrierDismissible: false, // Cerrar la alerta haciendo click fuera
      builder: (context) {
        return AlertDialog(
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
          title: Text('Alerta'),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Text('Este botón marcaría automáticamente el número del cliente e iniciaría la llamada. \n'),
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

  void _mostrarInformacion(BuildContext context){
    showDialog(
      context: context,
      barrierDismissible: true, // Cerrar la alerta haciendo click fuera
      builder: (context) {
        return AlertDialog(
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
          title: Text('Información detallada',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 22.0,
                  fontWeight: FontWeight.bold,
                ),
              ),

          content:Text('Reserva a nombre de:\nTeléfono de contacto:\nFecha:\nNúmero de personas:\nEdades del grupo:\nLugar:\nIdioma:\n\n (Ejemplo de visionado)',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 20.0,
                ),
          ),
        );
      }
    );
  }

  void _mostrarOpinion(BuildContext context){
    showDialog(
      context: context,
      barrierDismissible: true, // Cerrar la alerta haciendo click fuera
      builder: (context) {
        return AlertDialog(
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
          title: Text('Media de las opiniones:'),
          content: Row(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Icon(Icons.star, color: Colors.orange[800].withOpacity(0.9), size: 30.0),
              Icon(Icons.star, color: Colors.orange[800].withOpacity(0.9), size: 30.0),
              Icon(Icons.star, color: Colors.orange[800].withOpacity(0.9), size: 30.0),
              Icon(Icons.star, color: Colors.orange[800].withOpacity(0.9), size: 30.0),
            ],
          ),
        );
      }
    );
  }

}

