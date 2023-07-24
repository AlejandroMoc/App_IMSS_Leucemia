import 'package:flutter/material.dart';
import 'package:co002b/src/Glassmorphism.dart';
import 'package:rive/rive.dart' as rive;
import 'dart:math' as math;

class Registro extends StatefulWidget {
  const Registro({super.key});

  @override
  State<Registro> createState() => _RegistroState();
}

class _RegistroState extends State<Registro> {
  late String _cedula;
  late String _nombre;
  late String _papellido;
  late String _sapellido;
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.white,
      body: ListView(
        children: [
          Stack(
            children: [
              SizedBox(
                  height: height,
                  width: width,
                  child: const rive.RiveAnimation.asset(
                    'assets/animated_bg.riv',
                    fit: BoxFit.cover,
                  )),
              FrostedGlassBox(
                  theWidth: width,
                  theHeight: height,
                  theChild: Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 30.0, vertical: 90.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text(
                          "Regístrate",
                          style: TextStyle(
                            fontSize: 40.0,
                            fontWeight: FontWeight.w600,
                            color: Color.fromARGB(255, 66, 66, 66),
                            shadows: [
                              Shadow(
                                color: Color.fromARGB(
                                    255, 170, 170, 170), // Color del sombreado
                                offset: Offset(
                                    2, 4), // Desplazamiento del sombreado
                                blurRadius:
                                    10.0, // Radio de difuminado del sombreado
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: height * 0.085),
                        SizedBox(
                          height: height * 0.6,
                          width: width * 0.85,
                          child: Container(
                            clipBehavior: Clip.antiAliasWithSaveLayer,
                            decoration: BoxDecoration(
                                // ignore: prefer_const_literals_to_create_immutables
                                boxShadow: [
                                  const BoxShadow(
                                      color: Colors.black26,
                                      offset: Offset(0.0, 10.0),
                                      blurRadius: 5.0),
                                ],
                                borderRadius: BorderRadius.circular(15),
                                color: Colors.white),
                            child: Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 20, vertical: 16),
                                  child: TextField(
                                    // enableInteractiveSelection: false,
                                    decoration: InputDecoration(
                                      enabledBorder: const UnderlineInputBorder(
                                          borderSide: BorderSide(
                                              width: 1,
                                              color: Color.fromARGB(
                                                  255, 223, 220, 220))),
                                      hintText: "No. de cédula",
                                      suffixIcon: const Icon(Icons.people),
                                      hintStyle: TextStyle(
                                        color: Colors.grey[
                                            400], // Color gris claro para el hintText
                                      ),
                                    ),
                                    onSubmitted: (value) {
                                      _cedula = value;
                                    },
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 20, vertical: 16),
                                  child: TextField(
                                    // enableInteractiveSelection: false,
                                    decoration: InputDecoration(
                                      enabledBorder: const UnderlineInputBorder(
                                          borderSide: BorderSide(
                                              width: 1,
                                              color: Color.fromARGB(
                                                  255, 223, 220, 220))),
                                      hintText: "Nombre(s)",
                                      hintStyle: TextStyle(
                                        color: Colors.grey[
                                            400], // Color gris claro para el hintText
                                      ),
                                    ),
                                    onSubmitted: (value) {
                                      _nombre = value;
                                    },
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 20, vertical: 16),
                                  child: TextField(
                                    // enableInteractiveSelection: false,
                                    decoration: InputDecoration(
                                      enabledBorder: const UnderlineInputBorder(
                                          borderSide: BorderSide(
                                              width: 1,
                                              color: Color.fromARGB(
                                                  255, 223, 220, 220))),
                                      hintText: "Primer apellido",
                                      hintStyle: TextStyle(
                                        color: Colors.grey[
                                            400], // Color gris claro para el hintText
                                      ),
                                    ),
                                    onSubmitted: (value) {
                                      _papellido = value;
                                    },
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 20, vertical: 16),
                                  child: TextField(
                                    // enableInteractiveSelection: false,
                                    decoration: InputDecoration(
                                      enabledBorder: const UnderlineInputBorder(
                                          borderSide: BorderSide(
                                              width: 1,
                                              color: Color.fromARGB(
                                                  255, 223, 220, 220))),
                                      hintText: "Segundo apellido",
                                      hintStyle: TextStyle(
                                        color: Colors.grey[
                                            400], // Color gris claro para el hintText
                                      ),
                                    ),
                                    onSubmitted: (value) {
                                      _sapellido = value;
                                    },
                                  ),
                                ),
                                SizedBox(height: height * 0.095),
                                Stack(
                                  children: [
                                    SizedBox(
                                      height: height * 0.08,
                                      width: width * 0.5,
                                      child: Container(
                                        clipBehavior:
                                            Clip.antiAliasWithSaveLayer,
                                        decoration: BoxDecoration(
                                            // ignore: prefer_const_literals_to_create_immutables
                                            boxShadow: [
                                              const BoxShadow(
                                                  color: Colors.black12,
                                                  offset: Offset(0.0, 10.0),
                                                  blurRadius: 5.0),
                                            ],
                                            borderRadius:
                                                BorderRadius.circular(50),
                                            color: Colors.white),
                                      ),
                                    ),
                                    SizedBox(
                                        height: height * 0.08,
                                        width: width * 0.025,
                                        child: const Icon(
                                          Icons.keyboard_arrow_right,
                                          size: 50.0,
                                          color: Color(0xFF797C93),
                                        )),
                                    SizedBox(
                                        height: height * 0.08,
                                        width: width * 0.5,
                                        child: MaterialButton(
                                          shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(50)),
                                          elevation: 0,
                                          onPressed: () {},
                                          color: Colors.transparent,
                                          child: const Align(
                                            alignment:
                                                FractionalOffset(0.7, 0.5),
                                            child: Text(
                                              'Siguiente',
                                              style: TextStyle(
                                                  fontSize: 20,
                                                  fontWeight: FontWeight.w600,
                                                  color: Color(0xFF797C93)),
                                            ),
                                            //colorBrightness: Brightness.dark,
                                          ),
                                        )),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  )),
              Positioned(
                top: height * .8,
                right: width * .04,
                child: Transform.rotate(
                  angle: -math.pi / 4.1,
                  child: Container(
                    color: Colors.transparent,
                    // alignment: Alignment.bottomLeft,
                    height: height * .2,
                    width: width * .3,
                    child: const rive.RiveAnimation.asset(
                      'assets/triangulo_morado.riv',
                      // alignment: Alignment.bottomLeft,
                      fit: BoxFit.contain,
                    ),
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
