import 'package:freezed_annotation/freezed_annotation.dart';

part 'contamination.freezed.dart';

@freezed
class Contamination with _$Contamination {
  const Contamination._();

  const factory Contamination({
    required int confirmed,
    required int deaths,
    required int recovered,
    required DateTime lastUpdated,
  }) = _Contamination;
}
