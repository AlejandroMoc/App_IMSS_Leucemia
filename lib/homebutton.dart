import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'home_page.dart';
import 'main.dart';

class HomeButton extends StatefulWidget {
  final String text;
  final double width;
  final double height;

  const HomeButton({super.key,
    required this.items,
    required this.text,
    required this.width,
    required this.height,
  });

  final List<Todo> items;

  @override
  State<HomeButton> createState() => _HomeButtonState(items, text, width, height);
}

class _HomeButtonState extends State<HomeButton> {

  final List<Todo> items;

  final String text;
  final double width;
  final double height;

  _HomeButtonState(this.items, this.text, this.width, this.height);

  @override
  Widget build(BuildContext context) {
    return
      Center(
        child: Align(
          alignment: Alignment.bottomRight,
          child:SizedBox(
            height:height*.14,
            width:width*.40,
            /*height:90,
          width:90,*/
            child: FloatingActionButton(
              backgroundColor: const Color.fromARGB(255, 121, 124, 147),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Home(items: items)),
                );
              },
              tooltip: text,
              child: SvgPicture.asset(
                "assets/svg/home.svg",
                color: Colors.white,
              ),

            ),
          ),
        ),
      );
  }
}
