import '../modelos/inversion_modelo.dart';

class InversionControlador {
  String resultado = '-';
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
      mensaje = 'Solo se permiten numeros enters';
      return;
    }
    if (numero <= 0) {
        limpiar();
      mensaje = 'El numero debe ser positivo (mayor a 0)';
      return;
    }

    InversionModelo modelo = InversionModelo(numero);
     resultado = modelo.invertir();
     mensaje = '';
  }

  void limpiar() {
     resultado = '-';
    mensaje = '';
  }
}
