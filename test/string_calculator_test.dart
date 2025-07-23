import 'package:flutter_test/flutter_test.dart';
import 'package:string_calculator/calculator/string_calculator.dart';

void main() {
    final calc = StringCalculator();

    test('returns 0 for empty string', () {
      expect(calc.add(''), 0);
    });

}
