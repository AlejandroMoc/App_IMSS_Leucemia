import 'package:flutter/material.dart';
import 'package:rive/rive.dart' as rive;
import 'package:glass_kit/glass_kit.dart';

import 'evaluation.dart';
import 'capacitation.dart';
import 'back.dart';
import 'main.dart';
import 'homebutton.dart';
import 'dart:math' as math;

class ActSelectPage extends StatefulWidget {
  const ActSelectPage({super.key, required this.items});

  final List<Todo> items;

  @override
  State<ActSelectPage> createState() => _ActSelectPageState(items);
}

class _ActSelectPageState extends State<ActSelectPage> {

  final List<Todo> items;
  _ActSelectPageState(this.items);

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    double heightfactor = 0.13;

    return Scaffold(

      body: Stack(
        children: [

          const rive.RiveAnimation.asset('assets/riv/animated_bg.riv', fit: BoxFit.cover),

          //Glasmorphism
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
                  height: height * 1.05,
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
                top: height*.08,
                right: width*-.03,
                child: Transform.rotate(
                  angle: -math.pi / 2.8,
                  child: Container(
                    color: Colors.transparent,
                    // alignment: Alignment.bottomLeft,
                    height: height * .13,
                    width: width * .32,
                    child: const rive.RiveAnimation.asset(
                      'assets/riv/triangulo_morado.riv',
                      // alignment: Alignment.bottomLeft,
                      fit: BoxFit.contain,
                    ),
                  ),
                ),

              ),

              //Boton regresar
              Column(
                children: [
                  SizedBox(height: height * .008),
                  const SafeArea(
                      child:back(x: -0.95, y: 0)
                  ),
                ],
              ),
            ],
          ),

          //Boton casa
          Positioned(
            left: width * 0.7,
            top: width * 1.76,
            child: Align(
              alignment: Alignment.bottomRight,
              child: HomeButton(
                items: items,
                text: "Página de inicio",
                height: height,
                width: width,
              ),
            ),
          ),

        ],
      ),
    );
  }
}
