//CO_003B
//A01736353 Alejandro Daniel Moctezuma Cruz
//Lunes 16 de abril de 2023

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'CO-003B',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        textTheme: GoogleFonts.nunitoTextTheme(),
      ),
      initialRoute: "home",
      routes: {
        "home": (_) => Home(),
      }
    );
  }
}