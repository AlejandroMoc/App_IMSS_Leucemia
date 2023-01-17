import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class Verificacion extends StatefulWidget {
  const Verificacion({super.key});
  @override
  State<Verificacion> createState() => _VerificacionState();
}

class _VerificacionState extends State<Verificacion> {
  dynamic iconColor = Colors.black26;
  dynamic iconImage = "assets/Images/ID.svg";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffaea5d1),
      body: Container(
        padding: const EdgeInsets.fromLTRB(35, 0, 35, 0),
        width: double.infinity,
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Container(
            height: 150,
            width: 150,
            decoration: const BoxDecoration(
                color: Colors.white60,
                borderRadius: BorderRadius.all(Radius.circular(20))),
            child: const Padding(
              padding: EdgeInsets.fromLTRB(20, 70, 20, 0),
              child: Text(
                "Dibujo Mascota",
                style: TextStyle(fontSize: 15, color: Colors.black54),
              ),
            ),
          ),
          const SizedBox(
            height: 50,
          ),
          Container(
            height: 400,
            width: double.infinity,
            padding: const EdgeInsets.only(left: 30, right: 30),
            decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.all(Radius.circular(20)),
              boxShadow: [
                BoxShadow(
                  color: Color.fromARGB(58, 0, 0, 0),
                  blurRadius: 6,
                  offset: Offset(0, 10), // changes position of shadow
                ),
              ],
            ),
            child: Column(
              children: [
                const Padding(
                  padding: EdgeInsets.fromLTRB(0, 20, 0, 0),
                  child: Text(
                    "Regístrate",
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 30, color: Color(0xff343B8f)),
                  ),
                ),
                TextField(
                  onChanged: (value) {
                    setState(() {
                      iconImage = "assets/Images/ID_FOCUS.svg";
                    });
                  },
                  keyboardType: TextInputType.number,
                  style:
                      const TextStyle(color: Color(0xff343B8f), fontSize: 18),
                  decoration: InputDecoration(
                      suffixIcon: SvgPicture.asset(
                        iconImage,
                        width: 30,
                      ),
                      hintText: "No. de Cédula",
                      hintStyle:
                          const TextStyle(fontSize: 18, color: Colors.black26)),
                ),
                const SizedBox(
                  height: 10,
                ),
                const TextField(
                  style: TextStyle(color: Color(0xff343B8f), fontSize: 18),
                  decoration: InputDecoration(
                      hintText: "Nombre(s)",
                      hintStyle:
                          TextStyle(fontSize: 18, color: Colors.black26)),
                ),
                const SizedBox(
                  height: 10,
                ),
                const TextField(
                  style: TextStyle(color: Color(0xff343B8f), fontSize: 18),
                  decoration: InputDecoration(
                      hintText: "Primer Apellido",
                      hintStyle:
                          TextStyle(fontSize: 18, color: Colors.black26)),
                ),
                const SizedBox(
                  height: 10,
                ),
                const TextField(
                  style: TextStyle(color: Color(0xff343B8f), fontSize: 18),
                  decoration: InputDecoration(
                      hintText: "Segundo Apellido",
                      hintStyle:
                          TextStyle(fontSize: 18, color: Colors.black26)),
                ),
                const SizedBox(
                  height: 20,
                ),
                Container(
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(15)),
                    boxShadow: [
                      BoxShadow(
                        color: Color.fromARGB(58, 90, 90, 90),
                        blurRadius: 4,
                        offset: Offset(0, 8), // changes position of shadow
                      ),
                    ],
                  ),
                  child: _button(),
                )
              ],
            ),
          ),
        ]),
      ),
    );
  }

  Widget _button() {
    return SizedBox(
      width: 400,
      height: 45,
      child: MaterialButton(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
        onPressed: () {},
        color: const Color(0xff9d91cc),
        child: const Text(
          "Siguiente",
          style: TextStyle(
              fontSize: 20, fontWeight: FontWeight.w700, color: Colors.white),
        ),
      ),
    );
  }
}
