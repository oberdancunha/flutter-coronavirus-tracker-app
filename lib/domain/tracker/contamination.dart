import 'package:freezed_annotation/freezed_annotation.dart';

import 'tracker_value_objects.dart';

part 'contamination.freezed.dart';

@freezed
class Contamination with _$Contamination {
  const Contamination._();

  const factory Contamination({
    required PopulationValue confirmed,
    required PopulationValue deaths,
    required PopulationValue recovered,
    required DateValue lastUpdated,
  }) = _Contamination;
}
