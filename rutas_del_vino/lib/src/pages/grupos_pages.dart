import 'package:fab_circular_menu/fab_circular_menu.dart';
import 'package:flutter/material.dart';
import 'package:rutas_del_vino/src/widgets/menu_drawer_widget.dart';

class GruposPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text('Grupos de turistas'),
      ),
      drawer: MenuWidget(),
      body: 
        new ListView(
              children: [
                _buildItem('Visita día: 01/06/2020', 'Miguel Sánchez', context),
                Divider(),
                _buildItem('Visita día: 29/05/2020', 'María Gutiérrez', context),
                Divider(),
                _buildItem('Visita día: 27/05/2020', 'Roisin McCarthy', context),
                Divider(),
                _buildItem('Visita día: 20/05/2020', 'Adrien Briand', context),
                Divider(),
                _buildItem('Visita día: 15/05/2020', 'Chen Liu', context),
                Divider(),
                _buildItem('Visita día: 12/05/2020', 'Alicia Terreros', context)
              ]
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

  Widget _buildItem(String titulo, String subtitulo, BuildContext context) {
     return Column(
      children: <Widget>[
        new ListTile(
          title: new Text(titulo, 
            style: TextStyle(
              color: Colors.grey[800],
              fontSize: 20.0,
            ),
          ),
          subtitle: new Text(subtitulo, 
            style: TextStyle(
              color: Colors.grey[600],
              fontSize: 17.0,
            ),
          ), 
          leading: CircleAvatar(
          backgroundColor: Colors.orange[800],
            child: Text(subtitulo[0], 
              style: TextStyle(
                color: Colors.white,
              ) ,
            ),
          ),
        ),
    
        new BottomNavigationBar (
          
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
              icon: Icon(Icons.map),
              title: Text('Visualizar ruta'),
            ), 
          ],
          onTap: (int index) {
            if (index == 1){
              _mostrarInformacion(context);
            } else if (index == 0) {
              _mostrarAlerta(context);
            } else {
              _mostrarMapa(context);
            }
          }
        ),
      ],
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

  void _mostrarMapa(BuildContext context){
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
              Text('Este botón sería un acceso directo a Google Maps. Se valoró la implementación pero hacían falta licencias asociadas a una tarjeta de pago.\n'),
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
 
