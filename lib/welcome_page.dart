import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:glass_kit/glass_kit.dart';
import 'package:rive/rive.dart' as rive;
import 'dart:math' as math;
import 'main.dart';
import 'preregistration_page.dart';

class WelcomePage extends StatefulWidget {
  const WelcomePage({super.key, required this.items});
  final List<Todo> items;
  @override
  State<WelcomePage> createState() => WelcomePageState(items);
}

class WelcomePageState extends State<WelcomePage> {
  final List<Todo> items;
  WelcomePageState(this.items);

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        child: Stack(
          children: [

            //Fondo animado
            const rive.RiveAnimation.asset('assets/riv/animated_bg.riv', fit: BoxFit.cover),

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

            SafeArea(
              child: Center(
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height,

                  alignment: Alignment.center,

                  child: Stack(
                    children: [

                      //Logo de fondo
                      Center(
                        child: SizedBox(
                          width: width*.6,
                          child: SizedBox(
                            width: width,
                            height: height,
                            child: SvgPicture.asset(
                              "assets/svg/logo_central.svg",
                            ),
                          ),
                        ),
                      ),

                      // Center(
                      //   child: SizedBox(
                      //   width: 300,
                      //   height: 300,
                      //   //Imagen logo
                      //   child: Image.asset(
                      //     'assets/images/Logo_central.png'),
                      //   ),
                      // ),

                      //Texto de bienvenida
                      Padding(
                        padding: EdgeInsets.only(bottom: height*.7),
                        child: const Align(
                          alignment: Alignment.center,
                          //top: height*.1,
                          child: Text(
                          '¡Bienvenido!',
                            style: TextStyle(
                              shadows: <Shadow>[
                                Shadow(
                                  offset: Offset(0,6),
                                  blurRadius: 3.0,
                                  color: Color.fromRGBO(0, 0, 0, 0.21),
                                ),
                              ],
                              fontWeight: FontWeight.w700,
                              fontSize: 55,
                              color: Color.fromRGBO(64, 64, 66, 1),
                            ),
                          ),
                        ),
                      ),


                      //Circulo amarillo
                      Padding(
                        padding: EdgeInsets.only(top: height*.7, left: width*.15),
                        child: Transform.rotate(
                          angle: -math.pi / 4.1,
                          child: Container(
                            //color: Colors.transparent,
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

                      //Botón de siguiente
                      /*Container(
                        //width: width*.6,
                        //color: Colors.red,
                        padding: EdgeInsets.only(top: height*.7),
                        child: Align(
                          alignment: Alignment.center,
                          child: Container(
                            width: width* .6,
                            height: height*.12,

                            child: Stack(
                              children: [
                                Container(
                                  margin: const EdgeInsets.all(15),
                                  clipBehavior: Clip.antiAliasWithSaveLayer,
                                  decoration: BoxDecoration(
                                    boxShadow: const [
                                      BoxShadow(
                                        color: Color.fromRGBO(0, 0, 0, 0.1),
                                        offset: Offset(0.0, 8.0),
                                        blurRadius: 5.0),
                                    ],
                                    borderRadius: BorderRadius.circular(50),
                                    color: Colors.white
                                  ),
                                ),

                                //Icono
                                Positioned(
                                  left: width*.09,
                                  top: height*.035,
                                  child: SizedBox(
                                    width: width * 0.06,
                                    // child: const Icon(
                                    //   Icons.arrow_forward,
                                    //   size: 40.0,
                                    //   color: Color(0xFF797C93),
                                    // )
                                    child: SvgPicture.asset(
                                        "assets/svg/foward.svg",
                                        fit: BoxFit.scaleDown
                                    ),
                                  ),
                                ),

                                //Texto
                                Positioned(
                                  left: width*.09,
                                  top: height*.02,
                                  child: Container(
                                    //color: Colors.blue,
                                    height: height * 0.08,
                                    width: width * 0.5,
                                    child: MaterialButton(
                                      shape: RoundedRectangleBorder(
                                          borderRadius:
                                          BorderRadius.circular(50)
                                      ),

                                      elevation: 0,
                                      onPressed: () {
                                        Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                            builder: (context) => Home(
                                              items: items,
                                              builder: (context) => Container(),
                                            ),
                                          ),
                                        );
                                      },
                                      color: Colors.transparent,
                                      child: const Text(
                                        'Siguiente',
                                        style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.w400,
                                          color: Color.fromRGBO(121, 124, 147, 1),
                                        ),
                                      ),
                                    )
                                  ),

                                ),
                              ],
                            ),
                          ),
                        ),
                      ),*/

                      //Nuevo botón de siguiente
                      Positioned(
                        top: height*.8,
                        left: width*.24,
                        child: Container(
                          //color: Colors.red,
                          width: width*.52,
                          height: height*.2*.75,
                          padding: EdgeInsets.only(bottom: height*.07),
                          child: MaterialButton(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(50)
                            ),

                            elevation: 0,
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => Home(
                                    items: items,
                                    builder: (context) => Container(),
                                  ),
                                ),
                              );
                            },
                            padding: const EdgeInsets.all(0),

                            child: Container(
                              decoration: BoxDecoration(
                                boxShadow: const [
                                  BoxShadow(
                                      color: Color.fromRGBO(0, 0, 0, 0.1),
                                      offset: Offset(0.0, 8.0),
                                      blurRadius: 5.0),
                                ],
                                borderRadius: BorderRadius.circular(50),
                                color: Colors.white,
                              ),

                              child: Stack(
                                children: [

                                  //Icono
                                  Positioned(
                                    left: width*.08,
                                    top: height*.015,
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
                                    left: width*.2,
                                    top: height*.02,
                                    child: const Text(
                                      'Siguiente',
                                      style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.w400,
                                        color: Color.fromRGBO(121, 124, 147, 1),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),

                      //Triangulo morado
                      Padding(
                        padding: const EdgeInsets.only(top: 650, left: 170),
                        child: Align(
                          alignment: Alignment.center,
                          child: Transform.rotate(
                            angle: -math.pi / 4.1,
                            child: SizedBox(
                              //color: Colors.transparent,
                              // alignment: Alignment.bottomLeft,
                              height: height * .2,
                              width: width * .22,
                              child: const rive.RiveAnimation.asset(
                                'assets/riv/triangulo_morado.riv',
                                // alignment: Alignment.bottomLeft,
                                fit: BoxFit.contain,
                              ),
                            ),
                          ),
                        ),
                      ),

                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
