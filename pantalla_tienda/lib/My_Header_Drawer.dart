import 'package:flutter/material.dart';

class MyHeaderDrawer extends StatefulWidget {
  @override
  _MyHeaderDrawerState createState() => _MyHeaderDrawerState();
}

class _MyHeaderDrawerState extends State<MyHeaderDrawer> {
  @override
  Widget build(BuildContext context) {
    return Container(
        color: Color(0xFFAEA5D1),
        width: double.infinity,
        height: 175,
        padding: EdgeInsets.only(top: 0.0),
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Stack(
            children: [
              Container(
                  margin: EdgeInsets.only(top: 20),
                  height: 100,
                  decoration: BoxDecoration(
                    shape: BoxShape.rectangle,
                    image: DecorationImage(
                      image: AssetImage('assets/Imagen1.png'),
                    ),
                  )),
              Positioned(
                top: 0,
                left: 0,
                child: IconButton(
                  icon: Icon(Icons.clear, color: Colors.white),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                ),
              ),
            ],
          ),
          Container(
            margin: EdgeInsets.only(top: 7.0),
            color: Color(0xFF8075AA),
            width: double.infinity,
            height: 48,
            child: Center(
                child: Text("Tienda",
                    style: TextStyle(color: Colors.white, fontSize: 18))),
          ),
        ]));
  }
}
