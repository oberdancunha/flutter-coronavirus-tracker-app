//@dart=2.8
import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:integration_test/integration_test.dart';
import 'package:mocktail/mocktail.dart';

import 'package:coronavirus_tracker_app/core/providers/tracker_provider.dart';
import 'package:coronavirus_tracker_app/domain/core/failures.dart';
import 'package:coronavirus_tracker_app/domain/tracker/i_tracker_repository.dart';
import 'package:coronavirus_tracker_app/domain/tracker/tracker.dart';
import 'package:coronavirus_tracker_app/presentation/core/app_page.dart';
import 'package:coronavirus_tracker_app/presentation/core/app_widget.dart';
import 'package:coronavirus_tracker_app/presentation/core/failure_page.dart';
import 'package:coronavirus_tracker_app/presentation/splash/splash_page.dart';

class MockTrackerRepository extends Mock implements ITrackerRepository {}

void main() {
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();
  MockTrackerRepository mockTrackerRepository;
  ProviderScope providerScope;

  setUpAll(() {
    mockTrackerRepository = MockTrackerRepository();
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

  Future<void> mainBody(WidgetTester tester) async {
    await tester.pumpWidget(providerScope);
    await tester.pump();
    expect(find.byType(AppPage), findsOneWidget);
    final splashPage = find.byType(SplashPage);
    await expectLater(splashPage, findsOneWidget);
    await tester.pump(const Duration(seconds: 3));
    await expectLater(splashPage, findsNothing);
    await tester.pump();
    await expectLater(find.byType(FailurePage), findsOneWidget);
    await expectLater(find.byKey(const Key('try_again')), findsOneWidget);
  }

  testWidgets(
    'Should show failure page when there is connection problem',
    (tester) async {
      when(mockTrackerRepository)
          .calls(#get)
          .thenAnswer((_) async => left<Failure, Tracker>(Failure.isNotConnected()));
      await mainBody(tester);
      await expectLater(
        find.byKey(const Key('assets/images/connection_error.png')),
        findsOneWidget,
      );
      await expectLater(find.text('Device is not connected!'), findsOneWidget);
      await tester.pump(const Duration(seconds: 5));
    },
  );

  testWidgets(
    'Should show failure page when there is server error',
    (tester) async {
      when(mockTrackerRepository)
          .calls(#get)
          .thenAnswer((_) async => left<Failure, Tracker>(Failure.serverError()));
      await mainBody(tester);
      await expectLater(
        find.byKey(const Key('assets/images/server_error.png')),
        findsOneWidget,
      );
      await expectLater(find.text('An unknown error has occurred!'), findsOneWidget);
      await tester.pump(const Duration(seconds: 1));
    },
  );
}
