import 'package:connectivity/connectivity.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:http/http.dart';

import '../../infrastructure/core/network_info.dart';
import '../network/i_network_info.dart';

final httpClientProvider = Provider<Client>((ref) => Client());
final connectivityProvider = Provider<Connectivity>((ref) => Connectivity());
final networkInfoProvider = Provider<INetworkInfo>(
  (ref) => NetworkInfo(ref.read(connectivityProvider)),
);
