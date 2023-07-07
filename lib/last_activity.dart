import 'package:flutter/material.dart';

class last_activity extends StatelessWidget {
  // final String direction;
  final String text;
  final double width;
  final double height;

  const last_activity({
    super.key,
    // required this.direction,
    required this.text,
    required this.width,
    required this.height,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
        width: width * 0.32,
        height: height * 0.17,
        decoration: const BoxDecoration(
          color: Color(0xffaea5d1),
          borderRadius: BorderRadius.all(Radius.circular(15)),
        ),
        child: MaterialButton(
            onPressed: (() {}),
            child: Align(
              alignment: Alignment.center,
              child: Padding(
                padding: const EdgeInsets.fromLTRB(10, 10, 10, 10),
                child: Text(
                  text,
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                      fontWeight: FontWeight.w700,
                      fontSize: 20,
                      color: Color(0xff343B8F)),
                ),
              ),
            )));
  }
}
