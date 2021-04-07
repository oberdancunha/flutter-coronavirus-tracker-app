import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kt_dart/kt.dart';

import '../../domain/tracker/contamination.dart';
import '../../domain/tracker/location.dart';
import '../../domain/tracker/tracker.dart';
import '../../domain/tracker/tracker_value_objects.dart';

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
        locations: _totalConfirmationsFromProvinces(locations)!
            .map(
              (location) => location.toDomain(),
            )
            .toImmutableList(),
      );

  factory TrackerDto.fromApi(Map<String, dynamic> trackerJson) => TrackerDto(
        contamination: ContaminationDto.fromCoronaTrackerApi(
          contaminationJson: trackerJson,
          lastUpdated: (trackerJson['locations'] as List)[0]['last_updated'].toString(),
        ),
        locations: (trackerJson['locations'] as List)
            .map((location) => LocationDto.fromCoronaTrackerApi(location as Map<String, dynamic>))
            .toList(),
      );

  List<LocationDto>? _totalConfirmationsFromProvinces(List<LocationDto> locations) {
    final locationNormalized = <LocationDto>[];
    var countryCode = '';
    var sumConfirmed = 0;
    var sumDeaths = 0;
    var sumRecovered = 0;
    var lastUpdated = '';
    late LocationDto locationPrior;
    locations.forEach(
      (location) {
        if (countryCode != '' && countryCode != location.countryCode) {
          lastUpdated = locationPrior.contaminations.first.lastUpdated.toString();
          locationPrior.contaminations.removeAt(0);
          locationPrior.contaminations.add(
            ContaminationDto(
              confirmed: sumConfirmed,
              deaths: sumDeaths,
              recovered: sumRecovered,
              lastUpdated: lastUpdated,
            ),
          );
          locationNormalized.add(locationPrior);
          sumConfirmed = 0;
          sumDeaths = 0;
          sumRecovered = 0;
        }
        sumDeaths += location.contaminations.first.deaths;
        sumConfirmed += location.contaminations.first.confirmed;
        sumRecovered += location.contaminations.first.recovered;
        countryCode = location.countryCode;
        locationPrior = location;
      },
    );
    lastUpdated = locationPrior.contaminations.first.lastUpdated.toString();
    locationPrior.contaminations.removeAt(0);
    locationPrior.contaminations.add(
      ContaminationDto(
        confirmed: sumConfirmed,
        deaths: sumDeaths,
        recovered: sumRecovered,
        lastUpdated: lastUpdated,
      ),
    );
    locationNormalized.add(locationPrior);

    return locationNormalized;
  }
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
        confirmed: PopulationValue(confirmed),
        deaths: PopulationValue(deaths),
        recovered: PopulationValue(recovered),
        lastUpdated: DateValue(lastUpdated),
      );

  factory ContaminationDto.fromCoronaTrackerApi({
    required Map<String, dynamic> contaminationJson,
    required String lastUpdated,
  }) =>
      ContaminationDto(
        confirmed: int.tryParse(contaminationJson['latest']['confirmed'].toString())!,
        deaths: int.tryParse(contaminationJson['latest']['deaths'].toString())!,
        recovered: int.tryParse(contaminationJson['latest']['recovered'].toString())!,
        lastUpdated: lastUpdated,
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
        countryPopulation: PopulationValue(countryPopulation),
        latitude: latitude,
        longitude: longitude,
        contaminations: contaminations
            .map(
              (contamination) => contamination.toDomain(),
            )
            .toImmutableList(),
      );

  factory LocationDto.fromCoronaTrackerApi(Map<String, dynamic> locationJson) => LocationDto(
        id: int.tryParse(locationJson['id'].toString())!,
        country: locationJson['country'].toString(),
        countryCode: locationJson['country_code'].toString(),
        countryPopulation: int.tryParse(locationJson['country_population'].toString()) ?? 0,
        latitude: double.tryParse(locationJson['coordinates']['latitude'].toString()) ?? 0.0,
        longitude: double.tryParse(locationJson['coordinates']['longitude'].toString()) ?? 0.0,
        contaminations: [
          ContaminationDto.fromCoronaTrackerApi(
            contaminationJson: locationJson,
            lastUpdated: locationJson['last_updated'].toString(),
          ),
        ],
      );
}
