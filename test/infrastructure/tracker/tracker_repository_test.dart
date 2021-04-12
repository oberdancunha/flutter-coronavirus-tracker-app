import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

import 'package:coronavirus_tracker_app/core/exceptions/server_exception.dart';
import 'package:coronavirus_tracker_app/core/network/i_network_info.dart';
import 'package:coronavirus_tracker_app/domain/core/failures.dart';
import 'package:coronavirus_tracker_app/domain/tracker/i_tracker_data_source.dart';
import 'package:coronavirus_tracker_app/infrastructure/tracker/tracker_repository.dart';

import '../../data/json_reader.dart';
import '../../data/utils.dart';

class MockNetworkInfo extends Mock implements INetworkInfo {}

class MockTrackerDataSource extends Mock implements ITrackerDataSource {}

void main() {
  MockNetworkInfo? mockNetworkInfo;
  MockTrackerDataSource? mockTrackerDataSource;
  late TrackerRepository trackerRepository;
  late Map<String, dynamic> trackerDataJsonMocked;

  setUpAll(() {
    mockNetworkInfo = MockNetworkInfo();
    mockTrackerDataSource = MockTrackerDataSource();
    trackerRepository = TrackerRepository(
      networkInfo: mockNetworkInfo!,
      trackerDataSource: mockTrackerDataSource!,
    );
    trackerDataJsonMocked = jsonReader('tracker_data_mocked.json')!;
  });

  // ignore: always_declare_return_types
  callWhenMockNetworkIsConnected() => when(mockNetworkInfo!).calls(#isConnected);

  // ignore: always_declare_return_types
  callWhenMockNetworkGet() => when(mockTrackerDataSource!).calls(#get);

  group('Device is NOT connected | ', () {
    void setUpMockDeviceIsNotConnected() {
      callWhenMockNetworkIsConnected().thenAnswer((_) async => false);
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
        callWhenMockNetworkIsConnected().thenAnswer((_) async => true);
      }

      void setUpMockTrackerDataSourceSuccess() {
        callWhenMockNetworkGet().thenAnswer((_) async => trackerDataJsonMocked);
      }

      void setUpMockTrackerDataSourceFailure() {
        callWhenMockNetworkGet().thenThrow(ServerException());
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
          final trackerDataEntityMocked = getTrackerDataEntity();
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
