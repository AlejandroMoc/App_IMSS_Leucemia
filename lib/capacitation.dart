import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class capacitation extends StatelessWidget {
  final String text;
  final String icon;
  final double width;
  final double height;

  const capacitation({
    super.key,
    required this.icon,
    required this.text,
    required this.width,
    required this.height,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
        width: width * 0.8,
        height: height * 0.27,
        decoration: const BoxDecoration(
          boxShadow: [
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
          borderRadius: BorderRadius.all(Radius.circular(15)),
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
                        fontSize: 32,
                        color: Color.fromARGB(255, 121, 124, 147)
                    ),
                  ),
                  SizedBox(
                    width: width * 0.1,
                  ),
                  Container(
                    color: Colors.transparent,
                    // alignment: Alignment.bottomLeft,
                    height: height * .12,
                    width: width * .17,
                    child: SvgPicture.asset(icon,
                      // alignment: Alignment.bottomLeft,
                      fit: BoxFit.contain,
                    ),
                  ),
                ],
              ),

            )
        )
    );
  }
}
