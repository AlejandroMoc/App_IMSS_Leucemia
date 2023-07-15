//Lista de preguntas
//A01736353 Alejandro Daniel Moctezuma Cruz
//Viernes 14 de julio de 2023

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'home_page.dart';

void main() {
  runApp(
      MyApp(

        //Titulo de la unidad

        //Titulo del subtema

        //Puntaje del subtema

        //Cantidad de subtemas a imprimir (5)
        items: List<String>.generate(5, (i) => 'Pregunta ${i + 1}'),
      )
  );
}

class MyApp extends StatelessWidget {
  final List<String> items;
  const MyApp({super.key, required this.items});


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'lista_preguntas',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          textTheme: GoogleFonts.nunitoTextTheme(),
        ),
        initialRoute: "home",
        routes: {
          "home": (_) => Home(items: items, key: key),
        }
    );
  }
}