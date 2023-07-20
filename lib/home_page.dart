import 'package:co_003b/stats.dart';
import 'package:flutter/material.dart';
import 'package:rive/rive.dart' as rive;
// import 'package:flutter_svg/flutter_svg.dart';
import 'package:glass_kit/glass_kit.dart';

import 'account.dart';
import 'main.dart';
import 'units.dart';
//import 'score.dart';

class Home extends StatefulWidget {
  const Home({super.key, required this.items});

  final List<Todo> items;

  @override
  State<Home> createState() => _HomeState(items);
}

class _HomeState extends State<Home> {

  final List<Todo> items;
  _HomeState(this.items);

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    double heightfactor = 0.04;

    return Scaffold(
      body: Container(

        //Hacer stack entre fondo y scrollview
        child:Stack(
          children: [

            //Fondo con animacion
            const rive.RiveAnimation.asset('assets/riv/animated_bg.riv', fit: BoxFit.cover),

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
                        //color: Colors.red,
                        //height: height * (.25),
                        width: width * 1,
                        child: Stack(
                          alignment: Alignment.bottomCenter,
                          children:[
                            //Titulo
                            Column(
                              children: [
                                Container(
                                  height: height * 0.05,
                                ),
                                Container(
                                  //color: Colors.blue,
                                  height: height *.18,
                                  child: ListView.builder(
                                    physics: const NeverScrollableScrollPhysics(),
                                    itemCount: 1,
                                    prototypeItem:
                                    ListTile(
                                      //onTap: (){},
                                      contentPadding: EdgeInsets.fromLTRB(0,height*0.03,0,height*0.03),
                                    ),
                                    itemBuilder: (context, index) {
                                      return
                                        Container(
                                          width: width * .8,
                                          height: height,
                                          //color: Colors.pink,
                                          child: Text(
                                            //Se debe borrar el textAlign cuando marque error de que no cabe
                                            textAlign: TextAlign.center,
                                            items[index].titlebegin,
                                            //items[index].pregunta111[index],
                                            style: const TextStyle(
                                              shadows: <Shadow>[
                                                Shadow(
                                                  offset: Offset(0,6),
                                                  blurRadius: 3.0,
                                                  color: Color.fromRGBO(0, 0, 0, 0.21),
                                                ),
                                              ],
                                              fontWeight: FontWeight.w900,
                                              fontSize: 40,
                                              color: Color.fromRGBO(64, 64, 66, 1),
                                            ),
                                          ),
                                        );
                                    },
                                  ),




                                ),
                              ],
                            ),
                            //Circulo amarillo
                            Positioned(
                              top: height*.06,
                              left: width*.1,
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
                              right: width*.09,
                              child: Container(
                                //color: Colors.transparent,
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

                      //Generar estadísticas
                      Container(
                        padding: EdgeInsets.zero,
                        //color: Colors.red,
                        height: height*0.27,
                        child: ListView.builder(
                          physics: const NeverScrollableScrollPhysics(),
                          padding: EdgeInsets.fromLTRB(0,0, 0, height*0.3),
                          itemCount: 1,
                          prototypeItem:
                          ListTile(
                            onTap: (){},
                            contentPadding: EdgeInsets.fromLTRB(0,0,0,height*0.3),
                            //REVISAR COMO HACER QUE SEA items.unitss.first o algo similar
                            //title: Text(items.first as String),
                          ),
                          itemBuilder: (context, index) {
                            return
                              Column(
                                children: [
                                  stats(
                                    width: width,
                                    height: height,
                                    text: (items[index].titlestats),
                                    //state: 0,
                                  ),
                                ],
                              );
                          },
                        ),
                      ),

                      //Generar subtemas
                      Container(
                        //color: Colors.red,
                        padding: EdgeInsets.fromLTRB(width*0.07, height*0.01, width*0.07, height*0.01),
                        //color: Colors.purple,
                        height: height*0.7,

                        // child: ListView.builder(
                        //   physics: const NeverScrollableScrollPhysics(),
                        //   padding: EdgeInsets.fromLTRB(0,0, 0, height*0.12),
                        //   itemCount: items.length,
                        //   prototypeItem:
                        //   ListTile(
                        //     onTap: (){},
                        //     contentPadding: EdgeInsets.fromLTRB(0,0,0,height*0.12),
                        //     //REVISAR COMO HACER QUE SEA items.unitss.first o algo similar
                        //     //title: Text(items.first as String),
                        //   ),
                        //   itemBuilder: (context, index) {
                        //     return
                        //       Column(
                        //         children: [
                        //           units(
                        //             width: width,
                        //             height: height,
                        //             text: (items[index].subthemes),
                        //           ),
                        //         ],
                        //       );
                        //   },
                        // ),
                        // child: GestureDetector(
                        //   onTap: () {},
                        //
                        // ),

                        child: GridView.builder(
                          padding: const EdgeInsets.all(0),
                          physics:  const NeverScrollableScrollPhysics(),
                          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 2
                          ),
                          //itemCount: 5,
                          itemCount: items.length,
                          itemBuilder: (BuildContext context, int index) {
                            return
                              GestureDetector(
                                onTap: () {},
                                child: Container(
                                  //color: Colors.blue,
                                  padding: EdgeInsets.fromLTRB(width*0.03,height*0.01,width*0.03,height*0.01),
                                  child: units(
                                    width: width,
                                    height: height,
                                    text: (items[index].unitsold),
                                  ),
                                ),

                              );

                            //   Container(
                            //   //color: Colors.blue,
                            //   padding: EdgeInsets.fromLTRB(width*0.03,height*0.01,width*0.03,height*0.01),
                            //   child: units(
                            //     width: width,
                            //     height: height,
                            //     text: (items[index].unitsold),
                            //   ),
                            // );

                          },
                        ),

                      ),

                      //Separador inferior
                      SizedBox(height: height * .03),
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
