//Lista de preguntas
//A01736353 Alejandro Daniel Moctezuma Cruz
//Lunes 17 de julio de 2023

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'home_page.dart';

//Clase para generar los elementos
class Todo {
  //Titulo de la unidad
  final String titleunit;
  //Titulo del subtema
  final String titlesubtheme;
  //Puntaje del subtema
  final int answered;
  final int to_answer;

  //Títulos de las preguntas con sus estados

  // Los títulos de las preguntas se pueden cambiar a lista personalizada más
  // adelante si se requiere (por ejemplo, [Pregunta 1: Lorem Ipsum,
  // Pregunta 2: Dolor Sit Amet]
  final String questions;
  // Los estados ya están en lista
  final List states;

  const Todo(this.titleunit, this.titlesubtheme, this.answered, this.to_answer, this.questions, this.states);
}

void main() {
  runApp(
      MyApp(
        items: List.generate(
            5,
              (i) => Todo(
                "Unidad 1: Lorem Ipsum",
                'Subtema 1',
                2,
                4,
                'Pregunta ${i + 1}',
                //Aquí se colocan los estados de las preguntas
                //Estados se refiere a:
                //0: Pregunta sin completar
                //1: Parcialmente completada
                //2: Completamente completada
                [2,0,1,2,0],
              ),

        ),
      )
  );
}

class MyApp extends StatelessWidget {
  final items;
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