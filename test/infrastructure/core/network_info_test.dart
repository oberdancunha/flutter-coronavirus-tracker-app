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

  void callWhenMockCheckConnectivity(ConnectivityResult connectivityResult) =>
      when(mockConnectivity!).calls(#checkConnectivity).thenAnswer(
            (_) async => connectivityResult,
          );

  test(
    'Should check if the connection is online (WIFI)',
    () async {
      callWhenMockCheckConnectivity(ConnectivityResult.wifi);
      final isConnected = await networkInfo.isConnected;
      expect(isConnected, isTrue);
    },
  );

  test(
    'Should check if the connection is offline',
    () async {
      callWhenMockCheckConnectivity(ConnectivityResult.none);
      final isConnected = await networkInfo.isConnected;
      expect(isConnected, isFalse);
    },
  );
}
