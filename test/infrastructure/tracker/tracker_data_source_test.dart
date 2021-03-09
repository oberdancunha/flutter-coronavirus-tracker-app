import 'package:coronavirusTrackerApp/core/exceptions/server_exception.dart';
import 'package:coronavirusTrackerApp/domain/tracker/tracker.dart';
import 'package:coronavirusTrackerApp/infrastructure/tracker/tracker_data_source.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:http/http.dart';
import 'package:matcher/matcher.dart';
import 'package:mocktail/mocktail.dart';

import '../../data/json_reader.dart';
import '../../data/utils.dart';

class MockClient extends Mock implements Client {}

void main() {
  MockClient? mockClient;
  late TrackerDataSource trackerDataSource;
  String? trackerDataJsonMocked;
  Tracker? trackerDataEntityMocked;

  setUp(() {
    mockClient = MockClient();
    trackerDataSource = TrackerDataSource(mockClient);
    trackerDataJsonMocked = jsonReaderToString('tracker_data_mocked.json');
    trackerDataEntityMocked = getTrackerDataEntity();
  });

  group('Success request | ', () {
    void setUpMockClientSuccess() {
      when(mockClient!).calls(#get).withArgs(
        positional: [any],
        named: {
          #headers: any,
        },
      ).thenAnswer(
        (_) async => Response(
          trackerDataJsonMocked!,
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
      'Should return the Tracker (entity) when status code is 200 (success)',
      () async {
        setUpMockClientSuccess();
        final trackerData = await trackerDataSource.get();
        expect(
          trackerData,
          equals(trackerDataEntityMocked),
        );
      },
    );
  });

  group(
    'Request failure',
    () {
      void setUpMockClientFailure404() {
        when(mockClient!).calls(#get).withArgs(
          positional: [any],
          named: {
            #headers: any,
          },
        ).thenAnswer(
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
            () => dataSourceCall(),
            throwsA(TypeMatcher<ServerException>()),
          );
        },
      );
    },
  );
}
