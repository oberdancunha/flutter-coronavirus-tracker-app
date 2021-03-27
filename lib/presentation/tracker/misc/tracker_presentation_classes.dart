import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../domain/tracker/location.dart';

part 'tracker_presentation_classes.freezed.dart';

@freezed
class ContaminationPrimitive with _$ContaminationPrimitive {
  const ContaminationPrimitive._();

  const factory ContaminationPrimitive({
    required String confirmed,
    required String deaths,
    required String recovered,
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
    required String countryPopulation,
    required double latitude,
    required double longitude,
    required List<ContaminationPrimitive> contaminations,
  }) = _LocationPrimitive;

  factory LocationPrimitive.fromDomain(Location location) => LocationPrimitive(
        id: location.id,
        country: location.country,
        countryCode: location.countryCode,
        countryPopulation: location.countryPopulation.getOrCrash(),
        latitude: location.latitude,
        longitude: location.longitude,
        contaminations: location.contaminations
            .asList()
            .map(
              (contamination) => ContaminationPrimitive(
                confirmed: contamination.confirmed.getOrCrash(),
                deaths: contamination.deaths.getOrCrash(),
                recovered: contamination.recovered.getOrCrash(),
                lastUpdated: contamination.lastUpdated,
              ),
            )
            .toList(),
      );
}
