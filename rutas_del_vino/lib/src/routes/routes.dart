
import 'package:flutter/cupertino.dart';
import 'package:rutas_del_vino/src/pages/grupos_pages.dart';
import 'package:rutas_del_vino/src/pages/guias_pages.dart';
import 'package:rutas_del_vino/src/pages/historial_page.dart';
import 'package:rutas_del_vino/src/pages/localidades_page.dart';
import 'package:rutas_del_vino/src/pages/login_page.dart';
import 'package:rutas_del_vino/src/pages/registro_page.dart';

Map<String, WidgetBuilder> getApplicationRoutes() {
  return <String, WidgetBuilder>{
    'localidades': (BuildContext context) => LocalidadesPage(),
    'historial'  : (BuildContext context) => HistorialPage(),
    'grupos'     : (BuildContext context) => GruposPage(),
    'guias'      : (BuildContext context) => GuiasPage(),
    'registro'   : (BuildContext context) => RegistroPage(),
    'login'      : (BuildContext context) => LoginPage(),

  };
}