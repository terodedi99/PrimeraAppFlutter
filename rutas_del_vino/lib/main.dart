import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:rutas_del_vino/src/pages/localidades_page.dart';
import 'package:rutas_del_vino/src/routes/routes.dart';

void main() => runApp(MyApp());
 
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Rutas del Vino App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      debugShowCheckedModeBanner: false,

      localizationsDelegates: [
      // Idiomas
      GlobalMaterialLocalizations.delegate,
      GlobalWidgetsLocalizations.delegate,
      GlobalCupertinoLocalizations.delegate,
      ],

      supportedLocales: [
        const Locale('es', 'ES'), // Español
        const Locale('en', 'EN'), // English
    
      ],

      initialRoute: 'login',
      routes: getApplicationRoutes(),

      onGenerateRoute: (RouteSettings settings) {
        print( 'Ruta seleccionada: ${ settings.name }' );
        return MaterialPageRoute(
          builder: (BuildContext context) => LocalidadesPage()
        );
      },
    );
  }

}