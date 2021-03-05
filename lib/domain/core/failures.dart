import 'package:freezed_annotation/freezed_annotation.dart';

part 'failures.freezed.dart';

@freezed
class Failure with _$Failure {
  factory Failure.isNotConnected() = _IsNotConnected;
  factory Failure.serverError() = _ServerError;
}
