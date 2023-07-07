import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:rive/rive.dart' as rive;

class actual_unit extends StatelessWidget {
  // final String direction;
  final String text;
  final String description;
  final int percentage;
  final double width;
  final double height;

  const actual_unit({
    super.key,
    // required this.direction,
    required this.text,
    required this.description,
    required this.percentage,
    required this.width,
    required this.height,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      
      //Sombra
      clipBehavior: Clip.antiAlias,
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(20)),
        boxShadow: [
          BoxShadow(
            color: Color.fromARGB(60, 105, 105, 105),
            blurRadius: 5,
            offset: Offset(0, 10),
          ),
        ],
      ),

      width: width * 0.8,
      height: height * 0.25,

      child: Stack(
        children: [
          MaterialButton(
            padding: const EdgeInsets.all(0),
            // shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
            onPressed: (() {}),
            color: const Color(0xffaea5d1),

            //Insertar stack aqui
            child: Stack(
              clipBehavior: Clip.antiAlias,
              children: [
                Stack(
                  children: [

                    //Container
                    //padding: const EdgeInsets.all(30),
                    const rive.RiveAnimation.asset('assets/shapes.riv', fit: BoxFit.cover),


                    Align(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Expanded(
                            flex: 345,

                            //Container
                            //padding: const EdgeInsets.all(30),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.end,

                              children: [

                                //Título de la unidad                            
                                Container(
                                  // padding: const EdgeInsets.fromLTRB(0,0,0,0),
                                  child: Align(
                                    alignment: Alignment.bottomLeft,
                                    child: Padding(
                                      padding: const EdgeInsets.fromLTRB(15,0,15,0),
                                      child: Text(
                                        text,
                                        style: const TextStyle(
                                            fontSize: 27,
                                            fontWeight: FontWeight.w700,
                                            color: Colors. white
                                        ),
                                      ),
                                    ),
                                  ),
                                ),

                                //Descripcion de unidad                            
                                Container(
                                  // padding: const EdgeInsets.fromLTRB(0,0,0,0),
                                  child: Align(
                                    alignment: Alignment.bottomLeft,
                                    child: Padding(
                                      padding: const EdgeInsets.fromLTRB(15,15,15,15),
                                      child: Text(
                                        description,
                                        style: const TextStyle(
                                            fontSize: 20,
                                            fontWeight: FontWeight.w400,
                                            color: Colors.white
                                        ),
                                      ),
                                    )
                                  ),
                                ), 
                              ],
                            ),  
                          ),

                          Expanded(
                            flex: 222,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Align(
                                  alignment: Alignment.center,
                                  child: Stack(
                                    children: <Widget>[
                                      Container(
                                        width: width * 0.2,
                                        height: width * 0.2,
                                        decoration: const BoxDecoration(
                                          color: Colors.white,
                                          shape: BoxShape.circle,
                                          boxShadow: [
                                            BoxShadow(
                                              color:
                                                  Color.fromARGB(60, 105, 105, 105),
                                              blurRadius: 5,
                                              offset: Offset(0, 10),
                                            ),
                                          ],
                                        ),
                                        child: CircularPercentIndicator(
                                          radius: width * 0.1,
                                          lineWidth: 10.0,
                                          percent: percentage / 100,
                                          center: Text(
                                            "$percentage%",
                                            style: const TextStyle(
                                                fontSize: 20.0,
                                                fontWeight: FontWeight.w600,
                                                color: Color(0xff343B8F)),
                                          ),
                                          backgroundColor: Colors.white,
                                          backgroundWidth: 20,
                                          progressColor: const Color(0xfffaca3c),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),



                          ),
                        ],
                      ),

                      
                    ),
                  ],
                ),
              ],
            ),

      
          ),
        ],
      ),
    );
  }
}
