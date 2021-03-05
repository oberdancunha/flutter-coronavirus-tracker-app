import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kt_dart/kt.dart';

import '../../domain/tracker/contamination.dart';
import '../../domain/tracker/location.dart';
import '../../domain/tracker/tracker.dart';

part 'tracker_dto.freezed.dart';

@freezed
class TrackerDto with _$TrackerDto {
  const TrackerDto._();

  const factory TrackerDto({
    required ContaminationDto contamination,
    required List<LocationDto> locations,
  }) = _TrackerDto;

  Tracker toDomain() => Tracker(
        contamination: contamination.toDomain(),
        locations: locations
            .map(
              (location) => location.toDomain(),
            )
            .toImmutableList(),
      );

  factory TrackerDto.fromApi(Map<String, dynamic> trackerJson) => TrackerDto(
        contamination: ContaminationDto(
          confirmed: trackerJson['latest']['confirmed'],
          deaths: trackerJson['latest']['deaths'],
          recovered: trackerJson['latest']['recovered'],
          lastUpdated: (trackerJson['locations'] as List)[0]['last_updated'],
        ),
        locations: (trackerJson['locations'] as List)
            .map(
              (location) => LocationDto(
                id: location['id'],
                country: location['country'],
                countryCode: location['country_code'],
                countryPopulation: location['country_population'] ?? 0,
                latitude: double.tryParse(location['coordinates']['latitude']) ?? 0.0,
                longitude: double.tryParse(location['coordinates']['longitude']) ?? 0.0,
                contaminations: [
                  ContaminationDto(
                    confirmed: location['latest']['confirmed'],
                    deaths: location['latest']['deaths'],
                    recovered: location['latest']['recovered'],
                    lastUpdated: location['last_updated'],
                  ),
                ],
              ),
            )
            .toList(),
      );
}

@freezed
class ContaminationDto with _$ContaminationDto {
  const ContaminationDto._();

  const factory ContaminationDto({
    required int confirmed,
    required int deaths,
    required int recovered,
    required String lastUpdated,
  }) = _ContaminationDto;

  Contamination toDomain() => Contamination(
        confirmed: confirmed,
        deaths: deaths,
        recovered: recovered,
        lastUpdated: DateTime.tryParse(lastUpdated)!,
      );
}

@freezed
class LocationDto with _$LocationDto {
  const LocationDto._();

  const factory LocationDto({
    required int id,
    required String country,
    required String countryCode,
    required List<ContaminationDto> contaminations,
    required int countryPopulation,
    required double latitude,
    required double longitude,
  }) = _LocationDto;

  Location toDomain() => Location(
        id: id,
        country: country,
        countryCode: countryCode,
        countryPopulation: countryPopulation,
        latitude: latitude,
        longitude: longitude,
        contaminations: contaminations
            .map(
              (contamination) => contamination.toDomain(),
            )
            .toImmutableList(),
      );
}
