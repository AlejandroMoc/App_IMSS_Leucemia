//build_pantallas
//A01736345 Luis Ángel Cruz García
//A01736353 Alejandro Daniel Moctezuma Cruz
//Jueves 27 de julio de 2023

//El título de la aplicación en la barra de tareas de Android se encuentra en la ruta
//android/app/src/main/AndroidManifest.xml

import 'package:build_pantallas/welcome_page.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'home_page.dart';

//Clase con la información
class Todo {
  //VARIABLES NECESARIAS

  //"Inicio" en la app
  //"Stats" titulo que se imprime en la pantalla y es constante
  //"Subtemas" titulo que se imprime en la pantalla y es constante

  //Estructura de datos provisional
  //unidades/unitsall = [unidad1, unidad2, unidad3, unidad4, unidad5]
  //unidad1 = [Unidad 1: Lorem Ipsum, Descripcion Unidad, subtema1, subtema2, subtema3]
  //subtema1 = [pregunta 1, pregunta 2, pregunta 3]
  //pregunta1 = [¿pregunta?, state, respuesta 1, respuesta2, respuesta ...]

  //Esta forma de manejar información es temporal y
  //va a cambiar cuando se conecte con la base de datos definitiva

  final String titlebegin; //"Inicio"
  final String titlestats; //"Stats" o "Estadísticas
  final String titlesubthemes; //"Subtemas"

  final List allunits; //[Unidad 1, Unidad 2, Unidad 3]
  final List
      unidad1; //unidad1 = ["Unidad 1: Lorem Ipsum", "Esta es la descripción de la unidad", subtema11, subtema12, subtema13],
  final List unidad2;
  final List unidad3;
  final List unidad4;
  final List unidad5;

  final List subtema11; //subtema11=[pregunta111, pregunta112],
  final List subtema12;
  final List subtema13;
  final List subtema21;
  final List subtema22;
  final List subtema23;
  final List subtema31;
  final List subtema32;
  final List subtema33;
  final List subtema41;
  final List subtema42;
  final List subtema43;
  final List subtema51;
  final List subtema52;
  final List subtema53;

  final List pregunta111;
  final List
      pregunta112; //pregunta111 = ["¿Esto es una pregunta?", 0, "Sí, es una pregunta", "No, no es una pregunta"],
  final List pregunta121;
  final List pregunta122;
  final List pregunta131;
  final List pregunta132;

  final List pregunta211;
  final List pregunta212;
  final List pregunta221;
  final List pregunta222;
  final List pregunta231;
  final List pregunta232;

  final List pregunta311;
  final List pregunta312;
  final List pregunta321;
  final List pregunta322;
  final List pregunta331;
  final List pregunta332;

  final List pregunta411;
  final List pregunta412;
  final List pregunta421;
  final List pregunta422;
  final List pregunta431;
  final List pregunta432;

  final List pregunta511;
  final List pregunta512;
  final List pregunta521;
  final List pregunta522;
  final List pregunta531;
  final List pregunta532;

  //VARIABLES ANTIGUAS, DEBEN SER REEMPLAZADAS POR LAS NUEVAS
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
  final String questionsold;
  final String subthemes;
  final String unitsold;
  // Los estados ya están en lista
  final List states;

  const Todo(
    this.titlebegin,
    this.titlestats,
    this.titlesubthemes,

    //Preguntas
    this.pregunta111,
    this.pregunta112,
    this.pregunta121,
    this.pregunta122,
    this.pregunta131,
    this.pregunta132,
    this.pregunta211,
    this.pregunta212,
    this.pregunta221,
    this.pregunta222,
    this.pregunta231,
    this.pregunta232,
    this.pregunta311,
    this.pregunta312,
    this.pregunta321,
    this.pregunta322,
    this.pregunta331,
    this.pregunta332,
    this.pregunta411,
    this.pregunta412,
    this.pregunta421,
    this.pregunta422,
    this.pregunta431,
    this.pregunta432,
    this.pregunta511,
    this.pregunta512,
    this.pregunta521,
    this.pregunta522,
    this.pregunta531,
    this.pregunta532,

    //Unidad1
    this.subtema11,
    this.subtema12,
    this.subtema13,
    //Unidad2
    this.subtema21,
    this.subtema22,
    this.subtema23,
    //Unidad3
    this.subtema31,
    this.subtema32,
    this.subtema33,
    //Unidad4
    this.subtema41,
    this.subtema42,
    this.subtema43,
    //Unidad5
    this.subtema51,
    this.subtema52,
    this.subtema53,

    //Unidades
    this.unidad1,
    this.unidad2,
    this.unidad3,
    this.unidad4,
    this.unidad5,
    this.allunits,
    this.titleunit,
    this.titlesubtheme,
    this.answered,
    this.to_answer,
    this.questionsold,
    this.subthemes,
    this.unitsold,
    this.states,
  );
}

void main() {
  final String titlebegin; //"Inicio"
  final String titlestats; //"Stats" o "Estadísticas
  final String titlesubthemes; //"Subtemas"

  List allunits; //[Unidad 1, Unidad 2, Unidad 3]
  List unidad1; //unidad1 = ["Unidad 1: Lorem Ipsum", "Esta es la descripción de la unidad", subtema11, subtema12, subtema13],
  List unidad2;
  List unidad3;
  List unidad4;
  List unidad5;

  List subtema11; //subtema11=[pregunta111, pregunta112],
  List subtema12;
  List subtema13;
  List subtema21;
  List subtema22;
  List subtema23;
  List subtema31;
  List subtema32;
  List subtema33;
  List subtema41;
  List subtema42;
  List subtema43;
  List subtema51;
  List subtema52;
  List subtema53;

  List pregunta111;
  List
      pregunta112; //pregunta111 = ["¿Esto es una pregunta?", 0, "Sí, es una pregunta", "No, no es una pregunta"],
  List pregunta121;
  List pregunta122;
  List pregunta131;
  List pregunta132;

  List pregunta211;
  List pregunta212;
  List pregunta221;
  List pregunta222;
  List pregunta231;
  List pregunta232;

  List pregunta311;
  List pregunta312;
  List pregunta321;
  List pregunta322;
  List pregunta331;
  List pregunta332;

  List pregunta411;
  List pregunta412;
  List pregunta421;
  List pregunta422;
  List pregunta431;
  List pregunta432;

  List pregunta511;
  List pregunta512;
  List pregunta521;
  List pregunta522;
  List pregunta531;
  List pregunta532;

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
  final String subthemes;
  final String unitsold;
  // Los estados ya están en lista
  List states;

  runApp(MyApp(
    items: List.generate(
      5,
      (i) => Todo(
        //VARIABLES NECESARIAS

        //"Inicio" en la app
        //"Stats" titulo que se imprime en la pantalla y es constante
        //"Subtemas" titulo que se imprime en la pantalla y es constante

        //Estructura de datos provisional
        //unidades/unitsall = [unidad1, unidad2, unidad3, unidad4, unidad5]
        //unidad1 = [Unidad 1: Lorem Ipsum, Descripcion Unidad, subtema1, subtema2, subtema3]
        //subtema1 = [pregunta 1, pregunta 2, pregunta 3]
        //pregunta1 = [¿pregunta?, state, respuesta 1, respuesta2, respuesta ...]

        //Esta forma de manejar información es temporal y
        //va a cambiar cuando se conecte con la base de datos definitiva

        "Inicio",
        "Estadísticas",
        'Subtemas',

        //Preguntas
        pregunta111 = ["Pregunta ", "¿Qué porcentaje de los cánceres infantiles corresponden a la leucemia?", 0, "30%", "20%", "40%", "50%"],
        pregunta112 = ["Pregunta ", "¿Esto es una pregunta?", 0, "Sí, es una pregunta", "No, no es una pregunta"],
        pregunta121 = ["Pregunta ", "¿Esto es una pregunta?", 0, "Sí, es una pregunta", "No, no es una pregunta"],
        pregunta122 = ["Pregunta ", "¿Esto es una pregunta?", 0, "Sí, es una pregunta", "No, no es una pregunta"],
        pregunta131 = ["Pregunta ", "¿Esto es una pregunta?", 0, "Sí, es una pregunta", "No, no es una pregunta"],
        pregunta132 = ["Pregunta ", "¿Esto es una pregunta?", 0, "Sí, es una pregunta", "No, no es una pregunta"],

        pregunta211 = ["Pregunta ", "¿Esto es una pregunta?", 0, "Sí, es una pregunta", "No, no es una pregunta"],
        pregunta212 = ["Pregunta ", "¿Esto es una pregunta?", 0, "Sí, es una pregunta", "No, no es una pregunta"],
        pregunta221 = ["Pregunta ", "¿Esto es una pregunta?", 0, "Sí, es una pregunta", "No, no es una pregunta"],
        pregunta222 = ["Pregunta ", "¿Esto es una pregunta?", 0, "Sí, es una pregunta", "No, no es una pregunta"],
        pregunta231 = ["Pregunta ", "¿Esto es una pregunta?", 0, "Sí, es una pregunta", "No, no es una pregunta"],
        pregunta232 = ["Pregunta ", "¿Esto es una pregunta?", 0, "Sí, es una pregunta", "No, no es una pregunta"],

        pregunta311 = ["Pregunta ", "¿Esto es una pregunta?", 0, "Sí, es una pregunta", "No, no es una pregunta"],
        pregunta312 = ["Pregunta ", "¿Esto es una pregunta?", 0, "Sí, es una pregunta", "No, no es una pregunta"],
        pregunta321 = ["Pregunta ", "¿Esto es una pregunta?", 0, "Sí, es una pregunta", "No, no es una pregunta"],
        pregunta322 = ["Pregunta ", "¿Esto es una pregunta?", 0, "Sí, es una pregunta", "No, no es una pregunta"],
        pregunta331 = ["Pregunta ", "¿Esto es una pregunta?", 0, "Sí, es una pregunta", "No, no es una pregunta"],
        pregunta332 = ["Pregunta ", "¿Esto es una pregunta?", 0, "Sí, es una pregunta", "No, no es una pregunta"],

        pregunta411 = ["Pregunta ", "¿Esto es una pregunta?", 0, "Sí, es una pregunta", "No, no es una pregunta"],
        pregunta412 = ["Pregunta ", "¿Esto es una pregunta?", 0, "Sí, es una pregunta", "No, no es una pregunta"],
        pregunta421 = ["Pregunta ", "¿Esto es una pregunta?", 0, "Sí, es una pregunta", "No, no es una pregunta"],
        pregunta422 = ["Pregunta ", "¿Esto es una pregunta?", 0, "Sí, es una pregunta", "No, no es una pregunta"],
        pregunta431 = ["Pregunta ", "¿Esto es una pregunta?", 0, "Sí, es una pregunta", "No, no es una pregunta"],
        pregunta432 = ["Pregunta ", "¿Esto es una pregunta?", 0, "Sí, es una pregunta", "No, no es una pregunta"],

        pregunta511 = ["Pregunta ", "¿Esto es una pregunta?", 0, "Sí, es una pregunta", "No, no es una pregunta"],
        pregunta512 = ["Pregunta ", "¿Esto es una pregunta?", 0, "Sí, es una pregunta", "No, no es una pregunta"],
        pregunta521 = ["Pregunta ", "¿Esto es una pregunta?", 0, "Sí, es una pregunta", "No, no es una pregunta"],
        pregunta522 = ["Pregunta ", "¿Esto es una pregunta?", 0, "Sí, es una pregunta", "No, no es una pregunta"],
        pregunta531 = ["Pregunta ", "¿Esto es una pregunta?", 0, "Sí, es una pregunta", "No, no es una pregunta"],
        pregunta532 = ["Pregunta ", "¿Esto es una pregunta?", 0, "Sí, es una pregunta", "No, no es una pregunta"],

        //Subtemas
        subtema11=[pregunta111, pregunta112],
        subtema12=[pregunta121, pregunta122],
        subtema13=[pregunta131, pregunta132],
        subtema21=[pregunta211, pregunta212],
        subtema22=[pregunta221, pregunta222],
        subtema23=[pregunta231, pregunta232],
        subtema31=[pregunta311, pregunta312],
        subtema32=[pregunta321, pregunta322],
        subtema33=[pregunta331, pregunta332],
        subtema41=[pregunta411, pregunta412],
        subtema42=[pregunta421, pregunta422],
        subtema43=[pregunta431, pregunta432],
        subtema51=[pregunta511, pregunta512],
        subtema52=[pregunta521, pregunta522],
        subtema53=[pregunta531, pregunta532],

        //Unidades
        unidad1 = ["Unidad 1: Lorem Ipsum", "Esta es la descripción de la unidad", subtema11, subtema12, subtema13],
        unidad2 = ["Unidad 2: Lorem Ipsum", "Esta es la descripción de la unidad", subtema21, subtema22, subtema23],
        unidad3 = ["Unidad 3: Lorem Ipsum", "Esta es la descripción de la unidad", subtema31, subtema32, subtema33],
        unidad4 = ["Unidad 4: Lorem Ipsum", "Esta es la descripción de la unidad", subtema41, subtema42, subtema43],
        unidad5 = ["Unidad 5: Lorem Ipsum", "Esta es la descripción de la unidad", subtema51, subtema52, subtema53],
        allunits = [unidad1, unidad2, unidad3, unidad4, unidad5],

        //Variables antiguas
        "Unidad 1: Lorem Ipsum",

        'Subtema 1',
        2,
        4,
        'Pregunta ${i + 1}',
        'Subtema ${i + 1}',
        'Unidad ${i + 1}: Lorem Ipsum',

        //Aquí se colocan los estados de las preguntas
        //Estados se refiere a:
        //0: Pregunta sin completar
        //1: Parcialmente completada
        //2: Completamente completada
        [2, 0, 1, 2, 0],
      ),
    ),
  ));
}

class MyApp extends StatelessWidget {
  final items;
  const MyApp({super.key, required this.items});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'build_pantallas',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          textTheme: GoogleFonts.nunitoTextTheme(
            Theme.of(context).textTheme,
          ),
        ),
        initialRoute: "home",
        routes: {
          "home": (_) => WelcomePage(items: items, key: key),
        });
  }
}