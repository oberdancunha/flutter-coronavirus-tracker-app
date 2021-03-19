import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../core/providers/tracker_provider.dart';
import '../../domain/tracker/tracker.dart';

final trackerApplicationGetProvider =
    FutureProvider.autoDispose.family<Tracker, DateTime>((ref, time) async {
  final trackerRepository = ref.read(trackerRepositoryProvider);
  final trackerResult = await trackerRepository.get();
  ref.maintainState = true;

  return trackerResult.fold(
    (failure) => throw failure,
    (tracker) => tracker,
  );
});
