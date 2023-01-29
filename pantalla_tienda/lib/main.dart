import 'package:co012/My_Drawer_List.dart';
import 'package:flutter/material.dart';
import 'My_Header_Drawer.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.green[700],
          title: Text("Texto 1"),
        ),
        body: Container(
          child: Center(
            child: Text("Texto 2"),
          ),
        ),
        drawer: Drawer(
          backgroundColor: Color(0xFFEAEAE9),
          width: 260,
          child: Container(
              color: Color(0xFFEAEAE9),
              child: Column(
                children: [MyHeaderDrawer(), MyDrawerList()],
              )),
        ));
  }
}
