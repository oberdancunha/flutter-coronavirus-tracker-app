// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'location.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$LocationTearOff {
  const _$LocationTearOff();

  _Location call(
      {required int id,
      required String country,
      required String countryCode,
      required PopulationValue countryPopulation,
      required double latitude,
      required double longitude,
      required KtList<Contamination> contaminations}) {
    return _Location(
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
const $Location = _$LocationTearOff();

/// @nodoc
mixin _$Location {
  int get id => throw _privateConstructorUsedError;
  String get country => throw _privateConstructorUsedError;
  String get countryCode => throw _privateConstructorUsedError;
  PopulationValue get countryPopulation => throw _privateConstructorUsedError;
  double get latitude => throw _privateConstructorUsedError;
  double get longitude => throw _privateConstructorUsedError;
  KtList<Contamination> get contaminations =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $LocationCopyWith<Location> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LocationCopyWith<$Res> {
  factory $LocationCopyWith(Location value, $Res Function(Location) then) =
      _$LocationCopyWithImpl<$Res>;
  $Res call(
      {int id,
      String country,
      String countryCode,
      PopulationValue countryPopulation,
      double latitude,
      double longitude,
      KtList<Contamination> contaminations});
}

/// @nodoc
class _$LocationCopyWithImpl<$Res> implements $LocationCopyWith<$Res> {
  _$LocationCopyWithImpl(this._value, this._then);

  final Location _value;
  // ignore: unused_field
  final $Res Function(Location) _then;

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
          : countryPopulation as PopulationValue,
      latitude: latitude == freezed ? _value.latitude : latitude as double,
      longitude: longitude == freezed ? _value.longitude : longitude as double,
      contaminations: contaminations == freezed
          ? _value.contaminations
          : contaminations as KtList<Contamination>,
    ));
  }
}

/// @nodoc
abstract class _$LocationCopyWith<$Res> implements $LocationCopyWith<$Res> {
  factory _$LocationCopyWith(_Location value, $Res Function(_Location) then) =
      __$LocationCopyWithImpl<$Res>;
  @override
  $Res call(
      {int id,
      String country,
      String countryCode,
      PopulationValue countryPopulation,
      double latitude,
      double longitude,
      KtList<Contamination> contaminations});
}

/// @nodoc
class __$LocationCopyWithImpl<$Res> extends _$LocationCopyWithImpl<$Res>
    implements _$LocationCopyWith<$Res> {
  __$LocationCopyWithImpl(_Location _value, $Res Function(_Location) _then)
      : super(_value, (v) => _then(v as _Location));

  @override
  _Location get _value => super._value as _Location;

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
    return _then(_Location(
      id: id == freezed ? _value.id : id as int,
      country: country == freezed ? _value.country : country as String,
      countryCode:
          countryCode == freezed ? _value.countryCode : countryCode as String,
      countryPopulation: countryPopulation == freezed
          ? _value.countryPopulation
          : countryPopulation as PopulationValue,
      latitude: latitude == freezed ? _value.latitude : latitude as double,
      longitude: longitude == freezed ? _value.longitude : longitude as double,
      contaminations: contaminations == freezed
          ? _value.contaminations
          : contaminations as KtList<Contamination>,
    ));
  }
}

/// @nodoc
class _$_Location extends _Location {
  const _$_Location(
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
  final PopulationValue countryPopulation;
  @override
  final double latitude;
  @override
  final double longitude;
  @override
  final KtList<Contamination> contaminations;

  @override
  String toString() {
    return 'Location(id: $id, country: $country, countryCode: $countryCode, countryPopulation: $countryPopulation, latitude: $latitude, longitude: $longitude, contaminations: $contaminations)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Location &&
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
  _$LocationCopyWith<_Location> get copyWith =>
      __$LocationCopyWithImpl<_Location>(this, _$identity);
}

abstract class _Location extends Location {
  const _Location._() : super._();
  const factory _Location(
      {required int id,
      required String country,
      required String countryCode,
      required PopulationValue countryPopulation,
      required double latitude,
      required double longitude,
      required KtList<Contamination> contaminations}) = _$_Location;

  @override
  int get id => throw _privateConstructorUsedError;
  @override
  String get country => throw _privateConstructorUsedError;
  @override
  String get countryCode => throw _privateConstructorUsedError;
  @override
  PopulationValue get countryPopulation => throw _privateConstructorUsedError;
  @override
  double get latitude => throw _privateConstructorUsedError;
  @override
  double get longitude => throw _privateConstructorUsedError;
  @override
  KtList<Contamination> get contaminations =>
      throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$LocationCopyWith<_Location> get copyWith =>
      throw _privateConstructorUsedError;
}
