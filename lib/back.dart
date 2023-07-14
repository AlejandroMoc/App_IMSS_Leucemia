import 'package:flutter/material.dart';
// import 'package:rive/rive.dart' as rive;

// ignore: camel_case_types
class back extends StatelessWidget {
  final double x;
  final double y;

  const back({
    super.key,
    required this.x,
    required this.y,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Align(
          alignment: Alignment(x, y),
          child: MaterialButton(
              shape: const CircleBorder(),
              padding: const EdgeInsets.all(2),
              onPressed: () {},
              child: const Icon(
                Icons.arrow_back_sharp,
                size: 55,
                color: Color.fromARGB(255, 121, 124, 147)
            )
        )
      ),
    );
  }
}
