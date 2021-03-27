// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'tracker_presentation_classes.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$ContaminationPrimitiveTearOff {
  const _$ContaminationPrimitiveTearOff();

  _ContaminationPrimitive call(
      {required String confirmed,
      required String deaths,
      required String recovered,
      required DateTime lastUpdated}) {
    return _ContaminationPrimitive(
      confirmed: confirmed,
      deaths: deaths,
      recovered: recovered,
      lastUpdated: lastUpdated,
    );
  }
}

/// @nodoc
const $ContaminationPrimitive = _$ContaminationPrimitiveTearOff();

/// @nodoc
mixin _$ContaminationPrimitive {
  String get confirmed => throw _privateConstructorUsedError;
  String get deaths => throw _privateConstructorUsedError;
  String get recovered => throw _privateConstructorUsedError;
  DateTime get lastUpdated => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ContaminationPrimitiveCopyWith<ContaminationPrimitive> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ContaminationPrimitiveCopyWith<$Res> {
  factory $ContaminationPrimitiveCopyWith(ContaminationPrimitive value,
          $Res Function(ContaminationPrimitive) then) =
      _$ContaminationPrimitiveCopyWithImpl<$Res>;
  $Res call(
      {String confirmed,
      String deaths,
      String recovered,
      DateTime lastUpdated});
}

/// @nodoc
class _$ContaminationPrimitiveCopyWithImpl<$Res>
    implements $ContaminationPrimitiveCopyWith<$Res> {
  _$ContaminationPrimitiveCopyWithImpl(this._value, this._then);

  final ContaminationPrimitive _value;
  // ignore: unused_field
  final $Res Function(ContaminationPrimitive) _then;

  @override
  $Res call({
    Object? confirmed = freezed,
    Object? deaths = freezed,
    Object? recovered = freezed,
    Object? lastUpdated = freezed,
  }) {
    return _then(_value.copyWith(
      confirmed: confirmed == freezed ? _value.confirmed : confirmed as String,
      deaths: deaths == freezed ? _value.deaths : deaths as String,
      recovered: recovered == freezed ? _value.recovered : recovered as String,
      lastUpdated:
          lastUpdated == freezed ? _value.lastUpdated : lastUpdated as DateTime,
    ));
  }
}

/// @nodoc
abstract class _$ContaminationPrimitiveCopyWith<$Res>
    implements $ContaminationPrimitiveCopyWith<$Res> {
  factory _$ContaminationPrimitiveCopyWith(_ContaminationPrimitive value,
          $Res Function(_ContaminationPrimitive) then) =
      __$ContaminationPrimitiveCopyWithImpl<$Res>;
  @override
  $Res call(
      {String confirmed,
      String deaths,
      String recovered,
      DateTime lastUpdated});
}

/// @nodoc
class __$ContaminationPrimitiveCopyWithImpl<$Res>
    extends _$ContaminationPrimitiveCopyWithImpl<$Res>
    implements _$ContaminationPrimitiveCopyWith<$Res> {
  __$ContaminationPrimitiveCopyWithImpl(_ContaminationPrimitive _value,
      $Res Function(_ContaminationPrimitive) _then)
      : super(_value, (v) => _then(v as _ContaminationPrimitive));

  @override
  _ContaminationPrimitive get _value => super._value as _ContaminationPrimitive;

  @override
  $Res call({
    Object? confirmed = freezed,
    Object? deaths = freezed,
    Object? recovered = freezed,
    Object? lastUpdated = freezed,
  }) {
    return _then(_ContaminationPrimitive(
      confirmed: confirmed == freezed ? _value.confirmed : confirmed as String,
      deaths: deaths == freezed ? _value.deaths : deaths as String,
      recovered: recovered == freezed ? _value.recovered : recovered as String,
      lastUpdated:
          lastUpdated == freezed ? _value.lastUpdated : lastUpdated as DateTime,
    ));
  }
}

/// @nodoc
class _$_ContaminationPrimitive extends _ContaminationPrimitive {
  const _$_ContaminationPrimitive(
      {required this.confirmed,
      required this.deaths,
      required this.recovered,
      required this.lastUpdated})
      : super._();

  @override
  final String confirmed;
  @override
  final String deaths;
  @override
  final String recovered;
  @override
  final DateTime lastUpdated;

  @override
  String toString() {
    return 'ContaminationPrimitive(confirmed: $confirmed, deaths: $deaths, recovered: $recovered, lastUpdated: $lastUpdated)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ContaminationPrimitive &&
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
  _$ContaminationPrimitiveCopyWith<_ContaminationPrimitive> get copyWith =>
      __$ContaminationPrimitiveCopyWithImpl<_ContaminationPrimitive>(
          this, _$identity);
}

abstract class _ContaminationPrimitive extends ContaminationPrimitive {
  const _ContaminationPrimitive._() : super._();
  const factory _ContaminationPrimitive(
      {required String confirmed,
      required String deaths,
      required String recovered,
      required DateTime lastUpdated}) = _$_ContaminationPrimitive;

  @override
  String get confirmed => throw _privateConstructorUsedError;
  @override
  String get deaths => throw _privateConstructorUsedError;
  @override
  String get recovered => throw _privateConstructorUsedError;
  @override
  DateTime get lastUpdated => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$ContaminationPrimitiveCopyWith<_ContaminationPrimitive> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$LocationPrimitiveTearOff {
  const _$LocationPrimitiveTearOff();

  _LocationPrimitive call(
      {required int id,
      required String country,
      required String countryCode,
      required String countryPopulation,
      required double latitude,
      required double longitude,
      required List<ContaminationPrimitive> contaminations}) {
    return _LocationPrimitive(
      id: id,
      country: country,
      countryCode: countryCode,
      countryPopulation: countryPopulation,
      latitude: latitude,
      longitude: longitude,
      contaminations: contaminations,
    );
  }
}

/// @nodoc
const $LocationPrimitive = _$LocationPrimitiveTearOff();

/// @nodoc
mixin _$LocationPrimitive {
  int get id => throw _privateConstructorUsedError;
  String get country => throw _privateConstructorUsedError;
  String get countryCode => throw _privateConstructorUsedError;
  String get countryPopulation => throw _privateConstructorUsedError;
  double get latitude => throw _privateConstructorUsedError;
  double get longitude => throw _privateConstructorUsedError;
  List<ContaminationPrimitive> get contaminations =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $LocationPrimitiveCopyWith<LocationPrimitive> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LocationPrimitiveCopyWith<$Res> {
  factory $LocationPrimitiveCopyWith(
          LocationPrimitive value, $Res Function(LocationPrimitive) then) =
      _$LocationPrimitiveCopyWithImpl<$Res>;
  $Res call(
      {int id,
      String country,
      String countryCode,
      String countryPopulation,
      double latitude,
      double longitude,
      List<ContaminationPrimitive> contaminations});
}

/// @nodoc
class _$LocationPrimitiveCopyWithImpl<$Res>
    implements $LocationPrimitiveCopyWith<$Res> {
  _$LocationPrimitiveCopyWithImpl(this._value, this._then);

  final LocationPrimitive _value;
  // ignore: unused_field
  final $Res Function(LocationPrimitive) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? country = freezed,
    Object? countryCode = freezed,
    Object? countryPopulation = freezed,
    Object? latitude = freezed,
    Object? longitude = freezed,
    Object? contaminations = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed ? _value.id : id as int,
      country: country == freezed ? _value.country : country as String,
      countryCode:
          countryCode == freezed ? _value.countryCode : countryCode as String,
      countryPopulation: countryPopulation == freezed
          ? _value.countryPopulation
          : countryPopulation as String,
      latitude: latitude == freezed ? _value.latitude : latitude as double,
      longitude: longitude == freezed ? _value.longitude : longitude as double,
      contaminations: contaminations == freezed
          ? _value.contaminations
          : contaminations as List<ContaminationPrimitive>,
    ));
  }
}

/// @nodoc
abstract class _$LocationPrimitiveCopyWith<$Res>
    implements $LocationPrimitiveCopyWith<$Res> {
  factory _$LocationPrimitiveCopyWith(
          _LocationPrimitive value, $Res Function(_LocationPrimitive) then) =
      __$LocationPrimitiveCopyWithImpl<$Res>;
  @override
  $Res call(
      {int id,
      String country,
      String countryCode,
      String countryPopulation,
      double latitude,
      double longitude,
      List<ContaminationPrimitive> contaminations});
}

/// @nodoc
class __$LocationPrimitiveCopyWithImpl<$Res>
    extends _$LocationPrimitiveCopyWithImpl<$Res>
    implements _$LocationPrimitiveCopyWith<$Res> {
  __$LocationPrimitiveCopyWithImpl(
      _LocationPrimitive _value, $Res Function(_LocationPrimitive) _then)
      : super(_value, (v) => _then(v as _LocationPrimitive));

  @override
  _LocationPrimitive get _value => super._value as _LocationPrimitive;

  @override
  $Res call({
    Object? id = freezed,
    Object? country = freezed,
    Object? countryCode = freezed,
    Object? countryPopulation = freezed,
    Object? latitude = freezed,
    Object? longitude = freezed,
    Object? contaminations = freezed,
  }) {
    return _then(_LocationPrimitive(
      id: id == freezed ? _value.id : id as int,
      country: country == freezed ? _value.country : country as String,
      countryCode:
          countryCode == freezed ? _value.countryCode : countryCode as String,
      countryPopulation: countryPopulation == freezed
          ? _value.countryPopulation
          : countryPopulation as String,
      latitude: latitude == freezed ? _value.latitude : latitude as double,
      longitude: longitude == freezed ? _value.longitude : longitude as double,
      contaminations: contaminations == freezed
          ? _value.contaminations
          : contaminations as List<ContaminationPrimitive>,
    ));
  }
}

/// @nodoc
class _$_LocationPrimitive extends _LocationPrimitive {
  const _$_LocationPrimitive(
      {required this.id,
      required this.country,
      required this.countryCode,
      required this.countryPopulation,
      required this.latitude,
      required this.longitude,
      required this.contaminations})
      : super._();

  @override
  final int id;
  @override
  final String country;
  @override
  final String countryCode;
  @override
  final String countryPopulation;
  @override
  final double latitude;
  @override
  final double longitude;
  @override
  final List<ContaminationPrimitive> contaminations;

  @override
  String toString() {
    return 'LocationPrimitive(id: $id, country: $country, countryCode: $countryCode, countryPopulation: $countryPopulation, latitude: $latitude, longitude: $longitude, contaminations: $contaminations)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _LocationPrimitive &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.country, country) ||
                const DeepCollectionEquality()
                    .equals(other.country, country)) &&
            (identical(other.countryCode, countryCode) ||
                const DeepCollectionEquality()
                    .equals(other.countryCode, countryCode)) &&
            (identical(other.countryPopulation, countryPopulation) ||
                const DeepCollectionEquality()
                    .equals(other.countryPopulation, countryPopulation)) &&
            (identical(other.latitude, latitude) ||
                const DeepCollectionEquality()
                    .equals(other.latitude, latitude)) &&
            (identical(other.longitude, longitude) ||
                const DeepCollectionEquality()
                    .equals(other.longitude, longitude)) &&
            (identical(other.contaminations, contaminations) ||
                const DeepCollectionEquality()
                    .equals(other.contaminations, contaminations)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(country) ^
      const DeepCollectionEquality().hash(countryCode) ^
      const DeepCollectionEquality().hash(countryPopulation) ^
      const DeepCollectionEquality().hash(latitude) ^
      const DeepCollectionEquality().hash(longitude) ^
      const DeepCollectionEquality().hash(contaminations);

  @JsonKey(ignore: true)
  @override
  _$LocationPrimitiveCopyWith<_LocationPrimitive> get copyWith =>
      __$LocationPrimitiveCopyWithImpl<_LocationPrimitive>(this, _$identity);
}

abstract class _LocationPrimitive extends LocationPrimitive {
  const _LocationPrimitive._() : super._();
  const factory _LocationPrimitive(
          {required int id,
          required String country,
          required String countryCode,
          required String countryPopulation,
          required double latitude,
          required double longitude,
          required List<ContaminationPrimitive> contaminations}) =
      _$_LocationPrimitive;

  @override
  int get id => throw _privateConstructorUsedError;
  @override
  String get country => throw _privateConstructorUsedError;
  @override
  String get countryCode => throw _privateConstructorUsedError;
  @override
  String get countryPopulation => throw _privateConstructorUsedError;
  @override
  double get latitude => throw _privateConstructorUsedError;
  @override
  double get longitude => throw _privateConstructorUsedError;
  @override
  List<ContaminationPrimitive> get contaminations =>
      throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$LocationPrimitiveCopyWith<_LocationPrimitive> get copyWith =>
      throw _privateConstructorUsedError;
}
