import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../core/providers/tracker_provider.dart';
import '../../domain/tracker/tracker.dart';

final trackerApplicationGetProvider = FutureProvider<Tracker>((ref) async {
  final trackerRepository = ref.read(trackerRepositoryProvider);
  final trackerResult = await trackerRepository.get();

  return trackerResult.fold(
    (failure) => throw failure,
    (tracker) => tracker,
  );
});
