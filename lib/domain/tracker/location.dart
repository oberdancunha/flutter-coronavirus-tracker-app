import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kt_dart/kt.dart';

import 'contamination.dart';
import 'tracker_value_objects.dart';

part 'location.freezed.dart';

@freezed
class Location with _$Location {
  const Location._();

  const factory Location({
    required int id,
    required String country,
    required String countryCode,
    required PopulationValue countryPopulation,
    required double latitude,
    required double longitude,
    required KtList<Contamination> contaminations,
  }) = _Location;
}
