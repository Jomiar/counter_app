import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key}); // Estableece a la clase como Widget

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('HomeScreen'),
        elevation: 10.0,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          //children: const <Widget>[Text('Cicks Counter'), Text('10')],
          //<Widget>, se usa para especificar que solo iran widgets
          // y no se admitira otro tipo de dato.
          children: const [Text('Cicks Counter'), Text('10')],
        ),
      ),
    );
  }
}
