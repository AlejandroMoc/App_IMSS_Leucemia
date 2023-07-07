import 'package:flutter/material.dart';

class view_more extends StatelessWidget {
  final double width;
  final double height;

  const view_more({
    super.key,
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
                padding: const EdgeInsets.fromLTRB(8, 10, 8, 10),
                child: Column(
                  children: <Widget>[
                    const SizedBox(height: 5),
                    const Text(
                      "Ver más",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontWeight: FontWeight.w700,
                          fontSize: 20,
                          color: Color(0xff343B8F)),
                    ),
                    Icon(
                      Icons.more_time,
                      size: height * 0.08,
                      color: Color(0xff343B8F),
                    )
                  ],
                ),
              ),
            )));
  }
}
