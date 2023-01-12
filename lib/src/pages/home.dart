import 'package:flutter/material.dart';
import 'package:liquid_swipe/liquid_swipe.dart';
import 'package:liquid_swipe1/src/widgets/liquid_pages.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: LiquidSwipe(
      pages: liquidPages,
      fullTransitionValue: 300,
      enableLoop: true,
      enableSideReveal: true,
      waveType: WaveType.liquidReveal,
    ));
  }
}
