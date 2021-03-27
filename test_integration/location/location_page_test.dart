//@dart=2.8

import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:flutter_map/plugin_api.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:integration_test/integration_test.dart';
import 'package:kt_dart/kt.dart';
import 'package:mocktail/mocktail.dart';

import 'package:coronavirus_tracker_app/core/providers/tracker_provider.dart';
import 'package:coronavirus_tracker_app/domain/core/failures.dart';
import 'package:coronavirus_tracker_app/domain/tracker/contamination.dart';
import 'package:coronavirus_tracker_app/domain/tracker/i_tracker_repository.dart';
import 'package:coronavirus_tracker_app/domain/tracker/location.dart';
import 'package:coronavirus_tracker_app/domain/tracker/tracker.dart';
import 'package:coronavirus_tracker_app/domain/tracker/tracker_value_objects.dart';
import 'package:coronavirus_tracker_app/presentation/core/app_page.dart';
import 'package:coronavirus_tracker_app/presentation/core/app_widget.dart';
import 'package:coronavirus_tracker_app/presentation/core/header_widget.dart';
import 'package:coronavirus_tracker_app/presentation/core/main_page.dart';
import 'package:coronavirus_tracker_app/presentation/splash/splash_page.dart';
import 'package:coronavirus_tracker_app/presentation/tracker/location/location_page.dart';
import 'package:coronavirus_tracker_app/presentation/tracker/location/widgets/location_popup.dart';

class MockTrackerRepository extends Mock implements ITrackerRepository {}

void main() {
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();
  MockTrackerRepository mockTrackerRepository;
  ProviderScope providerScope;
  Tracker trackerDataEntityMocked;

  setUpAll(() {
    mockTrackerRepository = MockTrackerRepository();
    trackerDataEntityMocked = Tracker(
      contamination: Contamination(
        confirmed: PopulationValue(114442646),
        deaths: PopulationValue(2538808),
        recovered: PopulationValue(14076469),
        lastUpdated: DateTime.tryParse('2021-03-02T16:04:34.882427Z'),
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
              lastUpdated: DateTime.tryParse('2021-03-02T16:04:34.882427Z'),
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
              lastUpdated: DateTime.tryParse('2021-03-02T16:04:35.583773Z'),
            ),
          ),
        ),
      ),
    );
  });

  setUp(() {
    providerScope = ProviderScope(
      overrides: [
        trackerRepositoryProvider.overrideWithProvider(
          Provider(
            (ref) => mockTrackerRepository,
          ),
        ),
      ],
      child: AppWidget(),
    );
  });

  testWidgets(
    'Should show tracker when get is success',
    (tester) async {
      when(mockTrackerRepository)
          .calls(#get)
          .thenAnswer((_) async => right<Failure, Tracker>(trackerDataEntityMocked));
      await tester.pumpWidget(providerScope);
      await tester.pump();
      expect(find.byType(AppPage), findsOneWidget);
      final splashPage = find.byType(SplashPage);
      await tester.pump(const Duration(seconds: 3));
      await expectLater(splashPage, findsNothing);
      await tester.pump();
      await expectLater(find.byType(MainPage), findsOneWidget);
      await tester.pump(const Duration(seconds: 5));
      await tester.tap(find.byKey(const Key('locations_bar')));
      await tester.pump(const Duration(seconds: 5));
      await expectLater(find.byType(LocationPage), findsOneWidget);
      await expectLater(find.byType(HeaderWidget), findsOneWidget);
      await tester.pump(const Duration(seconds: 5));
      await expectLater(find.byType(FlutterMap), findsOneWidget);
      await tester.pump(const Duration(seconds: 5));
      await tester.tap(find.byKey(const Key('Brazil')));
      await tester.pump(const Duration(seconds: 5));
      await expectLater(find.byType(LocationPopup), findsOneWidget);
    },
  );
}
