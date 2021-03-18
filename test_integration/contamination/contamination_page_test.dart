//@dart=2.8

import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
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
import 'package:coronavirus_tracker_app/presentation/core/app_page.dart';
import 'package:coronavirus_tracker_app/presentation/core/app_widget.dart';
import 'package:coronavirus_tracker_app/presentation/core/main_page.dart';
import 'package:coronavirus_tracker_app/presentation/splash/splash_page.dart';
import 'package:coronavirus_tracker_app/presentation/tracker/contamination/contamination_page.dart';
import 'package:coronavirus_tracker_app/presentation/tracker/contamination/widgets/contamination_body/contamination_body.dart';
import 'package:coronavirus_tracker_app/presentation/tracker/contamination/widgets/contamination_body/contamination_body_pie.dart';
import 'package:coronavirus_tracker_app/presentation/tracker/contamination/widgets/contamination_body/contamination_body_text.dart';
import 'package:coronavirus_tracker_app/presentation/tracker/contamination/widgets/contamination_header/contamination_header.dart';
import 'package:coronavirus_tracker_app/presentation/tracker/contamination/widgets/contamination_header/contamination_header_data.dart';
import 'package:coronavirus_tracker_app/presentation/tracker/contamination/widgets/contamination_header/contamination_header_logo.dart';

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
        confirmed: 114442646,
        deaths: 2538808,
        recovered: 14076469,
        lastUpdated: DateTime.tryParse('2021-03-02T16:04:34.882427Z'),
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
              lastUpdated: DateTime.tryParse('2021-03-02T16:04:34.882427Z'),
            ),
          ),
        ),
        Location(
          id: 54,
          country: 'Canada',
          countryCode: 'CA',
          countryPopulation: 37058856,
          latitude: 64.2823,
          longitude: -135,
          contaminations: KtList.of(
            Contamination(
              confirmed: 875388,
              deaths: 22014,
              recovered: 0,
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
      await expectLater(find.byType(ContaminationPage), findsOneWidget);
      await expectLater(find.byType(ContaminationHeader), findsOneWidget);
      await expectLater(find.byType(ContaminationHeaderData), findsOneWidget);
      await expectLater(find.byType(ContaminationHeaderLogo), findsOneWidget);
      await expectLater(find.byType(ContaminationBody), findsOneWidget);
      await expectLater(find.byType(ContaminationBodyText), findsOneWidget);
      await expectLater(find.byType(ContaminationBodyPie), findsOneWidget);
      await expectLater(find.text('Total of cases'), findsOneWidget);
      await expectLater(find.text('Last update March 02, 2021, 16:04'), findsOneWidget);
      await expectLater(find.text('114,442,646'), findsOneWidget);
      await expectLater(find.text('Coronavirus Tracker'), findsOneWidget);
      await expectLater(find.byKey(const Key('assets/images/coronavirus.png')), findsOneWidget);
      await expectLater(find.text('14,076,469'), findsOneWidget);
      await expectLater(find.text('recovered'), findsOneWidget);
      await expectLater(find.text('2,538,808'), findsOneWidget);
      await expectLater(find.text('deaths'), findsOneWidget);
    },
  );
}
