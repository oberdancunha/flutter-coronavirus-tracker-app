import 'package:intl/intl.dart';

String formatPopulationToString(int populationNumber) =>
    NumberFormat.decimalPattern('en_US').format(
      populationNumber,
    );

int formatPopulationToInt(String populationString) => int.tryParse(
      removeDecimalPattern(populationString),
    )!;

String removeDecimalPattern(String populationString) => populationString.replaceAll(',', '');

String removeExcessiveWhiteSpaces(String value) => value.trim().replaceAll(RegExp(' +'), ' ');

DateTime toDateTime(String date) => DateTime.tryParse(date)!;

String formatDate(DateTime date) => DateFormat('MMMM dd, yyyy, kk:mm').format(date);
