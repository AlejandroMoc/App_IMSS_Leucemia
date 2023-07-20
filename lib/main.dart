import 'package:flutter/material.dart';
import 'package:pregunta1/src/pregunta.dart';
import 'package:google_fonts/google_fonts.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Pregunta 1',
      home: const Pregunta(),
      theme: ThemeData(
          textTheme: GoogleFonts.nunitoTextTheme(Theme.of(context).textTheme)),
    );
  }
}
