import 'package:build_pantallas/main.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'answer_page.dart';

class question extends StatelessWidget {
  final String text;
  final int state;
  final double width;
  final double height;

  const question({
    super.key,
    required this.items,
    required this.state,
    required this.text,
    required this.width,
    required this.height,
  });

  final List<Todo> items;

//Imprimir logo correspondiente al estado de la pregunta
  Widget getLockStatus() {
    if (state > 2) {
      return SvgPicture.asset("assets/svg/State_null.svg", fit: BoxFit.contain);
    } else if (state == 2) {
      return SvgPicture.asset("assets/svg/State_2.svg", fit: BoxFit.contain);
    } else if (state == 1) {
      return SvgPicture.asset("assets/svg/State_1.svg", fit: BoxFit.contain);
    } else if (state == 0) {
      return SvgPicture.asset("assets/svg/State_0.svg", fit: BoxFit.contain);
    } else {
      return SvgPicture.asset("assets/svg/State_null.svg", fit: BoxFit.contain);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        width: width * 0.8,
        height: height * 0.15,
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
          borderRadius: const BorderRadius.all(Radius.circular(20)),
          border: Border.all(
            color: const Color.fromARGB(255, 121, 124, 147),
            width: 2,
          ),
        ),
        child: MaterialButton(
            onPressed: (() {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => AnswerPage(items: items),
                ),
              );
            }),
            //onPressed: () {  },
            child: Align(
              alignment: Alignment.center,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    text,
                    textAlign: TextAlign.center,
                    style: const TextStyle(
                      fontWeight: FontWeight.w100,
                      fontSize: 25,
                      color: Color.fromARGB(255, 121, 124, 147),
                    ),
                  ),
                  SizedBox(
                    width: width * 0.1,
                  ),
                  Container(
                    color: Colors.transparent,
                    // alignment: Alignment.bottomLeft,
                    //height: height * .12,
                    width: width * .23,
                    //Imprimir el ícono correspondiente
                    //child: SvgPicture.asset("assets/svg/State0.svg", fit: BoxFit.contain),
                    child: getLockStatus(),
                  ),
                ],
              ),
            )));
  }
}
