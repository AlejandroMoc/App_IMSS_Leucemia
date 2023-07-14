import 'package:flutter/material.dart';
import 'package:rive/rive.dart' as rive;
// import 'package:flutter_svg/flutter_svg.dart';
import 'package:glass_kit/glass_kit.dart';

import 'back.dart';
import 'banner.dart';
import 'subtheme.dart';
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
    String screentitle = "Subtemas";
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
                      SizedBox(
                        height: height * .05,
                      ),
                      //Banner superior
                      SizedBox(
                        height: height * .14,
                        width: width * 1,
                        child: Stack(
                          alignment: Alignment.center, 
                          children:[
                            //Titulo
                            Positioned(
                              child: Container(
                                child: Text(
                                    screentitle,
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

                      //Generar subtemas
                      SizedBox(
                        height: height*0.9,
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
                                  subtheme(
                                    width: width,
                                    height: height,
                                    text: (items[index]),
                                  ),
                                ],
                              );
                            },
                        ),
                      ),

                      // ANTIGUA FORMA DE IMPRIMIR LOS ELEMENTOS
                      // subtheme(
                      //   width: width,
                      //   height: height,
                      //   text: "Subtema 1",
                      // ),
                      //
                      // SizedBox(height: height * 0.04,),
                      //
                      // subtheme(
                      //   width: width,
                      //   height: height,
                      //   text: "Subtema 2",
                      // ),
                      //
                      // SizedBox(height: height * 0.04,),
                      //
                      // subtheme(
                      //   width: width,
                      //   height: height,
                      //   text: "Subtema 3",
                      // ),

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
