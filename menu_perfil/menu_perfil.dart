import 'package:flutter/material.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    String name = "Lorem ipsum";
    bool _light = false;

    return Scaffold(
      appBar: AppBar(
          // backgroundColor: Colors.transparent,
          // elevation: 0,
          ),
      body: const Center(
        child: Text("data"),
      ),
      drawer: Drawer(
        width: width * 0.9,
        child: ListView(
          children: [
            Container(
              height: height * .35,
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    stops: [0.5, 0],
                    colors: [Color(0xffaea5d1), Color(0xff8075aa)]),
              ),
              child: Column(
                children: [
                  Align(
                    alignment: Alignment.topLeft,
                    child: MaterialButton(
                      onPressed: (() {}),
                      child: const Icon(
                        Icons.close,
                        color: Colors.white,
                        size: 35,
                        shadows: [
                          Shadow(
                              color: Colors.black38,
                              blurRadius: 15,
                              offset: Offset(0, 6)),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: height * 0.035,
                  ),
                  Container(
                    height: height * 0.15,
                    width: width * 0.3,
                    decoration: BoxDecoration(
                        border: Border.all(
                            color: const Color(0xffaea5d1), width: 7),
                        color: Colors.white,
                        shape: BoxShape.circle),
                    child: const Icon(
                      Icons.person,
                      color: Color(0xffaea5d1),
                      size: 70,
                    ),
                  ),
                  SizedBox(
                    height: height * 0.03,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        name,
                        style: const TextStyle(
                            color: Colors.white,
                            fontSize: 25,
                            fontWeight: FontWeight.w600),
                      ),
                      Icon(
                        Icons.edit,
                        color: Colors.white,
                      )
                    ],
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
              child: MaterialButton(
                shape: const Border(
                    bottom: BorderSide(width: 1, color: Colors.black26)),
                height: height * 0.09,
                minWidth: double.infinity,
                onPressed: () {},
                child: const Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "Información personal",
                    style: TextStyle(
                        color: Color(0xff717171),
                        fontSize: 20,
                        fontWeight: FontWeight.w700),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
              child: Container(
                decoration: const BoxDecoration(
                  border: Border(
                      bottom: BorderSide(width: 1, color: Colors.black26)),
                ),
                height: height * 0.09,
                width: width * .8,
                child: Row(
                  children: <Widget>[
                    Container(
                      width: width * 0.03,
                    ),
                    const Text(
                      "Modo oscuro",
                      style: TextStyle(
                          color: Color(0xff717171),
                          fontSize: 20,
                          fontWeight: FontWeight.w700),
                    ),
                    Container(
                      width: width * 0.25,
                    ),
                    SizedBox(
                        width: 80,
                        child: FittedBox(
                          child: Switch(
                            value: _light,
                            onChanged: (value) {
                              setState(() {
                                _light = value;
                              });
                            },
                            activeColor: const Color(0xfffaca3c),
                            inactiveThumbColor: const Color(0xfffaca3c),
                          ),
                        )),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
              child: MaterialButton(
                shape: const Border(
                    bottom: BorderSide(width: 1, color: Colors.black26)),
                height: height * 0.09,
                minWidth: double.infinity,
                onPressed: () {},
                child: Row(
                  children: <Widget>[
                    const Text(
                      "Inventario",
                      style: TextStyle(
                          color: Color(0xff717171),
                          fontSize: 20,
                          fontWeight: FontWeight.w700),
                    ),
                    SizedBox(
                      width: width * 0.22,
                    ),
                    const Text(
                      "(Próximamente)",
                      style: TextStyle(
                          color: Color(0xff999999),
                          fontSize: 14,
                          fontWeight: FontWeight.w700),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: height * 0.05,
            ),
            Align(
              alignment: Alignment.center,
              child: Container(
                height: height * .18,
                width: width * 0.35,
                decoration: const BoxDecoration(
                    color: Color(0xffeaeae9),
                    borderRadius: BorderRadius.all(Radius.circular(20))),
                child: const Padding(
                  padding: EdgeInsets.fromLTRB(20, 70, 20, 0),
                  child: Text(
                    "Dibujo Mascota",
                    style: TextStyle(fontSize: 15, color: Colors.black54),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
