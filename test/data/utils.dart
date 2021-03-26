import 'package:coronavirus_tracker_app/domain/tracker/contamination.dart';
import 'package:coronavirus_tracker_app/domain/tracker/location.dart';
import 'package:coronavirus_tracker_app/domain/tracker/tracker.dart';
import 'package:coronavirus_tracker_app/domain/tracker/tracker_value_objects.dart';
import 'package:kt_dart/kt.dart';

Tracker getTrackerDataEntity() => Tracker(
      contamination: Contamination(
        confirmed: PopulationValue(114442646),
        deaths: PopulationValue(2538808),
        recovered: PopulationValue(14076469),
        lastUpdated: DateTime.tryParse('2021-03-02T16:04:34.882427Z')!,
      ),
      locations: KtList.of(
        Location(
          id: 30,
          country: 'Brazil',
          countryCode: 'BR',
          countryPopulation: PopulationValue(209469333),
          latitude: -14.235,
          longitude: -51.9253,
          contaminations: KtList.of(
            Contamination(
              confirmed: PopulationValue(10587001),
              deaths: PopulationValue(255720),
              recovered: PopulationValue(9437611),
              lastUpdated: DateTime.tryParse('2021-03-02T16:04:34.882427Z')!,
            ),
          ),
        ),
        Location(
          id: 54,
          country: 'Canada',
          countryCode: 'CA',
          countryPopulation: PopulationValue(37058856),
          latitude: 64.2823,
          longitude: -135,
          contaminations: KtList.of(
            Contamination(
              confirmed: PopulationValue(875388),
              deaths: PopulationValue(22014),
              recovered: PopulationValue(0),
              lastUpdated: DateTime.tryParse('2021-03-02T16:04:35.583773Z')!,
            ),
          ),
        ),
      ),
    );
