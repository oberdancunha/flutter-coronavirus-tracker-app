import 'package:dartz/dartz.dart';

import '../../domain/core/failures.dart';
import 'tracker.dart';

abstract class ITrackerRepository {
  Future<Either<Failure, Tracker>> get();
}
