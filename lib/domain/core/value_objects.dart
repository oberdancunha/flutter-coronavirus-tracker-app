import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';

import 'errors.dart';
import 'value_failures.dart';

@immutable
abstract class ValueObject<T> {
  Either<ValueFailure<T>, T> get value;

  T getOrCrash() => value.fold(
        (valueFailure) => throw UnexpectedValueError(valueFailure),
        id,
      );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }

    return other is ValueObject<T> && other.value == value;
  }

  @override
  int get hashCode => value.hashCode;
}
