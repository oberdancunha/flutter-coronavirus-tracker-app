// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'contamination.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$ContaminationTearOff {
  const _$ContaminationTearOff();

  _Contamination call(
      {required PopulationValue confirmed,
      required PopulationValue deaths,
      required PopulationValue recovered,
      required DateValue lastUpdated}) {
    return _Contamination(
      confirmed: confirmed,
      deaths: deaths,
      recovered: recovered,
      lastUpdated: lastUpdated,
    );
  }
}

/// @nodoc
const $Contamination = _$ContaminationTearOff();

/// @nodoc
mixin _$Contamination {
  PopulationValue get confirmed => throw _privateConstructorUsedError;
  PopulationValue get deaths => throw _privateConstructorUsedError;
  PopulationValue get recovered => throw _privateConstructorUsedError;
  DateValue get lastUpdated => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ContaminationCopyWith<Contamination> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ContaminationCopyWith<$Res> {
  factory $ContaminationCopyWith(
          Contamination value, $Res Function(Contamination) then) =
      _$ContaminationCopyWithImpl<$Res>;
  $Res call(
      {PopulationValue confirmed,
      PopulationValue deaths,
      PopulationValue recovered,
      DateValue lastUpdated});
}

/// @nodoc
class _$ContaminationCopyWithImpl<$Res>
    implements $ContaminationCopyWith<$Res> {
  _$ContaminationCopyWithImpl(this._value, this._then);

  final Contamination _value;
  // ignore: unused_field
  final $Res Function(Contamination) _then;

  @override
  $Res call({
    Object? confirmed = freezed,
    Object? deaths = freezed,
    Object? recovered = freezed,
    Object? lastUpdated = freezed,
  }) {
    return _then(_value.copyWith(
      confirmed: confirmed == freezed
          ? _value.confirmed
          : confirmed as PopulationValue,
      deaths: deaths == freezed ? _value.deaths : deaths as PopulationValue,
      recovered: recovered == freezed
          ? _value.recovered
          : recovered as PopulationValue,
      lastUpdated: lastUpdated == freezed
          ? _value.lastUpdated
          : lastUpdated as DateValue,
    ));
  }
}

/// @nodoc
abstract class _$ContaminationCopyWith<$Res>
    implements $ContaminationCopyWith<$Res> {
  factory _$ContaminationCopyWith(
          _Contamination value, $Res Function(_Contamination) then) =
      __$ContaminationCopyWithImpl<$Res>;
  @override
  $Res call(
      {PopulationValue confirmed,
      PopulationValue deaths,
      PopulationValue recovered,
      DateValue lastUpdated});
}

/// @nodoc
class __$ContaminationCopyWithImpl<$Res>
    extends _$ContaminationCopyWithImpl<$Res>
    implements _$ContaminationCopyWith<$Res> {
  __$ContaminationCopyWithImpl(
      _Contamination _value, $Res Function(_Contamination) _then)
      : super(_value, (v) => _then(v as _Contamination));

  @override
  _Contamination get _value => super._value as _Contamination;

  @override
  $Res call({
    Object? confirmed = freezed,
    Object? deaths = freezed,
    Object? recovered = freezed,
    Object? lastUpdated = freezed,
  }) {
    return _then(_Contamination(
      confirmed: confirmed == freezed
          ? _value.confirmed
          : confirmed as PopulationValue,
      deaths: deaths == freezed ? _value.deaths : deaths as PopulationValue,
      recovered: recovered == freezed
          ? _value.recovered
          : recovered as PopulationValue,
      lastUpdated: lastUpdated == freezed
          ? _value.lastUpdated
          : lastUpdated as DateValue,
    ));
  }
}

/// @nodoc
class _$_Contamination extends _Contamination {
  const _$_Contamination(
      {required this.confirmed,
      required this.deaths,
      required this.recovered,
      required this.lastUpdated})
      : super._();

  @override
  final PopulationValue confirmed;
  @override
  final PopulationValue deaths;
  @override
  final PopulationValue recovered;
  @override
  final DateValue lastUpdated;

  @override
  String toString() {
    return 'Contamination(confirmed: $confirmed, deaths: $deaths, recovered: $recovered, lastUpdated: $lastUpdated)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Contamination &&
            (identical(other.confirmed, confirmed) ||
                const DeepCollectionEquality()
                    .equals(other.confirmed, confirmed)) &&
            (identical(other.deaths, deaths) ||
                const DeepCollectionEquality().equals(other.deaths, deaths)) &&
            (identical(other.recovered, recovered) ||
                const DeepCollectionEquality()
                    .equals(other.recovered, recovered)) &&
            (identical(other.lastUpdated, lastUpdated) ||
                const DeepCollectionEquality()
                    .equals(other.lastUpdated, lastUpdated)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(confirmed) ^
      const DeepCollectionEquality().hash(deaths) ^
      const DeepCollectionEquality().hash(recovered) ^
      const DeepCollectionEquality().hash(lastUpdated);

  @JsonKey(ignore: true)
  @override
  _$ContaminationCopyWith<_Contamination> get copyWith =>
      __$ContaminationCopyWithImpl<_Contamination>(this, _$identity);
}

abstract class _Contamination extends Contamination {
  const _Contamination._() : super._();
  const factory _Contamination(
      {required PopulationValue confirmed,
      required PopulationValue deaths,
      required PopulationValue recovered,
      required DateValue lastUpdated}) = _$_Contamination;

  @override
  PopulationValue get confirmed => throw _privateConstructorUsedError;
  @override
  PopulationValue get deaths => throw _privateConstructorUsedError;
  @override
  PopulationValue get recovered => throw _privateConstructorUsedError;
  @override
  DateValue get lastUpdated => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$ContaminationCopyWith<_Contamination> get copyWith =>
      throw _privateConstructorUsedError;
}
