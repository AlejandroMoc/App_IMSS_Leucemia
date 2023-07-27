import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class score extends StatelessWidget {
  final int answered;
  final int to_answer;
  final double width;
  final double height;

  const score({
    super.key,
    required this.answered,
    required this.to_answer,
    required this.width,
    required this.height,
  });

//Imprimir logo correspondiente al estado de la pregunta

  @override
  Widget build(BuildContext context) {

    return Container(
        width: width * 0.28,
        height: height * 0.05,
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
            color: const Color.fromARGB(255,121, 124, 147),
            width: 2,
          ),
        ),
        child: MaterialButton(
            onPressed: (() {}),
            child: Align(
              alignment: Alignment.center,
              child: Text(
                "$answered / $to_answer",
                textAlign: TextAlign.center,
                style: const TextStyle(
                  fontWeight: FontWeight.w100,
                  fontSize: 25,
                  color: Color.fromARGB(255,121, 124, 147),
                ),
              ),
            )
        )
    );
  }
}
