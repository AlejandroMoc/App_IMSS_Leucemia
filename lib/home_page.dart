import 'package:flutter/material.dart';
import 'package:rive/rive.dart' as rive;
// import 'package:flutter_svg/flutter_svg.dart';
import 'package:glass_kit/glass_kit.dart';

import 'back.dart';
import 'banner.dart';
import 'question.dart';
import 'score.dart';
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

    double heightfactor = 0.04;

    String intertitle = "Unidad 1: Lorem Ipsum";
    String intersubtitle = "Subtema 1";
    int answered = 2;
    int to_answer = 4;

    return Scaffold(

      body: Container(

        decoration: const BoxDecoration(
          //color: Colors.green,
          color: Colors.white
          // image: DecorationImage(
          //   image: AssetImage("/images/Fondo.png"),
          //   fit: BoxFit.cover,
          // ),
        ),

        //Hacer stack entre fondo y scrollview
        child:Stack(
          children: [

            //Fondo con animacion
            // const rive.RiveAnimation.asset('assets/riv/animated_bg.riv', fit: BoxFit.cover),

            //Glasmorphism con glass_kit
            // GlassContainer.frostedGlass(
            //   height: height,
            //   width: width,
            //   borderColor: Colors.transparent,
            //   borderWidth: 0,
            //   blur: 15,
            //   // elevation: 3.0,
            //   // isFrostedGlass: false,
            //   // shadowColor: Colors.black.withOpacity(0.20),
            //   // frostedOpacity: 0.82,
            // ),

            //SingleChildScrollView
            SingleChildScrollView(

              child: Stack(
                children: [

                  Align(
                    alignment: Alignment.center,
                    child: Container(
                      //color:Colors.blue,
                      child: Column(
                        children: [

                          Stack(
                            alignment: Alignment.center,
                            children: [
                              Column(
                                children: [
                                  SizedBox(
                                    height: height * heightfactor * 2.8,
                                  ),

                                  //Título de unidad
                                  Container(
                                    width: width,
                                    //color: Colors.yellow,
                                    child: Container(
                                      //color: Colors.red,
                                      child: banner(
                                        text: intertitle,
                                        width: width,
                                        height: height*1.1,
                                      ),
                                    ),
                                  ),

                                  SizedBox(
                                    height: height * heightfactor*.2,
                                  ),
                                ],
                              ),

                              //Triangulo morado
                              Positioned(
                                top: height*.07,
                                right: width*0.1,
                                child: Container(
                                  //color: Colors.green,
                                  // alignment: Alignment.bottomLeft,
                                  height: height * .07,
                                  width: width * .15,
                                  child: const rive.RiveAnimation.asset(
                                    'assets/riv/triangulo_morado.riv',
                                    // alignment: Alignment.bottomLeft,
                                    fit: BoxFit.contain,
                                  ),
                                ),
                              ),

                              //Circulo amarillo
                              Positioned(
                                top: height*.195,
                                left: width*.04,
                                child: Container(
                                  //color: Colors.purple,
                                  // alignment: Alignment.bottomLeft,
                                  height: height * .08,
                                  width: width * .15,
                                  child: const rive.RiveAnimation.asset(
                                    'assets/riv/circulo_amarillo.riv',
                                    // alignment: Alignment.bottomLeft,
                                    fit: BoxFit.contain,
                                  ),
                                ),
                              ),
                            ],
                          ),

                          //Subtema
                          Container(
                            width: width,
                            //color: Colors.yellow,
                            child: Text(
                              intersubtitle,
                              textAlign: TextAlign.center,
                              style: const TextStyle(
                                fontWeight: FontWeight.w100,
                                fontSize: 23,
                                color: Color.fromARGB(255,121, 124, 147),
                              ),
                            ),
                          ),

                          SizedBox(
                            height: height * heightfactor*.5,
                          ),

                          //Puntaje
                          score(
                            width: width,
                            height: height,
                            answered: answered,
                            to_answer: to_answer,
                          ),

                          SizedBox(
                            height: height * heightfactor*.5,
                          ),

                          //Preguntas
                          question(
                            width: width,
                            height: height,
                            text: "Pregunta 1",
                            state: 2,
                          ),

                          SizedBox(
                            height: height * heightfactor,
                          ),

                          question(
                            width: width,
                            height: height,
                            text: "Pregunta 2",
                            state: 0,
                          ),

                          SizedBox(
                            height: height * heightfactor,
                          ),

                          question(
                            width: width,
                            height: height,
                            text: "Pregunta 3",
                            state: 1,
                          ),

                          SizedBox(
                            height: height * heightfactor,
                          ),

                          question(
                            width: width,
                            height: height,
                            text: "Pregunta 4",
                            state: 2,
                          ),

                          SizedBox(
                            height: height * heightfactor,
                          ),

                        ],

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
