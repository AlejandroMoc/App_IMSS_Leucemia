import 'package:flutter/material.dart';
import 'package:rive/rive.dart' as rive;

class Account extends StatelessWidget {
  final double x;
  final double y;

  const Account({
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
              child: const Icon(Icons.account_circle_rounded, size: 40, color: Color.fromARGB(255, 63, 62, 65)))),
    );
  }
}
