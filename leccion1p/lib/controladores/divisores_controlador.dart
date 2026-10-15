import '../modelos/divisores_modelo.dart';

class DivisoresControlador {
  String divisores = '-';
   String cantidad = '-';
  String mensaje = '';

  void calcular(String texto) {
    int? numero = int.tryParse(texto.trim());
    if (texto.trim().isEmpty) {
      limpiar();
      mensaje = 'Ingrese un numero';
        return;
    }
    if (numero == null) {
      limpiar();
      mensaje = 'Solo se permiten numeros enteros';
        return;
    }
    if (numero <= 0) {
      limpiar();
      mensaje = 'El numero debe ser positivo (mayor a 0)';
         return;
    }
    if (numero > 1000000) {
      limpiar();
      mensaje = 'Ingrese un numero hasta 1000000';
        return;
    }
    DivisoresModelo modelo = DivisoresModelo(numero);
    List<int> lista = modelo.obtenerDivisores();
    divisores = lista.join(', ');
     cantidad = lista.length.toString();
    mensaje = '';
  }
  void limpiar() {
    divisores = '-';
     cantidad = '-';
    mensaje = '';
  }
}
