import 'package:test/expect.dart';
import 'package:test/scaffolding.dart';

void main() {
  test('Calculo do IMC', () {
    expect(85 / (1.75 * 1.75), equals(27.76));
  });
}
