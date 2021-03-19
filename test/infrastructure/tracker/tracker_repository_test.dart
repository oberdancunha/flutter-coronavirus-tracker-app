import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

import 'package:coronavirus_tracker_app/core/exceptions/server_exception.dart';
import 'package:coronavirus_tracker_app/core/network/i_network_info.dart';
import 'package:coronavirus_tracker_app/domain/core/failures.dart';
import 'package:coronavirus_tracker_app/domain/tracker/i_tracker_data_source.dart';
import 'package:coronavirus_tracker_app/domain/tracker/tracker.dart';
import 'package:coronavirus_tracker_app/infrastructure/tracker/tracker_repository.dart';

import '../../data/utils.dart';

class MockNetworkInfo extends Mock implements INetworkInfo {}

class MockTrackerDataSource extends Mock implements ITrackerDataSource {}

void main() {
  MockNetworkInfo? mockNetworkInfo;
  MockTrackerDataSource? mockTrackerDataSource;
  late TrackerRepository trackerRepository;
  Tracker? trackerDataEntityMocked;

  setUpAll(() {
    mockNetworkInfo = MockNetworkInfo();
    mockTrackerDataSource = MockTrackerDataSource();
    trackerRepository = TrackerRepository(
      networkInfo: mockNetworkInfo!,
      trackerDataSource: mockTrackerDataSource!,
    );
    trackerDataEntityMocked = getTrackerDataEntity();
  });

  group('Device is NOT connected | ', () {
    void setUpMockDeviceIsNotConnected() {
      when(mockNetworkInfo!).calls(#isConnected).thenAnswer((_) async => false);
    }

    test(
      'Should return a Failure.isNotConnected if device is offline',
      () async {
        setUpMockDeviceIsNotConnected();
        final trackerResult = await trackerRepository.get();
        expect(trackerResult, equals(left(Failure.isNotConnected())));
      },
    );
  });

  group(
    'Device is connected | ',
    () {
      void setUpMockDeviceIsConnected() {
        when(mockNetworkInfo!).calls(#isConnected).thenAnswer((_) async => true);
      }

      void setUpMockTrackerDataSourceSuccess() {
        when(mockTrackerDataSource!).calls(#get).thenAnswer((_) async => trackerDataEntityMocked);
      }

      void setUpMockTrackerDataSourceFailure() {
        when(mockTrackerDataSource!).calls(#get).thenThrow(ServerException());
      }

      test(
        'Should verify if result is a Right (Tracker entity) when device is online and datasource is success',
        () async {
          setUpMockDeviceIsConnected();
          setUpMockTrackerDataSourceSuccess();
          final trackerResult = await trackerRepository.get();
          expect(trackerResult, isA<Right>());
        },
      );

      test(
        'Should return a Tracker (entity) when device is online and datasource is success',
        () async {
          setUpMockDeviceIsConnected();
          setUpMockTrackerDataSourceSuccess();
          final trackerResult = await trackerRepository.get();
          expect(trackerResult, equals(right(trackerDataEntityMocked)));
        },
      );

      test(
        'Should verify if return is a Left (Failure) when device is online and datasource is ServerException',
        () async {
          setUpMockDeviceIsConnected();
          setUpMockTrackerDataSourceFailure();
          final trackerResult = await trackerRepository.get();
          expect(trackerResult, isA<Left>());
        },
      );

      test(
        'Should return a Failure.serverError when device is online and datasource is ServerException',
        () async {
          setUpMockDeviceIsConnected();
          setUpMockTrackerDataSourceFailure();
          final trackerResult = await trackerRepository.get();
          expect(trackerResult, equals(left(Failure.serverError())));
        },
      );
    },
  );
}
