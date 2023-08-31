import 'package:flutter/material.dart';

class CounterScreen extends StatefulWidget {
  //Aqui van las propiedades
  const CounterScreen({super.key});
  @override
  State<CounterScreen> createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {
  int counter = 15;
  // int counter era una variable, pero para que se informe el cambio de estado
  // del counter se le tubo que elevevar a propiedad

  // Aqui van las propiedades
  // Estableece a la clase como Widget
  //en un StatefullWidget en reempñazo del build, se crea un estado
  //llamo: State.
  @override
  Widget build(BuildContext context) {
    //Aqui van las variables
    const TextStyle fontSize30 = TextStyle(fontSize: 30);
    //var fontSize30 = const TextStyle(fontSize: 30);

    return Scaffold(
      appBar: AppBar(
        title: const Text('CounterScreen'),
        elevation: 10,
      ),
      backgroundColor: Colors.white,
      body: Center(
        // Center, centra la columna.
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          //mainAxisAligment pone en el centro de lo alto al texto
          crossAxisAlignment: CrossAxisAlignment.center,
          //crossAxisAligment pone en centro de lo anco al texto,
          //es relativo al

          //children: const <Widget>[Text('Cicks Counter'), Text('10')],
          //<Widget>, se usa para especificar que solo iran widgets,
          // y no se admitira otro tipo de dato.
          children: [
            const Text(
              'Cicks Counter',
              style: fontSize30,
            ),
            Text(
              '$counter',
              style: fontSize30,
            ),
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          FloatingActionButton(
            child: const Icon(Icons.add),
            //Cuando se agrega el onPressed no puede ser constante floaringActionButton
            onPressed: () {
              counter++;
              setState(
                  () {}); //Esto es una funcion anonima, la funcion siempre pide un argumento.
            },
          ),
          FloatingActionButton(
            child: const Icon(Icons.exposure_minus_1_outlined),
            //Cuando se agrega el onPressed no puede ser constante floaringActionButton
            onPressed: () {
              counter--;
              setState(
                  () {}); //Esto es una funcion anonima, la funcion siempre pide un argumento.
            },
          ),
        ],
      ),
    );
  }
}
