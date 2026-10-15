class InversionModelo {
  int numero;

  InversionModelo(this.numero);

  String invertir() {
      int n = numero;
    String invertido = '';

    while (n > 0) {
        int digito = n % 10;
      invertido = invertido + digito.toString();
      n = n ~/ 10;
    }

      return invertido;
  }
}
