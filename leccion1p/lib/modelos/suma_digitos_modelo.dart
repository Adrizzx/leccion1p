class SumaDigitosModelo {
  int numero;

  SumaDigitosModelo(this.numero);

  int sumarDigitos() {
      int n = numero;
      int suma = 0;

     while (n > 0) {
      suma = suma + (n % 10);
      n = n ~/ 10;
    }

     return suma;
  }

  bool esPar() {
     return sumarDigitos() % 2 == 0;
  }
}
