import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

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
              onPressed: () => Navigator.of(context).pop(),
            child: SvgPicture.asset("assets/svg/back.svg"),
        )
      ),
    );
  }
}
