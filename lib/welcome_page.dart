import 'package:flutter/material.dart';
import 'package:glassmorphism/glassmorphism.dart';
import 'package:rive/rive.dart' as rive;
import 'dart:math' as math;
import 'main.dart';
import 'preregistration_page.dart';

class GlassmorphicSample extends StatefulWidget {
  const GlassmorphicSample({super.key, required this.items});
  final List<Todo> items;
  @override
  State<GlassmorphicSample> createState() => GlassmorphicSampleState(items);
}

class GlassmorphicSampleState extends State<GlassmorphicSample> {
  final List<Todo> items;
  GlassmorphicSampleState(this.items);

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        child: Stack(
          children: [
            SizedBox(
                height: height,
                width: width,
                child: const rive.RiveAnimation.asset(
                  'assets/riv/animated_bg.riv',
                  fit: BoxFit.cover,
                )),
            SafeArea(
              child: Center(
                child: GlassmorphicContainer(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height,
                  borderRadius: 20,
                  blur: 20,
                  alignment: Alignment.center,
                  border: 2,
                  linearGradient: LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    colors: [
                      Color(0xFFD9D7E4).withOpacity(0.1),
                      Color(0xFFFFFFFF).withOpacity(0.05),
                    ],
                    stops: [
                      0.1,
                      1,
                    ],
                  ),
                  borderGradient: LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    colors: [
                      Color(0xFFD9D7E4).withOpacity(0.5),
                      Color(0xFFFFFFFF).withOpacity(0.5),
                    ],
                  ),
                  child: Stack(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(top: 500, right: 150),
                        child: Align(
                          alignment: Alignment.center,
                          child: Transform.rotate(
                            angle: -math.pi / 4.1,
                            child: Container(
                              color: Colors.transparent,
                              // alignment: Alignment.bottomLeft,
                              height: height * .2,
                              width: width * .3,
                              child: const rive.RiveAnimation.asset(
                                'assets/riv/circulo_amarillo.riv',
                                // alignment: Alignment.bottomLeft,
                                fit: BoxFit.contain,
                              ),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 550),
                        child: Align(
                          alignment: Alignment.center,
                          child: Container(
                            width: 160,
                            height: 50,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(20),
                              border: Border.all(
                                color: Colors.white,
                                width: 1,
                              ),
                            ),
                            child: Stack(
                              children: [
                                SizedBox(
                                  height: height * 0.08,
                                  width: width * 0.5,
                                  child: Container(
                                    clipBehavior: Clip.antiAliasWithSaveLayer,
                                    decoration: BoxDecoration(
                                        // ignore: prefer_const_literals_to_create_immutables
                                        boxShadow: [
                                          const BoxShadow(
                                              color: Colors.black12,
                                              offset: Offset(0.0, 10.0),
                                              blurRadius: 5.0),
                                        ],
                                        borderRadius: BorderRadius.circular(50),
                                        color: Colors.white),
                                  ),
                                ),
                                SizedBox(
                                    height: height * 0.08,
                                    width: width * 0.025,
                                    child: const Icon(
                                      Icons.arrow_forward,
                                      size: 40.0,
                                      color: Color(0xFF797C93),
                                    )),
                                SizedBox(
                                    height: height * 0.08,
                                    width: width * 0.5,
                                    child: MaterialButton(
                                      shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(50)),
                                      elevation: 0,
                                      onPressed: () {
                                        Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                            builder: (context) => Home(
                                              items: items,
                                              builder: (context) => Container(),
                                            ),
                                          ),
                                        );
                                      },
                                      color: Colors.transparent,
                                      child: const Align(
                                        alignment: FractionalOffset(0.7, 0.5),
                                        child: Text(
                                          'Siguiente',
                                          style: TextStyle(
                                              fontSize: 20,
                                              fontWeight: FontWeight.w600,
                                              color: Color(0xFF797C93)),
                                        ),
                                        //colorBrightness: Brightness.dark,
                                      ),
                                    )),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 610, left: 140),
                        child: Align(
                          alignment: Alignment.center,
                          child: Transform.rotate(
                            angle: -math.pi / 4.1,
                            child: Container(
                              color: Colors.transparent,
                              // alignment: Alignment.bottomLeft,
                              height: height * .2,
                              width: width * .3,
                              child: const rive.RiveAnimation.asset(
                                'assets/riv/triangulo_morado.riv',
                                // alignment: Alignment.bottomLeft,
                                fit: BoxFit.contain,
                              ),
                            ),
                          ),
                        ),
                      ),
                      Center(
                        child: Container(
                          width: 300,
                          height: 300,
                          child: Image.asset(
                              'assets/images/Logo_central.png'), //Este logo hay que cambiarlo por el de buena calidad
                        ),
                      ),
                      Center(
                        child: Padding(
                          padding: EdgeInsets.only(bottom: 550),
                          child: Text(
                            '¡Bienvenido!',
                            style: TextStyle(
                              fontSize: 40,
                              fontWeight: FontWeight.bold,
                              fontFamily: 'Nunito',
                              color: Colors.black,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
