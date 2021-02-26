import 'package:flutter/material.dart';

final _icons = <String, IconData>{

  'add_alert'          : Icons.add_alert,
  'accessibility'      : Icons.accessibility,
  'folder_open'        : Icons.folder_open,
  'location_searching' : Icons.location_searching,
  'history'            : Icons.history,
  'group'              : Icons.group,
  'person_pin_circle'  : Icons.person_pin_circle,

};

Icon getIcon ( String nombreIcono){
  return Icon( _icons[nombreIcono], color: Colors.blue);
}

