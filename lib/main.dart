import 'package:first_app/ui/pages/counter.page.dart';
import 'package:first_app/ui/pages/gallery.page.dart';
import 'package:first_app/ui/pages/home.page.dart';
import 'package:first_app/ui/pages/meteo.page.dart';
import 'package:flutter/material.dart';

void main() => runApp(const MyApp());


class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        "/":(context)=>HomePage(),
        "/meteo":(context)=>MeteoPage(),
        "/gallery":(context)=>GalleryPage(),
        "/counter":(context)=>CounterPage(),
      },
      theme: ThemeData(
        primarySwatch: Colors.deepOrange
      ),
      initialRoute: "/",
    );
  }
}






