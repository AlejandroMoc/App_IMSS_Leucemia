import 'package:flutter/material.dart';

class Pregunta extends StatefulWidget {
  const Pregunta({super.key});

  @override
  State<Pregunta> createState() => _PreguntaState();
}

class _PreguntaState extends State<Pregunta> {
  String selectedButton = '';
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.white,
      body: ListView(children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30.0, vertical: 90.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                "Pregunta 1:",
                style: TextStyle(
                  fontSize: 40.0,
                  fontWeight: FontWeight.w600,
                  color: Color.fromARGB(255, 66, 66, 66),
                  shadows: [
                    Shadow(
                      color: Color.fromARGB(
                          255, 170, 170, 170), // Color del sombreado
                      offset: Offset(2, 4), // Desplazamiento del sombreado
                      blurRadius: 10.0, // Radio de difuminado del sombreado
                    ),
                  ],
                ),
              ),
              SizedBox(height: height * 0.035),
              const Center(
                child: Text(
                  "¿Qué porcentaje de los cánceres infantiles corresponden a la leucemia?",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 30.0,
                    fontWeight: FontWeight.w400,
                    color: Color(0xFF797C93),
                  ),
                ),
              ),
              SizedBox(height: height * 0.035),
              Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ElevatedButton(
                      onPressed: () {
                        setState(() {
                          selectedButton = '1';
                        });
                      },
                      style: ElevatedButton.styleFrom(
                        foregroundColor: const Color(0xFF797C93),
                        backgroundColor: Colors.white,
                        side: const BorderSide(
                            color: Color(0xFF797C93), width: 1.5),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15.0),
                        ),
                        elevation: 5.0,
                        minimumSize: const Size(300,
                            50), // Cambia el ancho y alto del botón // Cambia el color del texto
                      ),
                      child: const Text(
                        '30%',
                        style: TextStyle(fontSize: 20.0),
                      ),
                    ),
                    SizedBox(height: height * 0.015),
                    ElevatedButton(
                      onPressed: () {
                        setState(() {
                          selectedButton = '2';
                        });
                      },
                      style: ElevatedButton.styleFrom(
                        foregroundColor: const Color(0xFF797C93),
                        backgroundColor: Colors.white,
                        side: const BorderSide(
                            color: Color(0xFF797C93), width: 1.5),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15.0),
                        ),
                        elevation: 5.0,
                        minimumSize: const Size(300,
                            50), // Cambia el ancho y alto del botón // Cambia el color del texto
                      ),
                      child: const Text(
                        '20%',
                        style: TextStyle(fontSize: 20.0),
                      ),
                    ),
                    SizedBox(height: height * 0.015),
                    ElevatedButton(
                      onPressed: () {
                        setState(() {
                          selectedButton = '3';
                        });
                      },
                      style: ElevatedButton.styleFrom(
                        foregroundColor: const Color(0xFF797C93),
                        backgroundColor: Colors.white,
                        side: const BorderSide(
                            color: Color(0xFF797C93), width: 1.5),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15.0),
                        ),
                        elevation: 5.0,
                        minimumSize: const Size(300,
                            50), // Cambia el ancho y alto del botón // Cambia el color del texto
                      ),
                      child: const Text(
                        '40%',
                        style: TextStyle(fontSize: 20.0),
                      ),
                    ),
                    SizedBox(height: height * 0.015),
                    ElevatedButton(
                      onPressed: () {
                        setState(() {
                          selectedButton = '4';
                        });
                      },
                      style: ElevatedButton.styleFrom(
                        foregroundColor: const Color(0xFF797C93),
                        backgroundColor: Colors.white,
                        side: const BorderSide(
                            color: Color(0xFF797C93), width: 1.5),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15.0),
                        ),
                        elevation: 5.0,
                        minimumSize: const Size(300,
                            50), // Cambia el ancho y alto del botón // Cambia el color del texto
                      ),
                      child: const Text(
                        '50%',
                        style: TextStyle(fontSize: 20.0),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              child: Stack(
                children: [
                  SizedBox(
                      height: height * 0.08,
                      width: width * 0.25,
                      child: const Icon(
                        Icons.arrow_back,
                        size: 35.0,
                        color: Color(0xFF797C93),
                      )),
                  SizedBox(
                      height: height * 0.08,
                      width: width * 0.5,
                      child: MaterialButton(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(50)),
                        elevation: 0,
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const Pregunta(),
                            ),
                          );
                        },
                        color: Colors.transparent,
                        child: Align(
                          alignment: FractionalOffset(width * 0.3, 0.5),
                          child: const Text(
                            'Pregunta anterior',
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
            SizedBox(width: width * 0.05),
            Expanded(
              child: Stack(
                children: [
                  SizedBox(
                    height: height * 0.08,
                    width: width * 0.5,
                    child: MaterialButton(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(50),
                      ),
                      elevation: 0,
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const Pregunta(),
                          ),
                        );
                      },
                      color: Colors.transparent,
                      child: const Align(
                        alignment: Alignment.center,
                        child: Text(
                          'Siguiente pregunta',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w600,
                            color: Color(0xFF797C93),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.centerRight,
                    child: SizedBox(
                      height: height * 0.08,
                      width: width * 0.25,
                      child: const Icon(
                        Icons.arrow_forward,
                        size: 35.0,
                        color: Color(0xFF797C93),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ]),
    );
  }
}
