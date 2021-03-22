import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../domain/tracker/location.dart';

part 'tracker_presentation_classes.freezed.dart';

@freezed
class ContaminationPrimitive with _$ContaminationPrimitive {
  const ContaminationPrimitive._();

  const factory ContaminationPrimitive({
    required int confirmed,
    required int deaths,
    required int recovered,
    required DateTime lastUpdated,
  }) = _ContaminationPrimitive;
}

@freezed
class LocationPrimitive with _$LocationPrimitive {
  const LocationPrimitive._();

  const factory LocationPrimitive({
    required int id,
    required String country,
    required String countryCode,
    required int countryPopulation,
    required double latitude,
    required double longitude,
    required List<ContaminationPrimitive> contaminations,
  }) = _LocationPrimitive;

  factory LocationPrimitive.fromDomain(Location location) => LocationPrimitive(
        id: location.id,
        country: location.country,
        countryCode: location.countryCode,
        countryPopulation: location.countryPopulation,
        latitude: location.latitude,
        longitude: location.longitude,
        contaminations: location.contaminations
            .asList()
            .map(
              (contamination) => ContaminationPrimitive(
                confirmed: contamination.confirmed,
                deaths: contamination.deaths,
                recovered: contamination.recovered,
                lastUpdated: contamination.lastUpdated,
              ),
            )
            .toList(),
      );

  factory LocationPrimitive.empty() => LocationPrimitive(
        id: 0,
        country: 'No contry found',
        countryCode: '',
        countryPopulation: 0,
        latitude: 0,
        longitude: 0,
        contaminations: [
          ContaminationPrimitive(
            confirmed: 0,
            deaths: 0,
            recovered: 0,
            lastUpdated: DateTime.now(),
          ),
        ],
      );
}
