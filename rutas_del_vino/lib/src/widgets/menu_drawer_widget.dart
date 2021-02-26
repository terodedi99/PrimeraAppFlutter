import 'package:flutter/material.dart';

class MenuWidget extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return Drawer(
      elevation: 7,
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          UserAccountsDrawerHeader(
              accountName: Text("Teresa Rodríguez"),
              accountEmail: Text("Teresa@alu.uclm.es"),
              currentAccountPicture: CircleAvatar(child: Image.network("https://cdn.icon-icons.com/icons2/587/PNG/512/support_icon-icons.com_55294.png"),
              ),
              decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/header_drawer.jpeg'),
                fit: BoxFit.cover
              )
            ),
            ),

          ListTile(
            leading: Icon( Icons.location_searching, color: Colors.blue ),
            trailing: Icon(Icons.keyboard_arrow_right, color: Colors.blue),
            title: Text('Localidades'),
            onTap: () => Navigator.pushReplacementNamed(context, 'localidades'),
          ),

          ListTile(
            leading: Icon( Icons.history, color: Colors.blue ),
            trailing: Icon(Icons.keyboard_arrow_right, color: Colors.blue),
            title: Text('Historial'),
            onTap: () => Navigator.pushReplacementNamed(context, 'historial'),
          ),

          ListTile(
            leading: Icon( Icons.group, color: Colors.blue ),
            trailing: Icon(Icons.keyboard_arrow_right, color: Colors.blue),
            title: Text('Grupos'),
            onTap: () => Navigator.pushReplacementNamed(context, 'grupos'),
          ),

          ListTile(
            leading: Icon( Icons.person_pin, color: Colors.blue ),
            trailing: Icon(Icons.keyboard_arrow_right, color: Colors.blue),
            title: Text('Guías'),
            onTap: () => Navigator.pushReplacementNamed(context, 'guias'),
          ),

          ListTile(
            leading: Icon( Icons.folder_shared, color: Colors.blue ),
            trailing: Icon(Icons.keyboard_arrow_right, color: Colors.blue),
            title: Text('Registro'),
            onTap: () => Navigator.pushReplacementNamed(context, 'registro'),
          ),

          ListTile(
            leading: Icon( Icons.exit_to_app, color: Colors.blue ),
            trailing: Icon(Icons.keyboard_arrow_right, color: Colors.blue),
            title: Text('Cerrar sesión'),
            onTap: () => Navigator.pushReplacementNamed(context, 'login'),
          ),
          

        ],
      ),
    );
  }
}