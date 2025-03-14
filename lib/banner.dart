import 'package:flutter/material.dart';
// import 'package:rive/rive.dart' as rive;

class banner extends StatelessWidget {
  // final String direction;
  final String text;
  final double width;
  final double height;

  const banner({
    super.key,
    // required this.direction,
    required this.text,
    required this.width,
    required this.height,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
    width: width * 0.8,
    height: height * 0.14,
    decoration: const BoxDecoration(

      borderRadius: BorderRadius.all(Radius.circular(15)),
      ),
      child: Align(
        alignment: Alignment.center,
        child: Padding(
          padding: const EdgeInsets.fromLTRB(10, 10, 10, 10),
          child: Text(
            text,
            textAlign: TextAlign.center,
            style: const TextStyle(

              shadows: <Shadow>[
                Shadow(
                  offset: Offset(0.0, 5.0),
                  blurRadius: 2,
                  color: Color.fromARGB(90, 105, 105, 105),
                ),
              ],

              fontWeight: FontWeight.w900,
              fontSize: 38,
              color: Color.fromARGB(255, 63, 62, 65)

            ),
          ),
        ),
      )
    );
  }
}
