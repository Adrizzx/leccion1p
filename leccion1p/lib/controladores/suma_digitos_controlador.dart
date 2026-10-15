import '../modelos/suma_digitos_modelo.dart';

class SumaDigitosControlador {
  String suma = '-';
    String tipo = '-';
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

    SumaDigitosModelo modelo = SumaDigitosModelo(numero);
      suma = modelo.sumarDigitos().toString();

    if (modelo.esPar()) {
      tipo = 'PAR';
    } else {
      tipo = 'IMPAR';
    }
    mensaje = '';
  }

  void limpiar() {
    suma = '-';
    tipo = '-';
    mensaje = '';
  }
}
