import 'package:build_pantallas/questionlist_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'main.dart';

class evaluation extends StatelessWidget {
  // final String direction;
  final String text;
  final String icon;
  final double width;
  final double height;

  const evaluation({
    super.key,
    required this.items,
    required this.icon,
    required this.text,
    required this.width,
    required this.height,
  });

  final List<Todo> items;

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
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => QuestionListPage(items: items)),
              );
            },
            child: Align(
              alignment: Alignment.center,

              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
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
                  SizedBox(
                    width: width * 0.1,
                  ),
                  Text(
                    text,
                    textAlign: TextAlign.center,
                    style: const TextStyle(
                        fontWeight: FontWeight.w300,
                        fontSize: 32,
                        color: Color.fromARGB(255, 121, 124, 147)
                    ),
                  ),
                ],
              ),

            )
        )
    );
  }
}
