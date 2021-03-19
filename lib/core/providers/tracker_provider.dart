import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../domain/tracker/i_tracker_data_source.dart';
import '../../domain/tracker/i_tracker_repository.dart';
import '../../infrastructure/tracker/tracker_data_source.dart';
import '../../infrastructure/tracker/tracker_repository.dart';
import 'app_provider.dart';

final trackerDataSourceProvider = Provider<ITrackerDataSource>(
  (ref) => TrackerDataSource(ref.read(httpClientProvider)),
);
final trackerRepositoryProvider = Provider<ITrackerRepository>(
  (ref) => TrackerRepository(
    networkInfo: ref.read(networkInfoProvider),
    trackerDataSource: ref.read(trackerDataSourceProvider),
  ),
);
