import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'back.dart';
import 'main.dart';
import 'answer.dart';

class AnswerPage extends StatefulWidget {
  const AnswerPage({super.key, required this.items});

  final List<Todo> items;

  @override
  State<AnswerPage> createState() => _AnswerPageState(items);
}

class _AnswerPageState extends State<AnswerPage> {

  final List<Todo> items;
  _AnswerPageState(this.items);

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Scaffold(
      body: Stack(
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
                    SizedBox(
                      //color: Colors.red,
                      //height: height * (.25),
                      width: width * 1,
                      child: Column(
                        children: [
                          Container(
                            height: height * 0.05,
                          ),
                          SizedBox(
                            //color: Colors.blue,
                            height: height *.12,
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
                                  SizedBox(
                                    //color: Colors.orange,
                                    width: width * .8,
                                    child: Text(
                                      textAlign: TextAlign.center,
                                      "${items[index].pregunta111[0]}${index+1}:",
                                      //items[index].pregunta111[0].toString() + (index+1).toString() + ":",
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
                        ],
                      ),
                    ),


                    //Descripción pregunta
                    SizedBox(
                      //color: Colors.deepPurple,
                      height: height*.25,
                      child: ListView.builder(
                        padding: EdgeInsets.fromLTRB(0, height*.005,0,0),
                        physics: const NeverScrollableScrollPhysics(),
                        itemCount: 1,
                        prototypeItem:
                        Container(
                          height: height*.35,
                          //onTap: (){},
                          //contentPadding: EdgeInsets.fromLTRB(0,height*0.03,0,height*0.03),
                        ),
                        itemBuilder: (context, index) {
                          return
                            Text(
                              items[index].pregunta111[1].toString(),
                              textAlign: TextAlign.center,
                              style: const TextStyle(
                                fontWeight: FontWeight.w400,
                                fontSize: 32,
                                color: Color.fromARGB(255,121, 124, 147),
                              ),
                            );
                        },
                      ),
                    ),

                    //SizedBox(height: height * heightfactor*.7),

                    //Generar respuestas
                    SizedBox(
                      //color: Colors.yellow,
                      height: height*0.6,
                      child: ListView.builder(
                        physics: const NeverScrollableScrollPhysics(),
                        padding: EdgeInsets.fromLTRB(0,height*0.024, 0, height*0.024),
                        itemCount: 4,
                        prototypeItem:
                        ListTile(
                          onTap: (){},
                          contentPadding: EdgeInsets.fromLTRB(0,height*0.024, 0, height*0.024),
                          //REVISAR COMO HACER QUE SEA items.questions.first o algo similar
                          //title: Text(items.first as String),
                        ),
                        itemBuilder: (context, index) {
                          return
                            Column(
                              children: [
                                answer(
                                  width: width,
                                  height: height,
                                  text: (items[index].pregunta111[index+3].toString()),
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
                        child:back(
                          x: -0.95, y: 0,
                          //items: items,
                          //route: MaterialPageRoute(builder: (context) => ActSelectPage(items: items)),
                        )
                    ),
                  ],
                ),

              ],
            ),
          ),

          //Botones preguntas
          //Pregunta anterior
          Positioned(
            bottom: height*.0,
            child: SizedBox(
              //color: Colors.blue,
              height: height * 0.12,
              width: width * 0.5,
              child: MaterialButton(
                //shape: RoundedRectangleBorder(
                //   borderRadius: BorderRadius.circular(50),
                // ),
                elevation: 0,
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) =>
                          AnswerPage(items: items),
                    ),
                  );
                },
                color: Colors.white,
                child: Stack(
                  children: [
                    Positioned(
                      left: width*.15,
                      bottom: height*.02,
                      child: SizedBox(
                        width: width*.3,
                        child: const Text(
                          'Pregunta anterior',
                          style: TextStyle(
                              fontSize: 24,
                              fontWeight: FontWeight.w400,
                              color: Color(0xFF797C93)),
                        ),
                      ),
                      //colorBrightness: Brightness.dark,
                    ),

                    Positioned(
                      left: width*.02,
                      bottom: height*.03,
                      child: SizedBox(
                        //color: Colors.red,
                        height: height * 0.07,
                        width: width * 0.07,
                        child: SvgPicture.asset(
                            "assets/svg/back.svg",
                            fit: BoxFit.scaleDown
                        ),
                      ),
                    ),

                  ],
                ),
              ),
            ),
          ),
          //Pregunta siguiente
          Positioned(
            bottom: height*.0,
            child: Transform.translate(
              offset: Offset(width*.5, 0.0),
              child: SizedBox(
                //color: Colors.blue,
                height: height * 0.12,
                width: width * 0.5,
                child: MaterialButton(
                  //shape: RoundedRectangleBorder(
                  //   borderRadius: BorderRadius.circular(50),
                  // ),
                  elevation: 0,
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) =>
                            AnswerPage(items: items),
                      ),
                    );
                  },
                  color: Colors.white,
                  child: Stack(
                    children: [
                      Positioned(
                        right: width*.12,
                        bottom: height*.02,
                        child: SizedBox(
                          width: width*.3,
                          child: const Text(
                            'Siguiente pregunta',
                            style: TextStyle(
                                fontSize: 24,
                                fontWeight: FontWeight.w400,
                                color: Color(0xFF797C93)),
                          ),
                        ),
                        //colorBrightness: Brightness.dark,
                      ),

                      Positioned(
                        right: width*.02,
                        bottom: height*.03,
                        child: SizedBox(
                          //color: Colors.red,
                          height: height * 0.07,
                          width: width * 0.07,
                          child: SvgPicture.asset(
                              "assets/svg/foward.svg",
                              fit: BoxFit.scaleDown
                          ),
                        ),
                      ),

                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );

  }
}