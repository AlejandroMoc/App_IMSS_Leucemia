import 'package:flutter/material.dart';
import 'main.dart';
import 'subtheme_page.dart';

class units extends StatelessWidget {
  // final String direction;
  final String text;
  final double width;
  final double height;

  const units({
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
      width: width * 0.38,
      height: height * 0.17,
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
              MaterialPageRoute(builder: (context) => SubthemePage(items: items)),
            );
          },
          child: Align(
            alignment: Alignment.center,
            child: Text(
              text,
              textAlign: TextAlign.center,
              style: const TextStyle(
                //height: 1.2,
                  fontWeight: FontWeight.w300,
                  fontSize: 24,
                  color: Color.fromARGB(255, 121, 124, 147)
              ),
            ),
          )
        )
    );
  }
}
