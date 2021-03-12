import 'package:flutter_test/flutter_test.dart';

import 'package:coronavirus_tracker_app/domain/tracker/contamination.dart';
import 'package:coronavirus_tracker_app/domain/tracker/location.dart';
import 'package:coronavirus_tracker_app/domain/tracker/tracker.dart';
import 'package:coronavirus_tracker_app/infrastructure/tracker/tracker_dto.dart';

import '../../data/json_reader.dart';
import '../../data/utils.dart';

void main() {
  group('Tracker DTO | ', () {
    Tracker? tracker;
    Map<String, dynamic>? trackerDataMockedJson;
    Tracker? trackerDataEntityMocked;

    setUp(() {
      trackerDataMockedJson = jsonReader('tracker_data_mocked.json');
      tracker = TrackerDto.fromApi(trackerDataMockedJson!).toDomain();
      trackerDataEntityMocked = getTrackerDataEntity();
    });

    test(
      'Should be a Tracker entity',
      () {
        expect(tracker, isA<Tracker>());
      },
    );

    test(
      'Should normalize data according to country repetition, where data for each province are detailed ',
      () {
        expect(tracker, equals(trackerDataEntityMocked));
      },
    );
  });

  group('Contamination DTO | ', () {
    Contamination? contamination;

    setUp(() {
      contamination = const ContaminationDto(
        confirmed: 114442646,
        deaths: 2538808,
        recovered: 14076469,
        lastUpdated: '2021-03-02T16:04:33.535436Z',
      ).toDomain();
    });

    test(
      'Should be a Contamination entity',
      () {
        expect(contamination, isA<Contamination>());
      },
    );
  });

  group('Location DTO | ', () {
    Location? location;

    setUp(() {
      location = LocationDto(
        id: 0,
        country: 'Afghanistan',
        countryCode: 'AF',
        countryPopulation: 37172386,
        latitude: double.tryParse('33.93911')!,
        longitude: double.tryParse('67.709953')!,
        contaminations: [
          const ContaminationDto(
            confirmed: 55733,
            deaths: 2444,
            recovered: 49344,
            lastUpdated: '2021-03-02T16:04:33.535436Z',
          ),
        ],
      ).toDomain();
    });

    test(
      'Should be a Location entity',
      () {
        expect(location, isA<Location>());
      },
    );
  });
}
