import 'package:flutter_test/flutter_test.dart';

import 'package:leccion1p/main.dart';
import 'package:leccion1p/modelos/inversion_modelo.dart';
import 'package:leccion1p/modelos/suma_digitos_modelo.dart';
import 'package:leccion1p/modelos/divisores_modelo.dart';

void main() {
  test('Inversion de un numero', () {
    expect(InversionModelo(12345).invertir(), '54321');
    expect(InversionModelo(120).invertir(), '021');
    expect(InversionModelo(7).invertir(), '7');
  });

  test('Suma de digitos', () {
    SumaDigitosModelo modelo = SumaDigitosModelo(1234);
    expect(modelo.sumarDigitos(), 10);
    expect(modelo.esPar(), true);
    expect(SumaDigitosModelo(25).esPar(), false);
  });

  test('Divisores', () {
    DivisoresModelo modelo = DivisoresModelo(12);
    expect(modelo.obtenerDivisores(), [1, 2, 3, 4, 6, 12]);
    expect(modelo.cantidadDivisores(), 6);
    expect(DivisoresModelo(1).obtenerDivisores(), [1]);
    expect(DivisoresModelo(13).cantidadDivisores(), 2);
  });

  testWidgets('El menu se muestra', (WidgetTester tester) async {
    await tester.pumpWidget(const MyApp());
    expect(find.text('Seleccione un ejercicio'), findsOneWidget);
  });
}
