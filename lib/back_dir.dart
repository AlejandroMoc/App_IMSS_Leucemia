//Este es un archivo inutilizado que puede servir como
//flecha de regreso para asignar direcciones específicas,
//como para regresar de una pantalla de respuestas a una de preguntas

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'main.dart';

class back_sub extends StatelessWidget {
  final double x;
  final double y;

  const back_sub({
    super.key,
    required this.x,
    required this.y,
    required this.items,
    required this.route,
  });

  final List<Todo> items;
  final MaterialPageRoute route;


  @override
  Widget build(BuildContext context) {
    return Center(
      child: Align(
          alignment: Alignment(x, y),
          child: MaterialButton(
              shape: const CircleBorder(),
              padding: const EdgeInsets.all(2),
              onPressed: () {
                Navigator.push(
                  context,
                  route,
                );
              },
            child: SvgPicture.asset("assets/svg/back.svg"),
        )
      ),
    );
  }
}
