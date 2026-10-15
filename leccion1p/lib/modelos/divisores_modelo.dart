class DivisoresModelo {
  int numero;

  DivisoresModelo(this.numero);

  List<int> obtenerDivisores() {
     List<int> divisores = [];

    for (int i = 1; i <= numero; i++) {
       if (numero % i == 0) {
        divisores.add(i);
      }
    }

     return divisores;
  }

  int cantidadDivisores() {
     return obtenerDivisores().length;
  }
}
