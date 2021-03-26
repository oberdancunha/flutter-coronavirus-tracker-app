import 'package:intl/intl.dart';

String formatPopulationToString(int populationNumber) =>
    NumberFormat.decimalPattern('en_US').format(
      populationNumber,
    );

int formatPopulationToInt(String populationString) => int.tryParse(
      removeDecimalPattern(populationString),
    )!;

String removeDecimalPattern(String populationString) => populationString.replaceAll(',', '');
