import 'tracker.dart';

abstract class ITrackerDataSource {
  Future<Tracker?> get();
}
