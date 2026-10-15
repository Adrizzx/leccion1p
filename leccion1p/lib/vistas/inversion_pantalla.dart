import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import '../controladores/inversion_controlador.dart';

class InversionPantalla extends StatefulWidget {
  const InversionPantalla({super.key});

  @override
  State<InversionPantalla> createState() => _InversionPantallaState();
}

class _InversionPantallaState extends State<InversionPantalla> {
  //mapeo
  InversionControlador controlador = InversionControlador();
  final numeroController = TextEditingController();

  //logica
  void calcular() {
    setState(() {
      controlador.calcular(numeroController.text);
    });
  }

  void limpiar() {
    setState(() {
       numeroController.clear();
      controlador.limpiar();
    });
  }

  //diseno
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Inversion de un numero'),
        backgroundColor: Colors.teal,
        foregroundColor: Colors.white,
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              'Ingrese un numero entero positivo para invertir sus digitos',
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 15),

            TextField(
              controller: numeroController,
              keyboardType: TextInputType.number,
              inputFormatters: [FilteringTextInputFormatter.digitsOnly],
              maxLength: 9,
              decoration: InputDecoration(
                labelText: 'Numero',
                border: OutlineInputBorder(),
                prefixIcon: Icon(Icons.pin),
              ),
            ),
            SizedBox(height: 10),

            ElevatedButton(
              onPressed: calcular,
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.teal,
                foregroundColor: Colors.white,
                padding: EdgeInsets.all(15),
              ),
              child: Text('Invertir', style: TextStyle(fontSize: 16)),
            ),
            SizedBox(height: 10),

            Text(controlador.mensaje, style: TextStyle(color: Colors.red)),
            SizedBox(height: 10),

            Card(
              color: Colors.teal.shade50,
              child: Padding(
                padding: EdgeInsets.all(20),
                child: Column(
                  children: [
                    Text('Numero invertido', style: TextStyle(fontSize: 16)),
                    SizedBox(height: 10),
                    Text(
                      controlador.resultado,
                      style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: limpiar,
        tooltip: 'Limpiar',
        child: Icon(Icons.refresh),
      ),
    );
  }
}
