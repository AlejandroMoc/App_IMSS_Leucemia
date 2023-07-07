import 'package:flutter/material.dart';

class last_news extends StatelessWidget {
  final String text;
  final double width;
  final double height;

  const last_news({
    super.key,
    required this.text,
    required this.width,
    required this.height,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      
      //Sombra
      clipBehavior: Clip.antiAlias,
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(20)),
        boxShadow: [
          BoxShadow(
            color: Color.fromARGB(60, 105, 105, 105),
            blurRadius: 5,
            offset: Offset(0, 10),
          ),
        ],
      ),

      width: width * 0.8,
      height: height * 0.25,

      child: Stack(
        children: [
          MaterialButton(
            padding: const EdgeInsets.all(0),
            onPressed: (() {}),
            color: const Color(0xfffaca3c),

            child: Stack(
              clipBehavior: Clip.antiAlias,
              children: [
                Stack(
                  children: [
                    Align(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [

                                  Align(
                                    alignment: Alignment.topLeft,
                                    child: Padding(
                                      padding: const EdgeInsets.fromLTRB(15,15,15,15),
                                      child: Text(
                                        text,
                                        style: const TextStyle(
                                            fontSize: 32,
                                            fontWeight: FontWeight.w700,
                                            color: Colors. white
                                        ),
                                      ),
                                    )
                                  ),

                        ],
                      ),

                      
                    ),
                  ],
                ),
              ],
            ),

      
          ),
        ],
      ),
    );
  }
}
