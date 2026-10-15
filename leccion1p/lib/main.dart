import 'package:flutter/material.dart';
import 'rutas.dart';
import 'vistas/menu_pantalla.dart';
import 'vistas/divisores_pantalla.dart';
import 'vistas/inversion_pantalla.dart';
import 'vistas/suma_digitos_pantalla.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Leccion 1',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.teal),
      ),
      initialRoute: Rutas.menu,
      routes: {
        Rutas.menu: (context) => const MenuPantalla(),
        Rutas.divisores: (context) => const DivisoresPantalla(),
        Rutas.inversion: (context) => const InversionPantalla(),
        Rutas.sumaDigitos: (context) => const SumaDigitosPantalla(),
      },
    );
  }
}
