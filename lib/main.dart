//Es el archivo main de la carpeta Lib en un proyecto de flutter



import 'package:flutter/material.dart';
import 'package:liquid_swipe1/src/pages/home.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
        title: 'Prueba 3', home: HomePage());
  }
}
