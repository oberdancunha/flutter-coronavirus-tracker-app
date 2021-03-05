import 'package:coronavirusTrackerApp/domain/tracker/contamination.dart';
import 'package:coronavirusTrackerApp/domain/tracker/location.dart';
import 'package:coronavirusTrackerApp/domain/tracker/tracker.dart';
import 'package:kt_dart/kt.dart';

Tracker getTrackerEntity() => Tracker(
      contamination: Contamination(
        confirmed: 114442646,
        deaths: 2538808,
        recovered: 14076469,
        lastUpdated: DateTime.tryParse('2021-03-02T16:04:34.882427Z')!,
      ),
      locations: KtList.of(
        Location(
          id: 30,
          country: 'Brazil',
          countryCode: 'BR',
          countryPopulation: 209469333,
          latitude: -14.235,
          longitude: -51.9253,
          contaminations: KtList.of(
            Contamination(
              confirmed: 10587001,
              deaths: 255720,
              recovered: 9437611,
              lastUpdated: DateTime.tryParse('2021-03-02T16:04:34.882427Z')!,
            ),
          ),
        ),
      ),
    );
