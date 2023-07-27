import 'package:flutter/material.dart';
import 'package:rive/rive.dart' as rive;
import 'package:glass_kit/glass_kit.dart';

import 'account.dart';
import 'main.dart';
import 'units.dart';
import 'stats.dart';

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

        //Stack entre fondo y elementos
        child:Stack(
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
                      Stack(
                        alignment: Alignment.bottomCenter,
                        children:[
                          //Titulo
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
                                  Padding(
                                    padding: EdgeInsets.fromLTRB(0,height*.02,0,0),
                                    child: Text(
                                      //Se debe borrar el textAlign cuando marque error de que no cabe
                                      textAlign: TextAlign.center,
                                      items[index].titlebegin,
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
                          //Circulo amarillo
                          Positioned(
                            top: height*.08,
                            left: width*.2,
                            child: Container(
                              height: height * .09,
                              width: width * .2,
                              child: const rive.RiveAnimation.asset(
                                'assets/riv/circulo_amarillo.riv',
                                fit: BoxFit.contain,
                              ),
                            ),
                          ),

                          //Triangulo morado
                          Positioned(
                            top: height*.02,
                            right: width*.2,
                            child: Container(
                              height: height * .08,
                              width: width * .3,
                              child: const rive.RiveAnimation.asset(
                                'assets/riv/triangulo_morado.riv',
                                fit: BoxFit.contain,
                              ),
                            ),
                          ),
                        ],
                      ),

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

                        child: GridView.builder(
                          padding: const EdgeInsets.all(0),
                          physics:  const NeverScrollableScrollPhysics(),
                          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 2
                          ),
                          itemCount: items.length,
                          itemBuilder: (BuildContext context, int index) {
                            return
                              Container(
                                //color: Colors.purple,
                                padding: EdgeInsets.fromLTRB(width*0.03,height*0.01,width*0.03,height*0.01),
                                child: units(
                                items: items,
                                width: width,
                                height: height,
                                text: (items[index].unitsold),
                              ),
                            );

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
