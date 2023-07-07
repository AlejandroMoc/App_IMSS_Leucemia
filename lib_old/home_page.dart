import 'package:flutter/material.dart';
import 'package:pantalla_mi/ticket.dart';
import 'package:pantalla_mi/view_more.dart';
import 'package:rive/rive.dart' as rive;

import 'account.dart';
import 'last_activity.dart';
import 'actual_unit.dart';

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
                  //Hay que meter los iconos/botones arriba de la frase
                  alignment: Alignment.topCenter,
                  height: height * 0.3,
                  width: width,
                  decoration: const BoxDecoration(
                    gradient: LinearGradient(
                        colors: [
                          Color(0xFFF3AE3C),
                          Color.fromARGB(255, 177, 250, 60) //Revisar tono
                        ],
                        begin: FractionalOffset.bottomCenter,
                        end: FractionalOffset.topCenter,
                        stops: [0.0, 1.0],
                        tileMode: TileMode.clamp),
                  ),
                  //Cambiar animacion
                  child: const rive.RiveAnimation.asset('assets/shapes.riv',
                      fit: BoxFit.cover
                  ),
                ),
                const Align(
                  alignment: bottomLeft,
                  child: Padding(
                    padding: EdgeInsets.fromLTRB(30, 160, 50, 20),
                    child: Text(
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
                const SafeArea(child: Account(x: -0.9, y: 0)),
                //Revisar icono
                const SafeArea(child: Ticket(x: -0.5, y: 0)),
              ],
            ),

            //Separador
            SizedBox(
              height: height * .05,
            ),

            //Unidad actual
            SizedBox(
              width: width,
              child: const Align(
                alignment: bottomLeft,
                child: Padding(
                  padding: EdgeInsets.fromLTRB(45, 0, 50, 20),
                  child: Text(
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

              /*
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(15)),
                boxShadow: [
                  BoxShadow(
                    color: Color.fromARGB(60, 105, 105, 105),
                    blurRadius: 5,
                    offset: Offset(0, 10),
                  ),
                ],
              ),
              child: _button(width, height),
              */

            ),

            //Separador
            SizedBox(
              height: height * .04,
            ),

            //Ultima actividad
            SizedBox(
              width: width,
              child: const Align(
                alignment: bottomLeft,
                child: Padding(
                  padding: EdgeInsets.fromLTRB(45, 0, 50, 20),
                  child: Text(
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
                  text: "Lorem ipsum",
                ),
                SizedBox(
                  width: width * 0.04,
                ),
                //Checar el icono de la tarjeta de ver mas
                view_more(width: width, height: height),
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
                const Flexible(
                  //Se agrego Flexible por error dado en la pantalla
                  child: SizedBox(
                    child: Align(
                      alignment: bottomLeft,
                      child: Padding(
                        padding: EdgeInsets.fromLTRB(45, 0, 30, 20),
                        child: Text(
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
                        padding: const EdgeInsets.fromLTRB(0, 0, 30, 20),
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
            Container(
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(15)),
                boxShadow: [
                  BoxShadow(
                    color: Color.fromARGB(60, 105, 105, 105),
                    blurRadius: 5,
                    offset: Offset(0, 10),
                  ),
                ],
              ),
              child: _buttonNews(width, height),
            ),
            SizedBox(
              height: width * .05,
            )
          ],
        ),
      ),
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



  Widget _buttonNews(dynamic width, dynamic height) {
    //posible degradado o animaciones
    return SizedBox(
      width: width * 0.8,
      height: height * 0.22,
      child: MaterialButton(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        onPressed: () {
          setState(() {});
        },
        color: const Color(0xfffaca3c),
        child: const Padding(
          padding: EdgeInsets.fromLTRB(0, 20, 50, 0),
          child: Align(
            alignment: Alignment.topLeft,
            child: Text(
              "Lo último en noticias",
              style: TextStyle(
                  fontSize: 35,
                  fontWeight: FontWeight.w700,
                  color: Colors.white),
            ),
          ),
        ),
      ),
    );
  }
}
