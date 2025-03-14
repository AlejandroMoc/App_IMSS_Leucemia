import 'package:flutter/material.dart';
import 'package:rive/rive.dart' as rive;

import 'back.dart';
import 'main.dart';
import 'question.dart';
import 'score.dart';
import 'homebutton.dart';

class QuestionListPage extends StatefulWidget {
  const QuestionListPage({super.key, required this.items});

  final List<Todo> items;

  @override
  State<QuestionListPage> createState() => _QuestionListPageState(items);
}

class _QuestionListPageState extends State<QuestionListPage> {
  final List<Todo> items;
  _QuestionListPageState(this.items);

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    double heightfactor = 0.04;

    //String titleunit = "Unidad 1: Lorem Ipsum";
    int answered = 2;
    int to_answer = 4;

    return Scaffold(
      body: Container(
        //Hacer stack entre fondo y scrollview
        child: Stack(
          children: [
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
                          children: [
                            //Titulo
                            Column(
                              children: [
                                Container(
                                  height: height * 0.05,
                                ),
                                Container(
                                  //color: Colors.blue,
                                  height: height * .18,
                                  child: ListView.builder(
                                    physics:
                                        const NeverScrollableScrollPhysics(),
                                    itemCount: 1,
                                    prototypeItem: ListTile(
                                      //onTap: (){},
                                      contentPadding: EdgeInsets.fromLTRB(
                                          0, height * 0.03, 0, height * 0.03),
                                    ),
                                    itemBuilder: (context, index) {
                                      return Container(
                                        width: width * .8,
                                        height: height,
                                        //color: Colors.pink,
                                        child: Text(
                                          textAlign: TextAlign.center,
                                          items[index].titleunit,
                                          style: const TextStyle(
                                            shadows: <Shadow>[
                                              Shadow(
                                                offset: Offset(0, 6),
                                                blurRadius: 3.0,
                                                color: Color.fromRGBO(
                                                    0, 0, 0, 0.21),
                                              ),
                                            ],
                                            fontWeight: FontWeight.w700,
                                            fontSize: 40,
                                            color:
                                                Color.fromRGBO(64, 64, 66, 1),
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
                              top: height * .13,
                              left: width * .01,
                              child: Container(
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
                              right: width * .01,
                              child: Container(
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

                      //Puntaje 1
                      Container(
                        //color: Colors.deepPurple,
                        height: height * .05,
                        child: ListView.builder(
                          padding: EdgeInsets.fromLTRB(0, height * .005, 0, 0),
                          physics: const NeverScrollableScrollPhysics(),
                          itemCount: 1,
                          prototypeItem: const ListTile(
                              //onTap: (){},
                              //contentPadding: EdgeInsets.fromLTRB(0,height*0.03,0,height*0.03),
                              ),
                          itemBuilder: (context, index) {
                            return Text(
                              items[index].titlesubtheme,
                              textAlign: TextAlign.center,
                              style: const TextStyle(
                                fontWeight: FontWeight.w400,
                                fontSize: 24,
                                color: Color.fromARGB(255, 121, 124, 147),
                              ),
                            );
                          },
                        ),
                      ),

                      //Puntaje 2
                      SizedBox(height: height * heightfactor * .5),
                      Container(
                        //color: Colors.deepPurple,
                        height: height * .08,
                        width: width * .28,
                        child: ListView.builder(
                          //shrinkWrap: true,
                          padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                          physics: const NeverScrollableScrollPhysics(),
                          itemCount: 1,
                          prototypeItem: score(
                            height: height,
                            width: width,
                            answered: answered,
                            to_answer: to_answer,
                          ),
                          itemBuilder: (context, index) {
                            return score(
                              height: height * .05,
                              width: width,
                              answered: items[index].answered,
                              to_answer: items[index].to_answer,
                            );
                          },
                        ),
                      ),

                      //Generar preguntas con sus estados
                      Container(
                        //color: Colors.red,
                        height: height * 0.97,
                        child: ListView.builder(
                          physics: const NeverScrollableScrollPhysics(),
                          padding: EdgeInsets.fromLTRB(0, 0, 0, height * 0.12),
                          itemCount: items.length,
                          prototypeItem: ListTile(
                            onTap: () {},
                            contentPadding:
                                EdgeInsets.fromLTRB(0, 0, 0, height * 0.12),
                            //REVISAR COMO HACER QUE SEA items.questionsold.first o algo similar
                            //title: Text(items.first as String),
                          ),
                          itemBuilder: (context, index) {
                            return Column(
                              children: [
                                question(
                                  width: width,
                                  height: height,
                                  text: (items[index].questionsold),
                                  //state: 0,
                                  state: (items[index].states[index]),
                                  //Aqui se debe pasar la informacion sobre la pregunta
                                  //por el momento se pasa todo items
                                  items: items,
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
                      SizedBox(height: height * .008),
                      const SafeArea(child: back(x: -0.95, y: 0)),
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
                  items: items,
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
