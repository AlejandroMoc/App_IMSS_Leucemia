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
  const Home({super.key, required this.items});

  final List<String> items;

  @override
  State<Home> createState() => _HomeState(items);
}

class _HomeState extends State<Home> {

  final List<String> items;
  _HomeState(this.items);

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    double heightfactor = 0.04;

    String intertitle = "Unidad 1: Lorem Ipsum";
    String intersubtitle = "Subtema 1";
    int answered = 2;
    int to_answer = 4;

    //Scaffold old
    // return Scaffold(
    //
    //   body: Container(
    //
    //     decoration: const BoxDecoration(
    //       //color: Colors.green,
    //       color: Colors.white
    //       // image: DecorationImage(
    //       //   image: AssetImage("/images/Fondo.png"),
    //       //   fit: BoxFit.cover,
    //       // ),
    //     ),
    //
    //     //Hacer stack entre fondo y scrollview
    //     child:Stack(
    //       children: [
    //
    //         //Fondo con animacion
    //         // const rive.RiveAnimation.asset('assets/riv/animated_bg.riv', fit: BoxFit.cover),
    //
    //         //Glasmorphism con glass_kit
    //         // GlassContainer.frostedGlass(
    //         //   height: height,
    //         //   width: width,
    //         //   borderColor: Colors.transparent,
    //         //   borderWidth: 0,
    //         //   blur: 15,
    //         //   // elevation: 3.0,
    //         //   // isFrostedGlass: false,
    //         //   // shadowColor: Colors.black.withOpacity(0.20),
    //         //   // frostedOpacity: 0.82,
    //         // ),
    //
    //         SingleChildScrollView(
    //           child: Stack(
    //             children: [
    //               Column(
    //                 children: [
    //
    //                   Stack(
    //                     alignment: Alignment.center,
    //                     children: [
    //                       Column(
    //                         children: [
    //                           SizedBox(
    //                             height: height * heightfactor * 2.8,
    //                           ),
    //
    //                           //Título de unidad
    //                           Container(
    //                             width: width,
    //                             //color: Colors.yellow,
    //                             child: Container(
    //                               //color: Colors.red,
    //                               child: banner(
    //                                 text: intertitle,
    //                                 width: width,
    //                                 height: height*1.1,
    //                               ),
    //                             ),
    //                           ),
    //
    //                           SizedBox(
    //                             height: height * heightfactor*.2,
    //                           ),
    //                         ],
    //                       ),
    //
    //
    //                       //Circulo amarillo
    //                       Positioned(
    //                         top: height*.195,
    //                         left: width*.04,
    //                         child: Container(
    //                           //color: Colors.purple,
    //                           // alignment: Alignment.bottomLeft,
    //                           height: height * .08,
    //                           width: width * .15,
    //                           child: const rive.RiveAnimation.asset(
    //                             'assets/riv/circulo_amarillo.riv',
    //                             // alignment: Alignment.bottomLeft,
    //                             fit: BoxFit.contain,
    //                           ),
    //                         ),
    //                       ),
    //                       //Triangulo morado
    //                       Positioned(
    //                         top: height*.07,
    //                         right: width*0.1,
    //                         child: Container(
    //                           //color: Colors.green,
    //                           // alignment: Alignment.bottomLeft,
    //                           height: height * .07,
    //                           width: width * .15,
    //                           child: const rive.RiveAnimation.asset(
    //                             'assets/riv/triangulo_morado.riv',
    //                             // alignment: Alignment.bottomLeft,
    //                             fit: BoxFit.contain,
    //                           ),
    //                         ),
    //                       ),
    //                     ],
    //                   ),
    //
    //                   //Subtema
    //                   Container(
    //                     width: width,
    //                     //color: Colors.yellow,
    //                     child: Text(
    //                       intersubtitle,
    //                       textAlign: TextAlign.center,
    //                       style: const TextStyle(
    //                         fontWeight: FontWeight.w100,
    //                         fontSize: 23,
    //                         color: Color.fromARGB(255,121, 124, 147),
    //                       ),
    //                     ),
    //                   ),
    //
    //                   SizedBox(
    //                     height: height * heightfactor*.5,
    //                   ),
    //
    //                   //Puntaje
    //                   score(
    //                     width: width,
    //                     height: height,
    //                     answered: answered,
    //                     to_answer: to_answer,
    //                   ),
    //
    //                   SizedBox(
    //                     height: height * heightfactor*.5,
    //                   ),
    //
    //                   //Preguntas
    //                   question(
    //                     width: width,
    //                     height: height,
    //                     text: "Pregunta 1",
    //                     state: 2,
    //                   ),
    //
    //                   SizedBox(
    //                     height: height * heightfactor,
    //                   ),
    //
    //                   question(
    //                     width: width,
    //                     height: height,
    //                     text: "Pregunta 2",
    //                     state: 0,
    //                   ),
    //
    //                   SizedBox(
    //                     height: height * heightfactor,
    //                   ),
    //
    //                   question(
    //                     width: width,
    //                     height: height,
    //                     text: "Pregunta 3",
    //                     state: 1,
    //                   ),
    //
    //                   SizedBox(
    //                     height: height * heightfactor,
    //                   ),
    //
    //                   question(
    //                     width: width,
    //                     height: height,
    //                     text: "Pregunta 4",
    //                     state: 2,
    //                   ),
    //
    //                   SizedBox(
    //                     height: height * heightfactor,
    //                   ),
    //
    //                 ],
    //
    //               ),
    //
    //               //Boton regresar
    //               Column(
    //                 children: [
    //                   SizedBox(height: height * .008),
    //                   const SafeArea(
    //                       child:back(x: -0.95, y: 0)
    //                   ),
    //                 ],
    //               ),
    //
    //             ],
    //           ),
    //         ),
    //
    //         //Boton casa
    //         Positioned(
    //           left: width * 0.7,
    //           top: width * 1.76,
    //           child: Align(
    //             alignment: Alignment.bottomRight,
    //             child: homebutton(
    //               text: "Página de inicio",
    //               height: height,
    //               width: width,
    //             ),
    //           ),
    //         ),
    //
    //       ],
    //     ),
    //   ),
    // );

    return Scaffold(
      body: Container(

        //Hacer stack entre fondo y scrollview
        child:Stack(
          children: [

            SingleChildScrollView(
              child: Stack(
                children: [

                  Column(
                    children: [
                      //Separador superior
                      Container(
                        //color: Colors.green,
                        height: height * .05,
                      ),
                      //Banner superior
                      Container(
                        //color: Colors.redAccent,
                        height: height * (.215),
                        width: width * 1,
                        child: Stack(
                          alignment: Alignment.bottomCenter,
                          children:[
                            //Titulo
                            Column(
                              children: [
                                Container(
                                  //color: Colors.orange,
                                  height: height * 0.05,
                                ),
                                Positioned(
                                  child: Container(
                                    width: width * .8,
                                    //color: Colors.pink,
                                    child: Text(
                                      textAlign: TextAlign.center,
                                      intertitle,
                                      style: const TextStyle(
                                        shadows: <Shadow>[
                                          Shadow(
                                            offset: Offset(0,6),
                                            blurRadius: 3.0,
                                            color: Color.fromRGBO(0, 0, 0, 0.21),
                                          ),
                                          //box-shadow: 0px 6px 4px 0px rgba(0, 0, 0, 0.21);
                                        ],
                                        fontWeight: FontWeight.w900,
                                        fontSize: 40,
                                        color: Color.fromRGBO(64, 64, 66, 1),
                                      ),
                                    ),
                                  ),
                                ),
                                // Container(
                                //   color: Colors.blue,
                                //   height: height * 0.02,
                                // ),
                              ],
                            ),
                            //Circulo amarillo
                            Positioned(
                              top: height*.13,
                              left: width*.01,
                              child: Container(
                                //color: Colors.transparent,
                                // alignment: Alignment.bottomLeft,
                                height: height * .09,
                                width: width * .2,
                                child: const rive.RiveAnimation.asset(
                                  'assets/riv/circulo_amarillo.riv',
                                  // alignment: Alignment.bottomLeft,
                                  fit: BoxFit.contain,
                                ),
                              ),
                            ),
                            //Triangulo morado
                            Positioned(
                              top: 0,
                              right: width*.01,
                              child: Container(
                                // color: Colors.transparent,
                                // alignment: Alignment.bottomLeft,
                                height: height * .08,
                                width: width * .3,
                                child: const rive.RiveAnimation.asset(
                                  'assets/riv/triangulo_morado.riv',
                                  // alignment: Alignment.bottomLeft,
                                  fit: BoxFit.contain,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      // Container(
                      //   color: Colors.green,
                      //   height: height * 0.02,
                      // ),
                      //Puntaje
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
                      SizedBox(height: height * heightfactor*.5),
                      score(
                        width: width,
                        height: height,
                        answered: answered,
                        to_answer: to_answer,
                      ),

                      //Generar subtemas
                      SizedBox(
                        height: height*0.97,
                        child: ListView.builder(
                          physics: const NeverScrollableScrollPhysics(),
                          padding: EdgeInsets.fromLTRB(0, height*0.03, 0, height*0.09),
                          itemCount: items.length,
                          prototypeItem:
                          ListTile(
                            onTap: (){},
                            contentPadding: EdgeInsets.fromLTRB(0,height*0.03,0,height*0.09),
                            title: Text(items.first),
                          ),
                          itemBuilder: (context, index) {
                            return
                              Column(
                                children: [
                                  question(
                                    width: width,
                                    height: height,
                                    text: (items[index]),
                                    state: 0,
                                  ),
                                ],
                              );
                          },
                        ),
                      ),

                      //Separador inferior
                      SizedBox(height: height * .03),
                    ],
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
            ),

            //Boton casa
            Positioned(
              left: width * 0.7,
              top: width * 1.76,
              child: Align(
                alignment: Alignment.bottomRight,
                child: homebutton(
                  text: "Página de inicio",
                  height: height,
                  width: width,
                ),
              ),
            ),

          ],
        ),
      ),
    );

  }
}
