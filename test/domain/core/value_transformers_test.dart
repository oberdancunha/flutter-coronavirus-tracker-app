import 'package:coronavirus_tracker_app/domain/core/value_transformers.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test(
    'Should format number to US format',
    () {
      const value = 1234567;
      const expectedValue = "1,234,567";
      final valueFormatted = formatPopulationToString(value);
      expect(expectedValue, equals(valueFormatted));
    },
  );

  test(
    'Should format the value in number, removing the comma',
    () {
      const value = '12,345,678';
      const expectedValue = 12345678;
      final valueFormatted = formatPopulationToInt(value);
      expect(expectedValue, equals(valueFormatted));
    },
  );

  test(
    'Should removing the comma',
    () {
      const value = '123,456';
      const expectedValue = '123456';
      final valueFormatted = removeDecimalPattern(value);
      expect(expectedValue, equals(valueFormatted));
    },
  );

  test(
    'Should remove excessive white space at the beginning, in the middle and at the end of the word',
    () {
      const value = '   Emirates    Arabian    ';
      const expectedValue = 'Emirates Arabian';
      final valueFormatted = removeExcessiveWhiteSpaces(value);
      expect(expectedValue, equals(valueFormatted));
    },
  );
}
