import 'package:flutter/material.dart';

class answer extends StatelessWidget {
  final String text;

  final double width;
  final double height;

  const answer({
    super.key,

    required this.text,
    required this.width,
    required this.height,
  });


  @override
  Widget build(BuildContext context) {

    return Container(
        width: width * 0.8,
        height: height * 0.085,
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
                      color: Color.fromARGB(255,121, 124, 147),
                    ),
                  ),

                ],
              ),

            )
        )
    );
  }
}
