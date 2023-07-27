import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:glass_kit/glass_kit.dart';
import 'package:rive/rive.dart' as rive;
import 'dart:math' as math;
import 'home_page.dart';
import 'main.dart';

class Registro extends StatefulWidget {
  const Registro(
      {super.key,
      required this.items,
      required Container Function(dynamic context) builder});
  final List<Todo> items;

  @override
  State<Registro> createState() => _RegistroState(items);
}

class _RegistroState extends State<Registro> {
  final List<Todo> items;
  _RegistroState(this.items);
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

              //Fondo animado
              Container(
                height: height,
                width: width,
                child: const rive.RiveAnimation.asset('assets/riv/animated_bg.riv', fit: BoxFit.cover),
              ),


              //Glasmorphism con glass_kit
              // Requiere un borderColor manual (bug de la librería)
              GlassContainer.frostedGlass(
                height: height,
                width: width,
                borderColor: Colors.transparent,
                borderWidth: 0,
                blur: 15,
                // elevation: 3.0,
                // isFrostedGlass: false,
                // shadowColor: Colors.black.withOpacity(0.20),
                // frostedOpacity: 0.82,
              ),

              //Circulo amarillo
              Transform.translate(
                offset: Offset(width*.01, height*.01),
                child: Transform.rotate(
                  angle: -math.pi / 4.1,
                  child: Container(
                    color: Colors.transparent,
                    // alignment: Alignment.bottomLeft,
                    height: height * .2,
                    width: width * .3,
                    child: const rive.RiveAnimation.asset(
                      'assets/riv/circulo_amarillo.riv',
                      // alignment: Alignment.bottomLeft,
                      fit: BoxFit.contain,
                    ),
                  ),
                ),
              ),
              
              Container(
                width: width,
                height: height,
                
                //Circulo amarillo
                child: Padding(
                  padding: EdgeInsets.fromLTRB(0,height*.12,0,0),
                  child: Stack(
                    children: [
                    Padding(
                      padding: EdgeInsets.fromLTRB(width* .09, height*0, width*.09, height* 0),
                      child: Stack(

                        children: [

                          SizedBox(height: height * 0.03),

                          //Contenedor blanco
                          SizedBox(
                            height: height * 0.78,
                            width: width * 0.85,
                            child: Container(
                              clipBehavior: Clip.antiAliasWithSaveLayer,
                              decoration: BoxDecoration(
                                  boxShadow: const [
                                    BoxShadow(
                                        color: Colors.black26,
                                        offset: Offset(0.0, 10.0),
                                        blurRadius: 5.0),
                                  ],
                                  borderRadius: BorderRadius.circular(20),
                                  color: Colors.white,
                              ),
                              child: Column(
                                children: [
                                  Container(height: height*.1),

                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 20, vertical: 16),
                                    child: TextField(
                                      // enableInteractiveSelection: false,
                                      decoration: const InputDecoration(
                                        enabledBorder:
                                        UnderlineInputBorder(
                                            borderSide: BorderSide(
                                                width: 1,
                                                color: Color.fromARGB(
                                                    255, 223, 220, 220))),
                                        hintText: "No. de Cédula",
                                        suffixIcon: Icon(Icons.people),
                                        hintStyle: TextStyle(
                                          fontWeight: FontWeight.w500,
                                          fontSize: 16,
                                          color: Color.fromRGBO(196, 196, 196, 1), // Color gris claro para el hintText
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
                                      decoration: const InputDecoration(
                                        enabledBorder:
                                        UnderlineInputBorder(
                                            borderSide: BorderSide(
                                                width: 1,
                                                color: Color.fromARGB(
                                                    255, 223, 220, 220))),
                                        hintText: "Nombre(s)",
                                        hintStyle: TextStyle(
                                          fontWeight: FontWeight.w500,
                                          fontSize: 16,
                                          color: Color.fromRGBO(196, 196, 196, 1), // Color gris claro para el hintText
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
                                      decoration: const InputDecoration(
                                        enabledBorder:
                                        UnderlineInputBorder(
                                            borderSide: BorderSide(
                                                width: 1,
                                                color: Color.fromARGB(
                                                    255, 223, 220, 220))),
                                        hintText: "Primer apellido",
                                        hintStyle: TextStyle(
                                          fontWeight: FontWeight.w500,
                                          fontSize: 16,
                                          color: Color.fromRGBO(196, 196, 196, 1), // Color gris claro para el hintText
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
                                      decoration: const InputDecoration(
                                        enabledBorder:
                                        UnderlineInputBorder(
                                            borderSide: BorderSide(
                                                width: 1,
                                                color: Color.fromARGB(
                                                    255, 223, 220, 220)
                                            )
                                        ),
                                        hintText: "Segundo apellido",
                                        hintStyle: TextStyle(
                                          fontWeight: FontWeight.w500,
                                          fontSize: 16,
                                          color: Color.fromRGBO(196, 196, 196, 1), // Color gris claro para el hintText
                                        ),
                                      ),
                                      onSubmitted: (value) {
                                        _sapellido = value;
                                      },
                                    ),
                                  ),
                                  SizedBox(height: height * 0.085),

                                  //Boton de siguiente
                                  Stack(
                                    children: [
                                      Container(
                                        //padding: EdgeInsets.all(20),
                                        margin: const EdgeInsets.all(20),
                                        decoration: BoxDecoration(
                                        // ignore: prefer_const_literals_to_create_immutables
                                          boxShadow: [
                                            const BoxShadow(
                                              color: Colors.black12,
                                              offset: Offset(0.0, 10.0),
                                              blurRadius: 5.0
                                            ),
                                          ],
                                          borderRadius:
                                          BorderRadius.circular(50),
                                          color: Colors.white,
                                        ),
                                        height: height * 0.08,
                                        width: width * 0.5,
                                      ),

                                      //Icono
                                      Positioned(
                                        left: width*.11,
                                        top: height*.04,
                                        child: SizedBox(
                                          width: width * 0.06,
                                          child: SvgPicture.asset(
                                              "assets/svg/foward.svg",
                                              fit: BoxFit.scaleDown
                                          ),
                                        ),
                                      ),

                                      //Texto
                                      Positioned(
                                        left: width*.0,
                                        top: height*.015,
                                        child: Container(
                                          //color: Colors.red,
                                          height: height * 0.09,
                                          width: width * 0.7,
                                          child: MaterialButton(
                                            shape: RoundedRectangleBorder(
                                              borderRadius:
                                              BorderRadius.circular(50),
                                            ),
                                            elevation: 0,

                                            onPressed: () {
                                              Navigator.push(
                                                context,
                                                MaterialPageRoute(
                                                  builder: (context) =>
                                                      Home(items: items),
                                                ),
                                              );
                                            },

                                            color: Colors.transparent,
                                            child: const Text(
                                              'Siguiente',
                                              style: TextStyle(
                                                fontSize: 23,
                                                fontWeight: FontWeight.w400,
                                                color: Color.fromRGBO(121, 124, 147, 1),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),

                                    ],
                                  ),

                                ],
                              ),
                            ),
                          ),

                          Center(
                            child: Padding(
                              padding: EdgeInsets.fromLTRB(0,0,0,height*.75),
                              child: const Text(
                                "Regístrate",
                                style: TextStyle(
                                  fontSize: 40.0,
                                  fontWeight: FontWeight.w700,
                                  color: Color.fromRGBO(64, 64, 66, 1),
                                  shadows: [
                                    Shadow(
                                      color: Color.fromARGB(255, 170, 170, 170), // Color del sombreado
                                      offset: Offset(2, 4), // Desplazamiento del sombreado
                                      blurRadius: 10.0, // Radio de difuminado del sombreado
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),


                        ],
                      ),
                    ),
                  ],
                  ),
                ),
              ),

              //Triangulo morado
              Transform.translate(
                offset: Offset(width*.7, height*.8),
                child: Transform.rotate(
                  angle: -math.pi / 4.1,
                  child: Container(
                    color: Colors.transparent,
                    // alignment: Alignment.bottomLeft,
                    height: height * .2,
                    width: width * .3,
                    child: const rive.RiveAnimation.asset(
                      'assets/riv/triangulo_morado.riv',
                      // alignment: Alignment.bottomLeft,
                      fit: BoxFit.contain,
                    ),
                  ),
                ),
              ),
              

            ],
          ),




        ],
      ),
    );
  }
}
