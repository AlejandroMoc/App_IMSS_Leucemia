import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  //Título de la barra
  static const appTitle = 'CO-011 - Información';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: appTitle,
      home: const MyHomePage(title: appTitle),
      theme: ThemeData(
        textTheme:
          GoogleFonts.nunitoTextTheme(Theme.of(context).textTheme)
      ),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {

    //Declarar altura y anchura universales

    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Scaffold(

      appBar: AppBar(title: Text(title)),
      body: const Center(

      ),
      drawer: Drawer(

        backgroundColor: const Color(0xffF5F5F5),

        // Add a ListView to the drawer. This ensures the user can scroll
        // through the options in the drawer if there isn't enough vertical
        // space to fit everything.
        child: ListView(

          children: [

            SizedBox(

              height: 120.0,
              child: DrawerHeader(

                padding: const EdgeInsets.all(0.0),
                child: Stack(
                  children: [

                    //Aquí va el botón de retorno
                    SizedBox(
                      height: height * .03,
                      width: width * .03,
                      child: IconButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        padding: const EdgeInsets.fromLTRB(15,0,0,0),
                        icon: const Icon(Icons.arrow_back,color: Color(0xff8075AA)),
                      ),
                    ),



                    //Aquí va el banner superior
                    const SizedBox(
                      //width: width,
                      child: Align(
                        alignment: Alignment.center,
                        child: Padding(
                          //left top right bottom
                          padding: EdgeInsets.fromLTRB(10, 25, 20, 0),
                          child: Text(
                            "Información personal",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontWeight: FontWeight.w900,
                                fontSize: 22,
                                color: Color(0xff717171)),
                          ),
                        ),
                      ),
                    ),

                  ],
                ),
              ),
            ),

            SizedBox(
              height: height,
              width: width,
              child: Align(
                alignment: Alignment.topCenter,
                child: Padding(

                  //left top right bottom
                  padding: const EdgeInsets.fromLTRB(25, 0, 30, 0),
                  child: ListView(
                    children: [

                      const SizedBox(
                        height: 45,
                        child: Align(
                          alignment: Alignment.center,
                          child: ListTile(
                            title: Text(
                              style: TextStyle(
                                fontSize: 14.0,
                                color: Color(0xff717171),
                                fontWeight: FontWeight.w700,
                              ),
                              "NOMBRE(S)"
                            ),
                            textColor: Color(0xff717171),
                            minVerticalPadding: 10,

                          ),
                        ),
                      ),

                      SizedBox(
                        height: 40,
                        child: Align(
                          alignment: Alignment.center,
                          child: Padding(
                            //left top right bottom
                            padding: const EdgeInsets.fromLTRB(15, 0, 5, 0),
                            child: TextFormField(
                              textAlign : TextAlign.left,
                              textAlignVertical: TextAlignVertical.center,
                              //Color del texto al ser introducido
                              style: const TextStyle(
                                color: Color(0xff717171),
                                fontSize: 18,
                                fontWeight: FontWeight.w900,
                              ),
                              decoration: InputDecoration(
                                contentPadding: const EdgeInsets.fromLTRB(5,0,0,0),
                                fillColor: Colors.white,
                                filled: true,
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(5.0),
                                  borderSide: BorderSide.none,
                                ),
                                hintText: 'Lorem ipsum',
                                hintStyle: const TextStyle(
                                  color: Color(0xff717171),
                                  fontSize: 18,
                                  fontWeight: FontWeight.w900,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),


                      const SizedBox(
                        height: 45,
                        child: Align(
                          alignment: Alignment.center,
                          child: ListTile(
                            title: Text(
                                style: TextStyle(
                                  fontSize: 14.0,
                                  color: Color(0xff717171),
                                  fontWeight: FontWeight.w700,
                                ),
                                "PRIMER APELLIDO"
                            ),
                            textColor: Color(0xff717171),
                            minVerticalPadding: 10,

                          ),
                        ),
                      ),

                      SizedBox(
                        height: 40,
                        child: Align(
                          alignment: Alignment.center,
                          child: Padding(
                            //left top right bottom
                            padding: const EdgeInsets.fromLTRB(15, 0, 5, 0),
                            child: TextFormField(
                              textAlign : TextAlign.left,
                              textAlignVertical: TextAlignVertical.top,
                              //Color del texto al ser introducido
                              style: const TextStyle(

                                color: Color(0xff717171),
                                fontSize: 18,
                                fontWeight: FontWeight.w900,
                              ),

                              decoration: InputDecoration(
                                contentPadding: const EdgeInsets.fromLTRB(5,0,0,0),
                                fillColor: Colors.white,
                                filled: true,
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(5.0),
                                  borderSide: BorderSide.none,

                                ),

                                hintText: 'Lorem ipsum',
                                hintStyle: const TextStyle(
                                  color: Color(0xff717171),
                                  fontSize: 18,
                                  fontWeight: FontWeight.w900,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),


                      const SizedBox(
                        height: 45,
                        child: Align(
                          alignment: Alignment.center,
                          child: ListTile(
                            title: Text(
                                style: TextStyle(
                                  fontSize: 14.0,
                                  color: Color(0xff717171),
                                  fontWeight: FontWeight.w700,
                                ),
                                "SEGUNDO APELLIDO"
                            ),
                            textColor: Color(0xff717171),
                            minVerticalPadding: 10,

                          ),
                        ),
                      ),

                      SizedBox(
                        height: 40,
                        child: Align(
                          alignment: Alignment.center,
                          child: Padding(
                            //left top right bottom
                            padding: const EdgeInsets.fromLTRB(15, 0, 5, 0),
                            child: TextFormField(
                              textAlign : TextAlign.left,
                              textAlignVertical: TextAlignVertical.top,
                              //Color del texto al ser introducido
                              style: const TextStyle(

                                color: Color(0xff717171),
                                fontSize: 18,
                                fontWeight: FontWeight.w900,
                              ),

                              decoration: InputDecoration(
                                contentPadding: const EdgeInsets.fromLTRB(5,0,0,0),
                                fillColor: Colors.white,
                                filled: true,
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(5.0),
                                  borderSide: BorderSide.none,

                                ),

                                hintText: 'Lorem ipsum',
                                hintStyle: const TextStyle(
                                  color: Color(0xff717171),
                                  fontSize: 18,
                                  fontWeight: FontWeight.w900,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),



                      const SizedBox(
                        height: 45,
                        child: Align(
                          alignment: Alignment.center,
                          child: ListTile(
                            title: Text(
                                style: TextStyle(
                                  fontSize: 14.0,
                                  color: Color(0xff717171),
                                  fontWeight: FontWeight.w700,
                                ),
                                "CORREO ELECTRÓNICO"
                            ),
                            textColor: Color(0xff717171),
                            minVerticalPadding: 10,

                          ),
                        ),
                      ),

                      SizedBox(
                        height: 40,
                        child: Align(
                          alignment: Alignment.center,
                          child: Padding(
                            //left top right bottom
                            padding: const EdgeInsets.fromLTRB(15, 0, 5, 0),
                            child: TextFormField(
                              textAlign : TextAlign.left,
                              textAlignVertical: TextAlignVertical.top,
                              //Color del texto al ser introducido
                              style: const TextStyle(

                                color: Color(0xff717171),
                                fontSize: 18,
                                fontWeight: FontWeight.w900,
                              ),

                              decoration: InputDecoration(
                                contentPadding: const EdgeInsets.fromLTRB(5,0,0,0),
                                fillColor: Colors.white,
                                filled: true,
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(5.0),
                                  borderSide: BorderSide.none,

                                ),

                                hintText: 'Lorem ipsum',
                                hintStyle: const TextStyle(
                                  color: Color(0xff717171),
                                  fontSize: 18,
                                  fontWeight: FontWeight.w900,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),

                      const SizedBox(
                        height: 45,
                        child: Align(
                          alignment: Alignment.center,
                          child: ListTile(
                            title: Text(
                                style: TextStyle(
                                  fontSize: 14.0,
                                  color: Color(0xff717171),
                                  fontWeight: FontWeight.w700,
                                ),
                                "EDAD"
                            ),
                            textColor: Color(0xff717171),
                            minVerticalPadding: 10,

                          ),
                        ),
                      ),

                      SizedBox(
                        height: 40,
                        child: Align(
                          alignment: Alignment.center,
                          child: Padding(
                            //left top right bottom
                            padding: const EdgeInsets.fromLTRB(15, 0, 5, 0),
                            child: TextFormField(
                              textAlign : TextAlign.left,
                              textAlignVertical: TextAlignVertical.top,
                              //Color del texto al ser introducido
                              style: const TextStyle(

                                color: Color(0xff717171),
                                fontSize: 18,
                                fontWeight: FontWeight.w900,
                              ),

                              decoration: InputDecoration(
                                contentPadding: const EdgeInsets.fromLTRB(5,0,0,0),
                                fillColor: Colors.white,
                                filled: true,
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(5.0),
                                  borderSide: BorderSide.none,

                                ),

                                hintText: 'Lorem ipsum',
                                hintStyle: const TextStyle(
                                  color: Color(0xff717171),
                                  fontSize: 18,
                                  fontWeight: FontWeight.w900,
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
            ),

          ],
        ),
      ),
    );
  }
}