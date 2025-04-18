import 'package:flutter/material.dart';
import 'package:rive/rive.dart' as rive;
import 'package:glass_kit/glass_kit.dart';

import 'back.dart';
import 'main.dart';
import 'subtheme.dart';
import 'homebutton.dart';

class SubthemePage extends StatefulWidget {
  const SubthemePage({super.key, required this.items});

  final List<Todo> items;

  @override
  State<SubthemePage> createState() => _SubthemePageState(items);
}

class _SubthemePageState extends State<SubthemePage> {

  final List<Todo> items;
  _SubthemePageState(this.items);

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
                                      items[index].titlesubthemes,
                                      style: const TextStyle(
                                        shadows: <Shadow>[
                                          Shadow(
                                            offset: Offset(0,6),
                                            blurRadius: 3.0,
                                            color: Color.fromRGBO(0, 0, 0, 0.21),
                                          ),
                                        ],
                                        fontWeight: FontWeight.w700,
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
                            top: height*.02,
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

                      //Generar subtemas
                      Container(
                        //color: Colors.red,
                        height: height*0.97,
                        child: ListView.builder(
                          physics: const NeverScrollableScrollPhysics(),
                          padding: EdgeInsets.fromLTRB(0,0, 0, height*0.12),
                          itemCount: items.length,
                          prototypeItem:
                          ListTile(
                            //onTap: (){},
                            contentPadding: EdgeInsets.fromLTRB(0,0,0,height*0.12),
                            //REVISAR COMO HACER QUE SEA items.subthemes.first o algo similar
                            //title: Text(items.first as String),
                          ),
                          itemBuilder: (context, index) {
                            return
                              Column(
                                children: [
                                  subtheme(
                                    items: items,
                                    width: width,
                                    height: height,
                                    text: (items[index].subthemes),
                                    //state: 0,
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
                      SizedBox(height: height * .02),
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
                child: HomeButton(
                  text: "Página de inicio",
                  height: height,
                  width: width,
                  items: items,
                ),
              ),
            ),

          ],
        ),
      ),
    );

  }
}
