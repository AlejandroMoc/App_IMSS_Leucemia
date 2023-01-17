import 'package:flutter/material.dart';
import 'package:bienvenida/pages/page_1.dart';
import 'package:bienvenida/pages/page_2.dart';
import 'package:bienvenida/pages/page_3.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class Bienvenida extends StatefulWidget {
  @override
  State<Bienvenida> createState() => _BienvenidaState();
}

class _BienvenidaState extends State<Bienvenida> {
  dynamic backColor = Color(0xfff3ae3c);
  dynamic textColor = Colors.white;
  dynamic contColor = Colors.white;
  bool isVisible = true;
  final _controller = PageController();

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: backColor,
      body: Container(
        width: double.infinity,
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
        // ignore: prefer_const_literals_to_create_immutables
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Text(
            "¡Bienvenido!",
            style: TextStyle(
              color: textColor,
              fontSize: 50,
              fontWeight: FontWeight.w900,
              shadows: <Shadow>[
                Shadow(
                  offset: Offset(0, 7),
                  blurRadius: 10.0,
                  color: Color.fromARGB(70, 105, 105, 105),
                ),
              ],
            ),
            textAlign: TextAlign.center,
          ),
          SizedBox(
            height: height * 0.07,
          ),
          Visibility(
            visible: isVisible,
            child: Container(
              height: height * 0.35,
              width: width * 0.6,
              decoration: BoxDecoration(
                  color: contColor,
                  borderRadius: BorderRadius.all(Radius.circular(20))),
              child: Padding(
                padding: EdgeInsets.fromLTRB(50, 70, 50, 50),
                child: Text(
                  "LOGO",
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 25, color: Colors.black26),
                ),
              ),
            ),
          ),
          Visibility(
            visible: !isVisible,
            child: Container(
              height: height * 0.35,
              width: width * 0.6,
              decoration: BoxDecoration(
                  color: contColor,
                  borderRadius: BorderRadius.all(Radius.circular(20))),
              child: PageView(
                controller: _controller,
                children: [Page1(), Page2(), Page3()],
              ),
            ),
          ),
          Visibility(
            visible: !isVisible,
            child: SizedBox(
              height: height * 0.07,
            ),
          ),
          Visibility(
            visible: !isVisible,
            child: Text(
              "Lorem ipsum dolor sit amet, consectetur adipiscing elit",
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 25, color: Color(0xfff343b8f)),
            ),
          ),
          SizedBox(
            height: height * 0.07,
          ),
          Visibility(
            visible: !isVisible,
            child: SmoothPageIndicator(
              controller: _controller,
              count: 3,
              effect: SwapEffect(
                  activeDotColor: Colors.deepPurple,
                  dotColor: Colors.deepPurple.shade100,
                  spacing: 15),
            ),
          ),
          SizedBox(
            height: height * 0.07,
          ),
          Container(
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(15)),
              boxShadow: [
                BoxShadow(
                  color: Color.fromARGB(60, 105, 105, 105),
                  blurRadius: 5,
                  offset: Offset(0, 10), // changes position of shadow
                ),
              ],
            ),
            child: _button(),
          )
        ]),
      ),
    );
  }

  Widget _button() {
    return SizedBox(
      width: 200,
      height: 45,
      child: MaterialButton(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
        onPressed: () {
          setState(() {
            backColor = Colors.white;
            textColor = Color(0xfff343b8f);
            contColor = Color.fromARGB(255, 244, 242, 242);
            isVisible = false;
          });
        },
        color: Colors.white,
        child: const Text(
          "Siguiente",
          style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w700,
              color: Color(0xfff3ae3c)),
        ),
      ),
    );
  }
}
