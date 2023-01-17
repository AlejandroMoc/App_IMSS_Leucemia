import 'package:flutter/material.dart';

class Page2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Container(
      height: height * 0.45,
      width: width * 0.6,
      decoration: const BoxDecoration(
          color: Color.fromARGB(255, 244, 242, 242),
          borderRadius: BorderRadius.all(Radius.circular(20))),
      child: const Padding(
        padding: EdgeInsets.fromLTRB(40, 25, 40, 25),
        child: Text(
          "Mascota con algo relacionado a la información",
          textAlign: TextAlign.center,
          style: TextStyle(fontSize: 25, color: Colors.black26),
        ),
      ),
    );
  }
}
