import 'package:build_pantallas/registration_page.dart';
import 'package:flutter/material.dart';
import 'package:rive/rive.dart' as rive;
import 'package:glass_kit/glass_kit.dart';
import 'dart:math' as math;
import 'main.dart';

class Home extends StatefulWidget {
  const Home(
      {super.key,
      required this.items,
      required Function(dynamic context) builder});

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
        height: double.infinity,
        width: double.infinity,
        child: Stack(
          children: [
            //Fondo con animacion
            const rive.RiveAnimation.asset('assets/riv/animated_bg.riv',
                fit: BoxFit.cover),

            //Glasmorphism
            GlassContainer.frostedGlass(
              height: height,
              width: width,
              borderColor: Colors.transparent,
              borderWidth: 0,
              blur: 15,
            ),

            SafeArea(
              child: Center(
                child: Stack(
                  children: [
                    //Circulo amarillo
                    Align(
                      alignment: Alignment.center,
                      child: Padding(
                        padding: EdgeInsets.only(
                            bottom: height * .65, right: width * .6),
                        child: Container(
                          //color: Colors.red,
                          width: width * .4,
                          height: height * .23,
                          child: const rive.RiveAnimation.asset(
                            'assets/riv/circulo_amarillo.riv',
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),

                    Align(
                      alignment: Alignment.center,
                      child: Container(
                        width: width * .8,
                        height: height * .65,
                        decoration: BoxDecoration(
                          boxShadow: const [
                            BoxShadow(
                              color: Color.fromARGB(60, 105, 105, 105),
                              blurRadius: 2,
                              offset: Offset(0, 10),
                            ),
                            BoxShadow(
                              color: Color.fromARGB(60, 105, 105, 105),
                              blurRadius: 0,
                              offset: Offset(0, 3),
                            ),
                          ],
                          color: Colors.white,
                          borderRadius:
                              const BorderRadius.all(Radius.circular(20)),
                          border: Border.all(
                            color: const Color.fromARGB(255, 121, 124, 147),
                            width: 0,
                          ),
                        ),
                        child: Stack(
                          children: [
                            Positioned(
                              top: height * .05,
                              left: 0,
                              right: 0,
                              child: const Center(
                                child: Text(
                                  textAlign: TextAlign.center,
                                  "Inicia sesión o regístrate",
                                  //items.titlebegin,
                                  //items[index].titlebegin,
                                  style: TextStyle(
                                    shadows: <Shadow>[
                                      Shadow(
                                        offset: Offset(0, 6),
                                        blurRadius: 3.0,
                                        color: Color.fromRGBO(0, 0, 0, 0.21),
                                      ),
                                    ],
                                    fontWeight: FontWeight.w700,
                                    fontSize: 36,
                                    color: Color.fromRGBO(64, 64, 66, 1),
                                  ),
                                ),
                              ),
                            ),

                            Center(
                              child: Container(
                                margin: EdgeInsets.only(bottom: height * .1),
                                width: width * .7,
                                height: height * .065,
                                decoration: BoxDecoration(
                                  boxShadow: const [
                                    BoxShadow(
                                      color: Color.fromARGB(60, 105, 105, 105),
                                      blurRadius: 2,
                                      offset: Offset(0, 10),
                                    ),
                                    BoxShadow(
                                      color: Color.fromARGB(60, 105, 105, 105),
                                      blurRadius: 0,
                                      offset: Offset(0, 3),
                                    ),
                                  ],
                                  color: Colors.white,
                                  borderRadius: const BorderRadius.all(
                                      Radius.circular(20)),
                                  border: Border.all(
                                    color: const Color.fromARGB(
                                        255, 121, 124, 147),
                                    width: 2,
                                  ),
                                ),
                                child: MaterialButton(
                                  onPressed: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) => Registro(
                                          items: items,
                                          builder: (context) => Container(),
                                        ),
                                      ),
                                    );
                                  },
                                  child: const Center(
                                    child: Text(
                                      'Registrarse',
                                      style: TextStyle(
                                        fontSize: 24,
                                        fontWeight: FontWeight.w300,
                                        color: Color.fromRGBO(121, 124, 147, 1),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),

                            //Boton iniciar sesion
                            Center(
                              child: Container(
                                margin: EdgeInsets.only(top: height * .07),
                                width: width * .7,
                                height: height * .065,
                                decoration: BoxDecoration(
                                  boxShadow: const [
                                    BoxShadow(
                                      color: Color.fromARGB(60, 105, 105, 105),
                                      blurRadius: 2,
                                      offset: Offset(0, 10),
                                    ),
                                    BoxShadow(
                                      color: Color.fromARGB(60, 105, 105, 105),
                                      blurRadius: 0,
                                      offset: Offset(0, 3),
                                    ),
                                  ],
                                  color: Colors.white,
                                  borderRadius: const BorderRadius.all(
                                      Radius.circular(20)),
                                  border: Border.all(
                                    color: const Color.fromARGB(
                                        255, 121, 124, 147),
                                    width: 2,
                                  ),
                                ),
                                child: MaterialButton(
                                  onPressed: () {},
                                  child: const Center(
                                    child: Text(
                                      'Iniciar sesión',
                                      style: TextStyle(
                                        fontSize: 24,
                                        fontWeight: FontWeight.w300,
                                        color: Color.fromRGBO(121, 124, 147, 1),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),

                            //Raya divisora
                            Align(
                              alignment: Alignment.center,
                              child: Container(
                                margin: EdgeInsets.only(top: height * .22),
                                height: height * .003,
                                width: width * .7,
                                color: Color(0xFF797C93),
                              ),
                            ),

                            //Boton de Google
                            Align(
                              alignment: Alignment.center,
                              child: Container(
                                margin: EdgeInsets.only(top: height * .42),
                                width: width * .7,
                                height: height * .11,
                                decoration: BoxDecoration(
                                  boxShadow: const [
                                    BoxShadow(
                                      color: Color.fromARGB(60, 105, 105, 105),
                                      blurRadius: 2,
                                      offset: Offset(0, 10),
                                    ),
                                    BoxShadow(
                                      color: Color.fromARGB(60, 105, 105, 105),
                                      blurRadius: 0,
                                      offset: Offset(0, 3),
                                    ),
                                  ],
                                  color: Colors.white,
                                  borderRadius: const BorderRadius.all(
                                      Radius.circular(20)),
                                  border: Border.all(
                                    color: const Color.fromARGB(
                                        255, 121, 124, 147),
                                    width: 2,
                                  ),
                                ),
                                child: MaterialButton(
                                  onPressed: () {},
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Container(
                                        width: width * .01,
                                        padding: EdgeInsets.zero,
                                      ),
                                      Align(
                                        alignment: Alignment.centerLeft,
                                        child: RichText(
                                          text: const TextSpan(
                                            style: TextStyle(
                                              fontSize: 24,
                                              fontWeight: FontWeight.w300,
                                              color: Color.fromRGBO(
                                                  121, 124, 147, 1),
                                            ),
                                            children: [
                                              TextSpan(text: 'Continuar con\n'),
                                              TextSpan(text: 'Google'),
                                            ],
                                          ),
                                        ),
                                      ),
                                      Container(
                                        width: width * .1,
                                        height: height * .1,
                                        margin:
                                            const EdgeInsets.only(right: 10),
                                        child: Image.asset(
                                            'assets/images/google.png'),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),

                    //Triangulo morado
                    Align(
                      alignment: Alignment.center,
                      child: Padding(
                        padding: EdgeInsets.only(top: height * .7, left: 230),
                        child: Container(
                          //color: Colors.red,
                          width: width * .32,
                          height: height * .2,

                          child: Positioned(
                            top: height * .08,
                            right: width * -.03,
                            child: Transform.rotate(
                              angle: -math.pi / 4,
                              child: Container(
                                //color: Colors.blue,
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
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
