import 'package:flutter/material.dart';

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
              child: const Icon(Icons.person, size: 50, color: Colors.white))),
    );
  }
}
