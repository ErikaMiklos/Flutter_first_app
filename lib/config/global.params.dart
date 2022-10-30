import 'package:flutter/material.dart';

class GlobalParams{
  static List<Map<String, dynamic>> menus=[
    {
      "title":"Counter",
      "icon":const Icon(Icons.home, color:Colors.orange),
      "route":"/counter"
    },
    {
      "title":"Meteo",
      "icon":const Icon(Icons.camera, color:Colors.orange),
      "route":"/meteo"
    },
    {
      "title":"Gallery",
      "icon":const Icon(Icons.map, color:Colors.orange),
      "route":"/gallery"
    }
  ];
}