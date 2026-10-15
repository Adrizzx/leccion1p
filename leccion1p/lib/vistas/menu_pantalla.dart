import 'package:flutter/material.dart';
import '../rutas.dart';

class MenuPantalla extends StatelessWidget {
  const MenuPantalla({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Leccion 1 - Grupo 2'),
        backgroundColor: Colors.teal,
        foregroundColor: Colors.white,
      ),
      body: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              'Seleccione un ejercicio',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 20),

            Card(
              child: ListTile(
                leading: Icon(Icons.format_list_numbered, color: Colors.teal),
                title: Text('Ejercicio 7'),
                subtitle: Text('Divisores de un numero'),
                trailing: Icon(Icons.arrow_forward_ios),
                onTap: () {
                  Navigator.pushNamed(context, Rutas.divisores);
                },
              ),
            ),

            Card(
              child: ListTile(
                leading: Icon(Icons.swap_horiz, color: Colors.teal),
                title: Text('Ejercicio 8'),
                subtitle: Text('Inversion de un numero'),
                trailing: Icon(Icons.arrow_forward_ios),
                onTap: () {
                  Navigator.pushNamed(context, Rutas.inversion);
                },
              ),
            ),

            Card(
              child: ListTile(
                leading: Icon(Icons.functions, color: Colors.teal),
                title: Text('Ejercicio 9'),
                subtitle: Text('Suma de digitos'),
                trailing: Icon(Icons.arrow_forward_ios),
                onTap: () {
                  Navigator.pushNamed(context, Rutas.sumaDigitos);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
