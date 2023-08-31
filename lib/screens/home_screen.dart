import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  //Aqui van las propiedades
  const HomeScreen({super.key}); // Estableece a la clase como Widget

  @override
  Widget build(BuildContext context) {
    //Aqui van las variables
    const TextStyle fontSize30 = TextStyle(fontSize: 30);
    //var fontSize30 = const TextStyle(fontSize: 30);
    int counter = 10;

    return Scaffold(
      appBar: AppBar(
        title: const Text('HomeScreen'),
        elevation: 0,
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
            )
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.miniEndFloat,
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        //Cuando se agrega el onPressed no puede ser constante floaringActionButton
        onPressed: () {
          print('Hola mundo');
          counter++;
        },
      ),
    );
  }
}
