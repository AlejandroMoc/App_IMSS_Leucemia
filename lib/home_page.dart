import 'package:flutter/material.dart';
import 'ticket.dart';
import 'view_more.dart';
import 'package:rive/rive.dart' as rive;

import 'account.dart';
import 'last_activity.dart';
import 'actual_unit.dart';
import 'last_news.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  static const Alignment bottomLeft = Alignment(-1.0, 1.0);
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                Container(
                  alignment: Alignment.topCenter,
                  height: height * 0.35,
                  width: width,
                  decoration: const BoxDecoration(
                    gradient: LinearGradient(
                        colors: [
                          Color(0xFFFED213),
                          Color(0xFFF5A22A),
                        ],
                        begin: FractionalOffset.bottomCenter,
                        end: FractionalOffset.topCenter,
                        stops: [0.0, 1.0],
                        tileMode: TileMode.clamp),
                  ),
                  //Cambiar animacion
                  child: const rive.RiveAnimation.asset('assets/shapes.riv',
                      fit: BoxFit.cover),
                ),
                Align(
                  alignment: bottomLeft,
                  child: Padding(
                    padding: EdgeInsets.fromLTRB(
                        width * 0.08, 160, width * 0.08, 30),
                    child: const Text(
                      " ¡Buen día!",
                      textAlign: TextAlign.left,
                      style: TextStyle(
                          fontWeight: FontWeight.w900,
                          fontSize: 40,
                          color: Colors.white),
                    ),
                  ),
                ),
                //Revisar icono
                // const SafeArea(child: Account(x: -0.9, y: 0)),
                //Revisar icono
                // const SafeArea(child: Ticket(x: -0.5, y: 0)),

                const Padding(
                    padding: EdgeInsets.fromLTRB(10, 20, 10, 10),
                    child: Account(x: -0.9, y: 0)),
                const Padding(
                    padding: EdgeInsets.fromLTRB(10, 20, 10, 10),
                    child: Ticket(x: -0.5, y: 0)),
              ],
            ),

            //Separador
            SizedBox(
              height: height * .05,
            ),

            //Unidad actual
            SizedBox(
              width: width,
              child: Align(
                alignment: bottomLeft,
                child: Padding(
                  // padding: EdgeInsets.fromLTRB(50, 0, 50, 20),
                  padding: EdgeInsets.fromLTRB(width * 0.1, 0, width * 0.1, 20),
                  child: const Text(
                    "Unidad actual",
                    textAlign: TextAlign.left,
                    style: TextStyle(
                        fontWeight: FontWeight.w700,
                        fontSize: 26,
                        color: Color(0xff343B8F)),
                  ),
                ),
              ),
            ),

            //Separador
            SizedBox(
              height: height * .01,
            ),

            actual_unit(
              percentage: 75,
              text: "Unidad 2",
              description: "Lorem ipsum dolor, descripción",
              width: width,
              height: height,
            ),

            //Separador
            SizedBox(
              height: height * .04,
            ),

            //Ultima actividad
            SizedBox(
              width: width,
              child: Align(
                alignment: bottomLeft,
                child: Padding(
                  padding: EdgeInsets.fromLTRB(width * 0.1, 0, width * 0.1, 20),
                  child: const Text(
                    "Última actividad",
                    textAlign: TextAlign.left,
                    style: TextStyle(
                        fontWeight: FontWeight.w700,
                        fontSize: 26,
                        color: Color(0xff343B8F)),
                  ),
                ),
              ),
            ),

            //Ultima actividad botones
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(children: <Widget>[
                SizedBox(
                  width: width * 0.1,
                ),
                //que la funcion reciba una direccion a la cual se mandara al presionar el boton
                last_activity(
                  width: width,
                  height: height,
                  text: "Lorem ipsum dolor",
                ),
                SizedBox(
                  width: width * 0.04,
                ),
                last_activity(
                  width: width,
                  height: height,
                  text: "Lorem ipsum dolor",
                ),
                SizedBox(
                  width: width * 0.04,
                ),
                //Checar el icono de la tarjeta de ver mas
                view_more(width: width, height: height),
                SizedBox(
                  width: width * 0.04,
                )
              ]),
            ),

            //Separador
            SizedBox(
              height: height * .04,
            ),

            //Sección de últimas noticias
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Flexible(
                  //Se agrego Flexible por error dado en la pantalla
                  child: SizedBox(
                    child: Align(
                      alignment: bottomLeft,
                      child: Padding(
                        padding: EdgeInsets.fromLTRB(width * 0.1, 0, width * 0.1, 20),
                        child: const Text(
                          "Últimas noticias",
                          textAlign: TextAlign.left,
                          style: TextStyle(
                              fontWeight: FontWeight.w700,
                              fontSize: 26,
                              color: Color(0xff343B8F)),
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  child: Align(
                      alignment: bottomLeft,
                      child: Padding(
                        padding: EdgeInsets.fromLTRB(width * 0.1, 0, width * 0.1, 20),
                        child: MaterialButton(
                          onPressed: () {},
                          child: const Text(
                            "Ver Más",
                            style: TextStyle(
                                color: Color(0xff343B8F), fontSize: 22),
                          ),
                        ),
                      )),
                )
              ],
            ),

            //Ultimas noticias
            last_news(
              text: "Lo último en noticias",
              width: width,
              height: height,
            ),

            //Espaciador
            SizedBox(
              height: width * .05,
            )

          ],
        ),
      ),

      //Barra de navegación
      bottomNavigationBar: ClipRRect(
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(30.0),
          topRight: Radius.circular(30.0),
        ),

        child: BottomNavigationBar(
          showSelectedLabels: false,
          showUnselectedLabels: false,
          unselectedItemColor: Colors.black26,
          backgroundColor: const Color.fromARGB(255, 233, 233, 233),
          type: BottomNavigationBarType.fixed,
          selectedItemColor: const Color(0xff9d91cc),
          selectedFontSize: 13,
          unselectedFontSize: 13,
          iconSize: 40,
          items: const [
            //iconos pendientes
            BottomNavigationBarItem(
              label: "",
              icon: Icon(
                Icons.home,
              ),
            ),
            BottomNavigationBarItem(
              label: "",
              icon: Icon(
                Icons.search,
              ),
            ),
            BottomNavigationBarItem(
              label: "",
              icon: Icon(
                Icons.contact_page_outlined,
              ),
            ),
          ],
        ),
      ),
    );
  }


}
