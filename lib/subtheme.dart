import 'package:build_pantallas/actselect_page.dart';
import 'package:flutter/material.dart';

import 'main.dart';

class subtheme extends StatelessWidget {
  // final String direction;
  final String text;
  final double width;
  final double height;

  const subtheme({
    super.key,
    required this.items,
    required this.text,
    required this.width,
    required this.height,
  });

  final List<Todo> items;

  @override
  Widget build(BuildContext context) {
    return Container(
    width: width * 0.8,
    height: height * 0.15,
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
      borderRadius: BorderRadius.all(Radius.circular(20)),
      ),
      child: MaterialButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => ActSelectPage(items: items)),
            );
          },
        child: Align(
          alignment: Alignment.center,
          child: Padding(
            padding: const EdgeInsets.fromLTRB(10, 10, 10, 10),
            child: Text(
              text,
              textAlign: TextAlign.center,
              style: const TextStyle(
                fontWeight: FontWeight.w300,
                fontSize: 24,
                color: Color.fromARGB(255, 121, 124, 147)
              ),
            ),
          ),
        )
      )
    );
  }
}
