import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    //Metodo Build
    return const MaterialApp(
      home: Center(child: Text('Hola Mundo')),
    );
  }
}
