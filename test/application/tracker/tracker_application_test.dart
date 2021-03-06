import 'package:dartz/dartz.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

import 'package:coronavirus_tracker_app/application/tracker/tracker_application.dart';
import 'package:coronavirus_tracker_app/core/providers/tracker_provider.dart';
import 'package:coronavirus_tracker_app/domain/core/failures.dart';
import 'package:coronavirus_tracker_app/domain/tracker/i_tracker_repository.dart';
import 'package:coronavirus_tracker_app/domain/tracker/tracker.dart';

import '../../data/utils.dart';

class MockTrackerRepository extends Mock implements ITrackerRepository {}

void main() {
  MockTrackerRepository? mockTrackerRepository;
  Tracker? trackerDataEntityMocked;
  late ProviderContainer providerContainer;
  final DateTime time = DateTime.now();

  setUpAll(() {
    mockTrackerRepository = MockTrackerRepository();
    trackerDataEntityMocked = getTrackerDataEntity();
  });

  setUp(() {
    providerContainer = ProviderContainer(
      overrides: [
        trackerRepositoryProvider.overrideWithProvider(
          Provider((ref) => mockTrackerRepository!),
        ),
      ],
    );
  });

  Future<void> setUpLoadAndWaitResult() async {
    expect(
      providerContainer.read(trackerApplicationGetProvider(time)),
      const AsyncValue<Tracker>.loading(),
    );
    await Future<void>.value();
  }

  // ignore: always_declare_return_types
  callWhenMockTrackerRepositoryGet() => when(mockTrackerRepository!).calls(#get);

  group(
    'Repository success | ',
    () {
      void setUpMockTrackerRepositoryGetSuccess() {
        callWhenMockTrackerRepositoryGet()
            .thenAnswer((_) async => right<Failure, Tracker>(trackerDataEntityMocked!));
      }

      Future<void> setUpMockRepositoryAndProviderStates() async {
        setUpMockTrackerRepositoryGetSuccess();
        await setUpLoadAndWaitResult();
      }

      test(
        'Should state be loading and data (success) states sequentially',
        () async {
          await setUpMockRepositoryAndProviderStates();
          expect(
            providerContainer.read(trackerApplicationGetProvider(time)),
            AsyncValue<Tracker>.data(trackerDataEntityMocked!),
          );
        },
      );

      test(
        'Should data state (success) return a Tracker entity',
        () async {
          await setUpMockRepositoryAndProviderStates();
          expect(
            providerContainer.read(trackerApplicationGetProvider(time)).data!.value,
            isA<Tracker>(),
          );
        },
      );

      test(
        'Should first localization name is Brazil',
        () async {
          await setUpMockRepositoryAndProviderStates();
          expect(
            providerContainer
                .read(trackerApplicationGetProvider(time))
                .data!
                .value
                .locations
                .asList()
                .first
                .country,
            equals('Brazil'),
          );
        },
      );
    },
  );

  group(
    'Repository failure (Failure.serverError) | ',
    () {
      test(
        'Should state be loading and error sequentially and error should be Failure.serverError',
        () async {
          callWhenMockTrackerRepositoryGet()
              .thenAnswer((_) async => left<Failure, Tracker>(Failure.serverError()));
          await setUpLoadAndWaitResult();
          expect(
            providerContainer.read(trackerApplicationGetProvider(time)).maybeMap(
                  error: (failure) => failure.error,
                  // ignore: no-empty-block
                  orElse: () {},
                ),
            equals(AsyncValue<Tracker>.error(Failure.serverError()).maybeMap(
              error: (failure) => failure.error,
              // ignore: no-empty-block
              orElse: () {},
            )),
          );
        },
      );
    },
  );
}
