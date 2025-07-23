import 'package:flutter_test/flutter_test.dart';
import 'package:string_calculator/calculator/string_calculator.dart';

void main() {
    final calc = StringCalculator();

    test('returns 0 for empty string', () {
      expect(calc.add(''), 0);
    });
    test('returns the number itself for single number', () {
      expect(calc.add('5'), 5);
    });
    test('Two comma-separated numbers are summed', () {
      expect(calc.add('3,5'), 8);
    });
    test('Multiple comma-separated numbers are summed', () {
      expect(calc.add('1,2,3,4,5,6'), 21);
    });
    test('Supports newline as delimiter along with comma', () {
      expect(calc.add('1\n2,3,4'), 10);
    });
}
