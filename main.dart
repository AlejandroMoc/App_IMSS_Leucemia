import 'package:animate_gradient/animate_gradient.dart';
import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Prueba 1',
      home: App(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AnimateGradient(
        primaryBegin: Alignment.topLeft,
        primaryEnd: Alignment.bottomLeft,
        secondaryBegin: Alignment.bottomLeft,
        secondaryEnd: Alignment.topRight,
        primaryColors: const [
          Color.fromRGBO(255, 0, 0, 1),
          Color.fromARGB(255, 250, 92, 0),
          Color.fromARGB(255, 245, 174, 109),
        ],
        secondaryColors: const [
          Color.fromARGB(255, 32, 167, 191),
          Color.fromARGB(180, 21, 140, 158),
          Color.fromARGB(255, 40, 61, 135)
        ],
        child: const Center(
          child: Text(
            'Prueba 1',
            style: TextStyle(
              fontSize: 36,
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}
