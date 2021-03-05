import 'package:connectivity/connectivity.dart';

import '../../core/network/i_network_info.dart';

class NetworkInfo implements INetworkInfo {
  final Connectivity connectivity;

  NetworkInfo(this.connectivity);

  @override
  Future<bool> get isConnected async {
    final connectivityResult = await (connectivity.checkConnectivity());
    final isConnected = connectivityResult != ConnectivityResult.none;

    return isConnected;
  }
}
