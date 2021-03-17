import 'package:connectivity/connectivity.dart';
import 'package:coronavirus_tracker_app/infrastructure/core/network_info.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

class MockConnectivity extends Mock implements Connectivity {}

void main() {
  MockConnectivity? mockConnectivity;
  late NetworkInfo networkInfo;

  setUpAll(() {
    mockConnectivity = MockConnectivity();
    networkInfo = NetworkInfo(mockConnectivity!);
  });

  test(
    'Should connection is online (WIFI)',
    () async {
      when(mockConnectivity!)
          .calls(#checkConnectivity)
          .thenAnswer((_) async => ConnectivityResult.wifi);
      final isConnected = await networkInfo.isConnected;
      expect(isConnected, isTrue);
    },
  );

  test(
    'Should connection is offline',
    () async {
      when(mockConnectivity!)
          .calls(#checkConnectivity)
          .thenAnswer((_) async => ConnectivityResult.none);
      final isConnected = await networkInfo.isConnected;
      expect(isConnected, isFalse);
    },
  );
}
