import 'package:flutter/material.dart';
import 'package:rive/rive.dart' as rive;
// import 'package:flutter_svg/flutter_svg.dart';
import 'package:glass_kit/glass_kit.dart';

import 'evaluation.dart';
import 'capacitation.dart';
import 'back.dart';
import 'homebutton.dart';
import 'dart:math' as math;

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

    double heightfactor = 0.11;

    return Scaffold(

      body: Container(

        // decoration: const BoxDecoration(
        //   // image: DecorationImage(
        //   //   image: AssetImage("/images/Fondo.png"),
        //   //   fit: BoxFit.cover,
        //   // ),
        // ),

        //Hacer stack entre fondo y elementos
        child:Stack(
          children: [

            //Fondo con animacion
            const rive.RiveAnimation.asset('assets/riv/animated_bg.riv', fit: BoxFit.cover),

            //Glasmorphism con glass_kit
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

              Stack(
                alignment: Alignment.center,
                children: [

                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,

                    children: [

                      SizedBox(
                        height: height * .10,
                      ),

                      //Subtemas
                      evaluation(
                        width: width,
                        height: height,
                        text: "Evaluarse",
                        icon: 'assets/svg/list.svg',
                      ),

                      SizedBox(
                        height: height * heightfactor,
                      ),

                      //Linea separadora
                      Container(
                      width: width * 0.8,
                      height: height * 0.01,
                      decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(Radius.circular(15)),
                      ),
                      ),

                      SizedBox(
                        height: height * heightfactor,
                      ),

                      capacitation(
                        width: width,
                        height: height,
                        text: "Capacitarse",
                        icon: 'assets/svg/clipboard.svg',
                      ),

                      SizedBox(
                        height: height * 0.04,
                      ),
                    ],

                  ),

                  //Circulo amarillo
                  Positioned(
                    top: height*.4,
                    left: width*.01,
                    child: Container(
                      color: Colors.transparent,
                      // alignment: Alignment.bottomLeft,
                      height: height * 1,
                      width: width * .27,
                      child: const rive.RiveAnimation.asset(
                        'assets/riv/circulo_amarillo.riv',
                        // alignment: Alignment.bottomLeft,
                        fit: BoxFit.contain,
                      ),
                    ),
                  ),

                  //Triangulo morado
                  Positioned(
                    top: height*.12,
                    right: width*-.03,

                    child: Transform.rotate(
                      angle: -math.pi / 2.8,
                      child: Container(
                        color: Colors.transparent,
                        // alignment: Alignment.bottomLeft,
                        height: height * .12,
                        width: width * .3,
                        child: const rive.RiveAnimation.asset(
                          'assets/riv/triangulo_morado.riv',
                          // alignment: Alignment.bottomLeft,
                          fit: BoxFit.contain,
                        ),
                      ),
                    ),

                  ),

                  //back
                  Column(
                    children: [

                      //Separador
                      SizedBox(
                        height: height * .02,
                      ),

                      const SafeArea(
                        child:back(x: -0.95, y: 0)
                      ),
                    ],
                  ),
                ],
              ),

            //Boton de regreso a casa
            Positioned(
              left: width * 0.8,
              top: width * 1.8,
              child: const Align(
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
