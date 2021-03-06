import 'package:dartz/dartz.dart';

import '../core/value_failures.dart';
import '../core/value_objects.dart';
import '../core/value_transformers.dart';

class PopulationValue extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  factory PopulationValue(int populationNumber) => PopulationValue._(
        right(formatPopulationToString(populationNumber)),
      );

  PopulationValue._(this.value);
}

class DateValue extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  factory DateValue(String dateString) => DateValue._(
        right(formatDate(toDateTime(dateString))),
      );

  DateValue._(this.value);
}
