import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {

  String _email  = '';
  String _password  = '';

  //TextEditingController _inputFieldDateController = new TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.orange[50],
      appBar: AppBar(
        title: Text('Login'),
        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.help),
            tooltip: 'Ayuda',
            onPressed: () {
              _mostrarInformacion(context);
            },
          ),
        ],
      ),

      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 20.0),
        children: <Widget>[
          Text('Rutas del Vino',
            textAlign: TextAlign.center,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 50.0, color: Colors.orangeAccent),
          ),
          SizedBox(height: 10.0),
          _cardImageCiudadReal(),
          SizedBox(height: 20.0),
          _inicioSesion(),
          Divider(),
          _introducirEmail(),
          Divider(),
          _introducirPassword(),
          Divider(),
        ],
      ),

      floatingActionButton: FloatingActionButton.extended(
        elevation: 5.0,
        label: Text('Entrar'),
        icon: Icon( Icons.arrow_forward_ios ),
        backgroundColor: Colors.orange,
        onPressed: () {
          if (_email == 'Teresa@alu.uclm.es' && _password == '1999'){
            Navigator.pushReplacementNamed(context, 'localidades');
          } else {
            _mostrarAlerta(context);
          }
          
        },
      ),
    );
  }

  Widget _introducirEmail() {

    return TextField(
      keyboardType: TextInputType.emailAddress,
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20.0)
        ),
        hintText: 'ejemplo@alu.uclm.es',
        labelText: 'Email',
        suffixIcon: Icon( Icons.alternate_email ),
        icon: Icon( Icons.email )
      ),
      onChanged: (valor) =>setState(() {
        _email = valor;
      })
    );
    }

  Widget _introducirPassword(){

     return TextField(
      obscureText: true,
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20.0)
        ),
        hintText: 'Password',
        labelText: 'Password',
        suffixIcon: Icon( Icons.lock_open ),
        icon: Icon( Icons.lock )
      ),
      onChanged: (valor) =>setState(() {
        _password = valor;
      })
    );
  }

  void _mostrarAlerta(BuildContext context){
    showDialog(
      context: context,
      barrierDismissible: true, // Cerrar la alerta haciendo click fuera
      builder: (context) {
        return AlertDialog(
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
          title: Text('Alerta',),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Text('El usuario o contraseña introducidos son incorrectos, por favor inténtelo de nuevo. \n'),
              FlutterLogo(size: 50.0)
            ],
          ),
          actions: <Widget>[
            FlatButton(
              child: Text('De acuerdo'),
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
          title: Text('Ayuda inicio de sesión',
          textAlign: TextAlign.center),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Text('Email: Teresa@alu.uclm.es'),
              Text('Password: 1999 \n'),
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

  Widget _cardImageCiudadReal() {

    final card = Container(
      child: Column(
        children: <Widget>[
          FadeInImage(
            image: NetworkImage('https://aws.traveler.es/prod/designs/v1/assets/2000x1333/133395.jpg'),
            placeholder: AssetImage('assets/jar-loading.gif'),
            fadeInDuration: Duration( milliseconds: 200),
            height: 300.0,
            fit: BoxFit.cover,
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
            offset: Offset(1.0, 5.0)
          )
        ]
      ),
      child: ClipRRect( // Cortar cualquier cosa que se encuentra fuera de este contenedor
        borderRadius: BorderRadius.circular(20.0),
        child: card,
      ),
    );
  }

  Widget _inicioSesion(){
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
         children: <Widget>[
          ListTile(
            leading: Icon( Icons.input, color: Colors.orangeAccent, size: 30.0),
            title: Text('Inicio de sesión', 
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30.0, color: Colors.black38),
            overflow: TextOverflow.ellipsis,
            textAlign: TextAlign.start
            ),
          ),
        ]
      ),
    );
  }
}
