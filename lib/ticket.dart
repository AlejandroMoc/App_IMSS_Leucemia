import 'package:flutter/material.dart';

class Ticket extends StatelessWidget {
  final double x;
  final double y;

  const Ticket({
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
              child: const Icon(Icons.airplane_ticket,
                  size: 50, color: Colors.white))),
    );
  }
}
