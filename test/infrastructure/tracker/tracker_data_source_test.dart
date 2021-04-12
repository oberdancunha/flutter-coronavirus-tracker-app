import 'package:flutter_test/flutter_test.dart';
import 'package:http/http.dart';
import 'package:matcher/matcher.dart';
import 'package:mocktail/mocktail.dart';

import 'package:coronavirus_tracker_app/core/exceptions/server_exception.dart';
import 'package:coronavirus_tracker_app/infrastructure/tracker/tracker_data_source.dart';

import '../../data/json_reader.dart';

class MockClient extends Mock implements Client {}

void main() {
  MockClient? mockClient;
  late TrackerDataSource trackerDataSource;
  late Map<String, dynamic> trackerDataJsonMocked;
  late String trackerDataStringMocked;
  late String trackerDataMockedJsonFile;

  setUpAll(() {
    mockClient = MockClient();
    trackerDataSource = TrackerDataSource(mockClient);
    trackerDataMockedJsonFile = 'tracker_data_mocked.json';
    trackerDataJsonMocked = jsonReader(trackerDataMockedJsonFile)!;
    trackerDataStringMocked = jsonReaderToString(trackerDataMockedJsonFile);
  });

  // ignore: always_declare_return_types
  callWhenMockHttpGet() => when(mockClient!).calls(#get).withArgs(
        positional: [any],
        named: {
          #headers: any,
        },
      );

  group('Success request | ', () {
    void setUpMockClientSuccess() {
      callWhenMockHttpGet().thenAnswer(
        (_) async => Response(
          trackerDataStringMocked,
          200,
        ),
      );
    }

    test(
      'Should perform a GET request on a URL, with the header application/json, and status code 200',
      () async {
        setUpMockClientSuccess();
        await trackerDataSource.get();
        final uri = Uri.https(
          'coronavirus-tracker-api.herokuapp.com',
          '/v2/locations',
          {
            'source': 'jhu',
            'timelines': 'false',
          },
        );
        verify(mockClient!).called(#get).withArgs(
          positional: [uri],
          named: {
            #headers: {'content-Type': 'accept: application/json'},
          },
        ).times(1);
      },
    );

    test(
      'Should return the Tracker json when status code is 200 (success)',
      () async {
        setUpMockClientSuccess();
        final trackerData = await trackerDataSource.get();
        expect(
          trackerData,
          equals(trackerDataJsonMocked),
        );
      },
    );
  });

  group(
    'Request failure | ',
    () {
      void setUpMockClientFailure404() {
        callWhenMockHttpGet().thenAnswer(
          (_) async => Response(
            'The provided data-source was not found.',
            404,
          ),
        );
      }

      test(
        'Should throw a ServerException when the response is different than 200',
        () async {
          setUpMockClientFailure404();
          final dataSourceCall = trackerDataSource.get;
          expect(
            dataSourceCall,
            throwsA(const TypeMatcher<ServerException>()),
          );
        },
      );
    },
  );
}
