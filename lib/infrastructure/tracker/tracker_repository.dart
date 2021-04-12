import 'package:dartz/dartz.dart';

import '../../core/exceptions/server_exception.dart';
import '../../core/network/i_network_info.dart';
import '../../domain/core/failures.dart';
import '../../domain/tracker/i_tracker_data_source.dart';
import '../../domain/tracker/i_tracker_repository.dart';
import '../../domain/tracker/tracker.dart';
import 'tracker_dto.dart';

class TrackerRepository implements ITrackerRepository {
  final INetworkInfo networkInfo;
  final ITrackerDataSource trackerDataSource;

  TrackerRepository({
    required this.networkInfo,
    required this.trackerDataSource,
  });

  @override
  Future<Either<Failure, Tracker>> get() async {
    if (await networkInfo.isConnected) {
      try {
        final trackerResultBody = await trackerDataSource.get();
        final trackerResult = TrackerDto.fromApi(trackerResultBody).toDomain();

        return right(trackerResult);
      } on ServerException {
        return left(Failure.serverError());
      }
    } else {
      return left(Failure.isNotConnected());
    }
  }
}
