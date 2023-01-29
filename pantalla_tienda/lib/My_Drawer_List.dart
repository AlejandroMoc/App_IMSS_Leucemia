import 'package:flutter/material.dart';

class MyDrawerList extends StatefulWidget {
  @override
  _MyDrawerListState createState() => _MyDrawerListState();
}

class _MyDrawerListState extends State<MyDrawerList> {
  @override
  Widget build(BuildContext context) {
    Widget storeItem1() {
      return Container(
        alignment: Alignment.topLeft,
        margin: EdgeInsets.only(left: 15),
        child: Text(
          'Pantallas de Carga',
          style: TextStyle(
              color: Color(0xFF717171),
              fontSize: 15,
              fontWeight: FontWeight.bold),
          textAlign: TextAlign.left,
        ),
      );
    }

    Widget itemBailando() {
      return Container(
        margin: EdgeInsets.only(top: 20, right: 15),
        width: 90,
        height: 130,
        decoration: BoxDecoration(
            color: Color(0xFFEAEAE9),
            borderRadius: BorderRadius.circular(12),
            border: Border.all(width: 0.5, color: Color(0xFF999999))),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Container(
              margin: EdgeInsets.only(top: 10),
              child: Text(
                "Bailando",
                style: TextStyle(
                    color: Color(0xFF717171),
                    fontSize: 15,
                    fontWeight: FontWeight.bold),
              ),
            ),
            Text(
              "  Dibujo\nmascota",
              style: TextStyle(color: Color(0xFF999999), fontSize: 10),
            ),
            Row(
              children: <Widget>[
                Expanded(
                  child: Container(
                    padding: EdgeInsets.only(bottom: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Container(
                          width: 20,
                          height: 20,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            image: DecorationImage(
                              image: AssetImage(
                                'assets/Imagen2.png',
                              ),
                            ),
                          ),
                        ),
                        SizedBox(height: 5),
                        Text(
                          "30",
                          style: TextStyle(
                            color: Color(0xFF999999),
                            fontSize: 17,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      );
    }

    Widget storeItem2() {
      return Container(
        alignment: Alignment.topLeft,
        margin: EdgeInsets.only(left: 15, top: 15),
        child: Text(
          'Emotes',
          style: TextStyle(
              color: Color(0xFF717171),
              fontSize: 15,
              fontWeight: FontWeight.bold),
          textAlign: TextAlign.left,
        ),
      );
    }

    Widget itemMaracas() {
      return Container(
        margin: EdgeInsets.only(top: 20, right: 15),
        width: 90,
        height: 130,
        decoration: BoxDecoration(
            color: Color(0xFFEAEAE9),
            borderRadius: BorderRadius.circular(12),
            border: Border.all(width: 0.5, color: Color(0xFF999999))),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Container(
              margin: EdgeInsets.only(top: 10),
              child: Text(
                "Maracas",
                style: TextStyle(
                    color: Color(0xFF717171),
                    fontSize: 15,
                    fontWeight: FontWeight.bold),
              ),
            ),
            Text(
              "  Dibujo\nmascota",
              style: TextStyle(color: Color(0xFF999999), fontSize: 10),
            ),
            Row(
              children: <Widget>[
                Expanded(
                  child: Container(
                    padding: EdgeInsets.only(bottom: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Container(
                          width: 20,
                          height: 20,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            image: DecorationImage(
                              image: AssetImage(
                                'assets/Imagen2.png',
                              ),
                            ),
                          ),
                        ),
                        SizedBox(height: 5),
                        Text(
                          "15",
                          style: TextStyle(
                            color: Color(0xFF999999),
                            fontSize: 17,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      );
    }

    Widget storeItemButtons1() {
      List<Widget> items = [itemMaracas(), itemBailando(), itemMaracas()];
      return Container(
        height: 145,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 0),
          itemCount: items.length,
          itemBuilder: (BuildContext context, int index) {
            return items[index];
          },
        ),
      );
    }

    Widget storeItemButtons2() {
      List<Widget> items = [itemBailando(), itemMaracas(), itemBailando()];
      return Container(
        height: 145,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 0),
          itemCount: items.length,
          itemBuilder: (BuildContext context, int index) {
            return items[index];
          },
        ),
      );
    }

    Widget MyDrawerList() {
      return Container(
        padding: EdgeInsets.only(top: 15.0),
        child: Column(
          children: [
            storeItem1(),
            storeItemButtons1(),
            storeItem2(),
            storeItemButtons2(),
          ],
        ),
      );
    }

    return MyDrawerList();
  }
}
