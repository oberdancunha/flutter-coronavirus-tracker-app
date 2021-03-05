import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kt_dart/kt.dart';

import 'contamination.dart';
import 'location.dart';

part 'tracker.freezed.dart';

@freezed
class Tracker with _$Tracker {
  const Tracker._();

  const factory Tracker({
    required Contamination contamination,
    required KtList<Location> locations,
  }) = _Tracker;
}
