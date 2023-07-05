import 'package:flutter/material.dart';
import 'package:rive/rive.dart' as rive;
import 'package:glass_kit/glass_kit.dart';

import 'account.dart';
import 'banner.dart';
import 'stats.dart';
import 'units.dart';

class Home extends StatefulWidget {
  const Home({super.key});
  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(

      body: Container(

        decoration: const BoxDecoration(
          // image: DecorationImage(
          //   image: AssetImage("/images/Fondo.png"),
          //   fit: BoxFit.cover,
          // ),
        ),

        //Hacer stack entre fondo y scrollview
        child: Stack(
          children: <Widget>[

            //Fondo con animacion
            const rive.RiveAnimation.asset('/riv/animated_bg.riv', fit: BoxFit.cover),

            //Glasmorphism con glass_kit
            // Se requiere de un borderColor, si no se rompe (es bug de la librería)
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
                        
            //SingleChildScrollView
            SingleChildScrollView(
              
              child: Stack(
                children: [

                  Column(
                    children: [

                      //Separador superior
                      SizedBox(
                        height: height * .03,
                      ),

                      //Inicio, circulo y triangulo
                      SizedBox(
                        height: height * .14,
                        width: width * 1,
                        child: Stack(
                          alignment: Alignment.center, 
                          children:[

                            banner(
                              text: "Inicio",
                              width: width,
                              height: height,
                            ),

                            //Circulo amarillo
                            Positioned(
                              top: height*.06,
                              left: width*.22,
                              child: Container(
                                color: Colors.transparent,
                                // alignment: Alignment.bottomLeft,
                                height: height * .07,
                                width: width * .3,
                                child: const rive.RiveAnimation.asset(
                                  '/riv/circulo_amarillo.riv',
                                  // alignment: Alignment.bottomLeft,
                                  fit: BoxFit.contain,
                                ),
                              ),
                            ),

                            //Triangulo morado
                            Positioned(
                              top: height*.01,
                              right: width*.23,
                              child: Container(
                                color: Colors.transparent,
                                // alignment: Alignment.bottomLeft,
                                height: height * .07,
                                width: width * .3,
                                child: const rive.RiveAnimation.asset(
                                  '/riv/triangulo_morado.riv',
                                  // alignment: Alignment.bottomLeft,
                                  fit: BoxFit.contain,
                                ),
                              ),
                            ),


                            //ESTE SIRVE PERO USA CIRCLEAVATAR
                            // const Positioned(
                            //   top: 0,
                            //   right: 285,
                            //   child: CircleAvatar(
                            //     // radius: 16,
                            //     // backgroundColor: Colors.transparent,
                            //     // foregroundColor: Colors.transparent,
                            //     child: rive.RiveAnimation.asset('/riv/circulo_amarillo.riv'),
                            //   ), //CircularAvatar
                            // ),


                          ],
                        ),
                      ),

                      //Separador
                      SizedBox(
                        height: height * .02,
                      ),

                      //Estadísticas
                      stats(
                        text: "Stats",
                        width: width,
                        height: height,
                      ),

                      //Separador
                      SizedBox(
                        height: height * .04,
                      ),

                      //Unidades
                      Row(children: <Widget>[

                        SizedBox(
                          width: width * 0.1,
                        ),
                        units(
                          width: width,
                          height: height,
                          text: "Unidad 1: Lorem ipsum",
                        ),
                        SizedBox(
                          width: width * 0.04,
                        ),
                        units(
                          width: width,
                          height: height,
                          text: "Unidad 2: Lorem ipsum",
                        ),
                        SizedBox(
                          width: width * 0.08,
                        )
                      ]),

                      //Separador
                      SizedBox(
                        height: height * .04,
                      ),

                      Row(children: <Widget>[
                        SizedBox(
                          width: width * 0.1,
                        ),
                        units(
                          width: width,
                          height: height,
                          text: "Unidad 3: Lorem ipsum",
                        ),
                        SizedBox(
                          width: width * 0.04,
                        ),
                        units(
                          width: width,
                          height: height,
                          text: "Unidad 4: Lorem ipsum",
                        ),
                        SizedBox(
                          width: width * 0.08,
                        )
                      ]),

                      //Separador
                      SizedBox(
                        height: height * .04,
                      ),

                      Row(children: <Widget>[
                        SizedBox(
                          width: width * 0.1,
                        ),
                        units(
                          width: width,
                          height: height,
                          text: "Unidad 5: Lorem ipsum",
                        ),
                        SizedBox(
                          width: width * 0.04,
                        ),
                        units(
                          width: width,
                          height: height,
                          text: "Unidad 6: Lorem ipsum",
                        ),
                        SizedBox(
                          width: width * 0.08,
                        )
                      ]),

                      //Separador
                      SizedBox(
                        height: height * .04,
                      ),

                      Row(children: <Widget>[
                        SizedBox(
                          width: width * 0.1,
                        ),
                        units(
                          width: width,
                          height: height,
                          text: "Unidad 7: Lorem ipsum",
                        ),
                        SizedBox(
                          width: width * 0.04,
                        ),
                        units(
                          width: width,
                          height: height,
                          text: "Unidad 8: Lorem ipsum",
                        ),
                        SizedBox(
                          width: width * 0.08,
                        )
                      ]),

                      //Separador
                      SizedBox(
                        height: height * .08,
                      ),
                    ],

                  ),

                  //Account
                  Column(
                    children: [
                      //Separador
                      SizedBox(
                        height: height * .03,
                      ), 
                      const SafeArea(
                        child: Account(x: -0.9, y: 0)
                      ),
                    ],
                  ),

                ],
              ),
            ),

          ],
        ),

      ),

    );
  }
}
