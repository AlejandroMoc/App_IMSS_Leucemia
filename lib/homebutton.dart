import 'package:flutter/material.dart';
// import 'package:rive/rive.dart' as rive;
import 'package:flutter_svg/flutter_svg.dart';

// ignore: camel_case_types
class homebutton extends StatelessWidget {
  final String text;

  const homebutton({
    super.key, 
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Align(
        alignment: Alignment.bottomRight,
        child:SizedBox(
          height:90,
          width:90,
          child: FloatingActionButton(
            backgroundColor: const Color.fromARGB(255, 121, 124, 147),
            onPressed: () {},
            tooltip: text,

            //Utilizar ícono de casa

            // child: const Icon(
            //   Icons.home,
            //   size:60,
            //   color: Colors.white,
            // ),

            //Utilizar Home.svg
            child: SvgPicture.asset("assets/svg/Home.svg"),

          ),
        ),
      ),
    );
  }
}
