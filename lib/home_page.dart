import 'package:flutter/material.dart';
import 'package:rive/rive.dart' as rive;
// import 'package:flutter_svg/flutter_svg.dart';
import 'package:glass_kit/glass_kit.dart';

import 'back.dart';
import 'banner.dart';
import 'subtheme.dart';
import 'homebutton.dart';

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
        child:Stack(
          children: [

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

                      //Subtemas, circulo y triangulo
                      SizedBox(
                        height: height * .14,
                        width: width * 1,
                        child: Stack(
                          alignment: Alignment.center, 
                          children:[

                            banner(
                              text: "Subtemas",
                              width: width,
                              height: height,
                            ),

                            //Circulo amarillo
                            Positioned(
                              top: height*.06,
                              left: width*.14,
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
                              right: width*.15,
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

                      Row(children: <Widget>[

                        SizedBox(
                          width: width * 0.1,
                        ),
      
                      ]),

                      //Subtemas
                      subtheme(
                        width: width,
                        height: height,
                        text: "Subtema 1",
                      ),
                      
                      SizedBox(
                        height: height * 0.04,
                      ),

                      subtheme(
                        width: width,
                        height: height,
                        text: "Subtema 2",
                      ),

                      SizedBox(
                        height: height * 0.04,
                      ),

                      subtheme(
                        width: width,
                        height: height,
                        text: "Subtema 3",
                      ),

                      SizedBox(
                        height: height * 0.04,
                      ),

                      subtheme(
                        width: width,
                        height: height,
                        text: "Subtema 4",
                      ),

                      SizedBox(
                        height: height * 0.04,
                      ),

                      subtheme(
                        width: width,
                        height: height,
                        text: "Subtema 5",
                      ),

                      //Separador
                      SizedBox(
                        height: height * .08,
                      ),
                    ],

                  ),

                  //back
                  Column(
                    children: [

                      //Separador
                      SizedBox(
                        height: height * .03,
                      ),
                      
                      const SafeArea(
                        child:back(x: -0.95, y: 0)
                      ),

                    ],
                  ),

                ],
              ),
            ),

            //Boton de regreso a casa            
            const Positioned.fill(
              child: Align(
                alignment: Alignment.bottomRight,
                child: homebutton(text: "Pagina de inicio"),
              ),
            ),

          ],
        ),
      ),
    );
  }
}
