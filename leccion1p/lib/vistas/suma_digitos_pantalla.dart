import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import '../controladores/suma_digitos_controlador.dart';

class SumaDigitosPantalla extends StatefulWidget {
  const SumaDigitosPantalla({super.key});

  @override
  State<SumaDigitosPantalla> createState() => _SumaDigitosPantallaState();
}

class _SumaDigitosPantallaState extends State<SumaDigitosPantalla> {
  //mapeo
  SumaDigitosControlador controlador = SumaDigitosControlador();
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
        title: Text('Suma de digitos'),
        backgroundColor: Colors.teal,
        foregroundColor: Colors.white,
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              'Ingrese un numero entero positivo para sumar sus digitos',
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
              child: Text('Calcular', style: TextStyle(fontSize: 16)),
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
                    Text('Suma de los digitos', style: TextStyle(fontSize: 16)),
                    SizedBox(height: 10),
                    Text(
                      controlador.suma,
                      style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 15),
                    Text('El resultado es', style: TextStyle(fontSize: 16)),
                    SizedBox(height: 5),
                    Text(
                      controlador.tipo,
                      style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                        color: Colors.teal,
                      ),
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
