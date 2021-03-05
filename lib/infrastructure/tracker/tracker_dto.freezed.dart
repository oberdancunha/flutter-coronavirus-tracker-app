// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'tracker_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$TrackerDtoTearOff {
  const _$TrackerDtoTearOff();

  _TrackerDto call(
      {required ContaminationDto contamination,
      required List<LocationDto> locations}) {
    return _TrackerDto(
      contamination: contamination,
      locations: locations,
    );
  }
}

/// @nodoc
const $TrackerDto = _$TrackerDtoTearOff();

/// @nodoc
mixin _$TrackerDto {
  ContaminationDto get contamination => throw _privateConstructorUsedError;
  List<LocationDto> get locations => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TrackerDtoCopyWith<TrackerDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TrackerDtoCopyWith<$Res> {
  factory $TrackerDtoCopyWith(
          TrackerDto value, $Res Function(TrackerDto) then) =
      _$TrackerDtoCopyWithImpl<$Res>;
  $Res call({ContaminationDto contamination, List<LocationDto> locations});

  $ContaminationDtoCopyWith<$Res> get contamination;
}

/// @nodoc
class _$TrackerDtoCopyWithImpl<$Res> implements $TrackerDtoCopyWith<$Res> {
  _$TrackerDtoCopyWithImpl(this._value, this._then);

  final TrackerDto _value;
  // ignore: unused_field
  final $Res Function(TrackerDto) _then;

  @override
  $Res call({
    Object? contamination = freezed,
    Object? locations = freezed,
  }) {
    return _then(_value.copyWith(
      contamination: contamination == freezed
          ? _value.contamination
          : contamination as ContaminationDto,
      locations: locations == freezed
          ? _value.locations
          : locations as List<LocationDto>,
    ));
  }

  @override
  $ContaminationDtoCopyWith<$Res> get contamination {
    return $ContaminationDtoCopyWith<$Res>(_value.contamination, (value) {
      return _then(_value.copyWith(contamination: value));
    });
  }
}

/// @nodoc
abstract class _$TrackerDtoCopyWith<$Res> implements $TrackerDtoCopyWith<$Res> {
  factory _$TrackerDtoCopyWith(
          _TrackerDto value, $Res Function(_TrackerDto) then) =
      __$TrackerDtoCopyWithImpl<$Res>;
  @override
  $Res call({ContaminationDto contamination, List<LocationDto> locations});

  @override
  $ContaminationDtoCopyWith<$Res> get contamination;
}

/// @nodoc
class __$TrackerDtoCopyWithImpl<$Res> extends _$TrackerDtoCopyWithImpl<$Res>
    implements _$TrackerDtoCopyWith<$Res> {
  __$TrackerDtoCopyWithImpl(
      _TrackerDto _value, $Res Function(_TrackerDto) _then)
      : super(_value, (v) => _then(v as _TrackerDto));

  @override
  _TrackerDto get _value => super._value as _TrackerDto;

  @override
  $Res call({
    Object? contamination = freezed,
    Object? locations = freezed,
  }) {
    return _then(_TrackerDto(
      contamination: contamination == freezed
          ? _value.contamination
          : contamination as ContaminationDto,
      locations: locations == freezed
          ? _value.locations
          : locations as List<LocationDto>,
    ));
  }
}

/// @nodoc
class _$_TrackerDto extends _TrackerDto {
  const _$_TrackerDto({required this.contamination, required this.locations})
      : super._();

  @override
  final ContaminationDto contamination;
  @override
  final List<LocationDto> locations;

  @override
  String toString() {
    return 'TrackerDto(contamination: $contamination, locations: $locations)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _TrackerDto &&
            (identical(other.contamination, contamination) ||
                const DeepCollectionEquality()
                    .equals(other.contamination, contamination)) &&
            (identical(other.locations, locations) ||
                const DeepCollectionEquality()
                    .equals(other.locations, locations)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(contamination) ^
      const DeepCollectionEquality().hash(locations);

  @JsonKey(ignore: true)
  @override
  _$TrackerDtoCopyWith<_TrackerDto> get copyWith =>
      __$TrackerDtoCopyWithImpl<_TrackerDto>(this, _$identity);
}

abstract class _TrackerDto extends TrackerDto {
  const _TrackerDto._() : super._();
  const factory _TrackerDto(
      {required ContaminationDto contamination,
      required List<LocationDto> locations}) = _$_TrackerDto;

  @override
  ContaminationDto get contamination => throw _privateConstructorUsedError;
  @override
  List<LocationDto> get locations => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$TrackerDtoCopyWith<_TrackerDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$ContaminationDtoTearOff {
  const _$ContaminationDtoTearOff();

  _ContaminationDto call(
      {required int confirmed,
      required int deaths,
      required int recovered,
      required String lastUpdated}) {
    return _ContaminationDto(
      confirmed: confirmed,
      deaths: deaths,
      recovered: recovered,
      lastUpdated: lastUpdated,
    );
  }
}

/// @nodoc
const $ContaminationDto = _$ContaminationDtoTearOff();

/// @nodoc
mixin _$ContaminationDto {
  int get confirmed => throw _privateConstructorUsedError;
  int get deaths => throw _privateConstructorUsedError;
  int get recovered => throw _privateConstructorUsedError;
  String get lastUpdated => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ContaminationDtoCopyWith<ContaminationDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ContaminationDtoCopyWith<$Res> {
  factory $ContaminationDtoCopyWith(
          ContaminationDto value, $Res Function(ContaminationDto) then) =
      _$ContaminationDtoCopyWithImpl<$Res>;
  $Res call({int confirmed, int deaths, int recovered, String lastUpdated});
}

/// @nodoc
class _$ContaminationDtoCopyWithImpl<$Res>
    implements $ContaminationDtoCopyWith<$Res> {
  _$ContaminationDtoCopyWithImpl(this._value, this._then);

  final ContaminationDto _value;
  // ignore: unused_field
  final $Res Function(ContaminationDto) _then;

  @override
  $Res call({
    Object? confirmed = freezed,
    Object? deaths = freezed,
    Object? recovered = freezed,
    Object? lastUpdated = freezed,
  }) {
    return _then(_value.copyWith(
      confirmed: confirmed == freezed ? _value.confirmed : confirmed as int,
      deaths: deaths == freezed ? _value.deaths : deaths as int,
      recovered: recovered == freezed ? _value.recovered : recovered as int,
      lastUpdated:
          lastUpdated == freezed ? _value.lastUpdated : lastUpdated as String,
    ));
  }
}

/// @nodoc
abstract class _$ContaminationDtoCopyWith<$Res>
    implements $ContaminationDtoCopyWith<$Res> {
  factory _$ContaminationDtoCopyWith(
          _ContaminationDto value, $Res Function(_ContaminationDto) then) =
      __$ContaminationDtoCopyWithImpl<$Res>;
  @override
  $Res call({int confirmed, int deaths, int recovered, String lastUpdated});
}

/// @nodoc
class __$ContaminationDtoCopyWithImpl<$Res>
    extends _$ContaminationDtoCopyWithImpl<$Res>
    implements _$ContaminationDtoCopyWith<$Res> {
  __$ContaminationDtoCopyWithImpl(
      _ContaminationDto _value, $Res Function(_ContaminationDto) _then)
      : super(_value, (v) => _then(v as _ContaminationDto));

  @override
  _ContaminationDto get _value => super._value as _ContaminationDto;

  @override
  $Res call({
    Object? confirmed = freezed,
    Object? deaths = freezed,
    Object? recovered = freezed,
    Object? lastUpdated = freezed,
  }) {
    return _then(_ContaminationDto(
      confirmed: confirmed == freezed ? _value.confirmed : confirmed as int,
      deaths: deaths == freezed ? _value.deaths : deaths as int,
      recovered: recovered == freezed ? _value.recovered : recovered as int,
      lastUpdated:
          lastUpdated == freezed ? _value.lastUpdated : lastUpdated as String,
    ));
  }
}

/// @nodoc
class _$_ContaminationDto extends _ContaminationDto {
  const _$_ContaminationDto(
      {required this.confirmed,
      required this.deaths,
      required this.recovered,
      required this.lastUpdated})
      : super._();

  @override
  final int confirmed;
  @override
  final int deaths;
  @override
  final int recovered;
  @override
  final String lastUpdated;

  @override
  String toString() {
    return 'ContaminationDto(confirmed: $confirmed, deaths: $deaths, recovered: $recovered, lastUpdated: $lastUpdated)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ContaminationDto &&
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
  _$ContaminationDtoCopyWith<_ContaminationDto> get copyWith =>
      __$ContaminationDtoCopyWithImpl<_ContaminationDto>(this, _$identity);
}

abstract class _ContaminationDto extends ContaminationDto {
  const _ContaminationDto._() : super._();
  const factory _ContaminationDto(
      {required int confirmed,
      required int deaths,
      required int recovered,
      required String lastUpdated}) = _$_ContaminationDto;

  @override
  int get confirmed => throw _privateConstructorUsedError;
  @override
  int get deaths => throw _privateConstructorUsedError;
  @override
  int get recovered => throw _privateConstructorUsedError;
  @override
  String get lastUpdated => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$ContaminationDtoCopyWith<_ContaminationDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$LocationDtoTearOff {
  const _$LocationDtoTearOff();

  _LocationDto call(
      {required int id,
      required String country,
      required String countryCode,
      required List<ContaminationDto> contaminations,
      required int countryPopulation,
      required double latitude,
      required double longitude}) {
    return _LocationDto(
      id: id,
      country: country,
      countryCode: countryCode,
      contaminations: contaminations,
      countryPopulation: countryPopulation,
      latitude: latitude,
      longitude: longitude,
    );
  }
}

/// @nodoc
const $LocationDto = _$LocationDtoTearOff();

/// @nodoc
mixin _$LocationDto {
  int get id => throw _privateConstructorUsedError;
  String get country => throw _privateConstructorUsedError;
  String get countryCode => throw _privateConstructorUsedError;
  List<ContaminationDto> get contaminations =>
      throw _privateConstructorUsedError;
  int get countryPopulation => throw _privateConstructorUsedError;
  double get latitude => throw _privateConstructorUsedError;
  double get longitude => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $LocationDtoCopyWith<LocationDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LocationDtoCopyWith<$Res> {
  factory $LocationDtoCopyWith(
          LocationDto value, $Res Function(LocationDto) then) =
      _$LocationDtoCopyWithImpl<$Res>;
  $Res call(
      {int id,
      String country,
      String countryCode,
      List<ContaminationDto> contaminations,
      int countryPopulation,
      double latitude,
      double longitude});
}

/// @nodoc
class _$LocationDtoCopyWithImpl<$Res> implements $LocationDtoCopyWith<$Res> {
  _$LocationDtoCopyWithImpl(this._value, this._then);

  final LocationDto _value;
  // ignore: unused_field
  final $Res Function(LocationDto) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? country = freezed,
    Object? countryCode = freezed,
    Object? contaminations = freezed,
    Object? countryPopulation = freezed,
    Object? latitude = freezed,
    Object? longitude = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed ? _value.id : id as int,
      country: country == freezed ? _value.country : country as String,
      countryCode:
          countryCode == freezed ? _value.countryCode : countryCode as String,
      contaminations: contaminations == freezed
          ? _value.contaminations
          : contaminations as List<ContaminationDto>,
      countryPopulation: countryPopulation == freezed
          ? _value.countryPopulation
          : countryPopulation as int,
      latitude: latitude == freezed ? _value.latitude : latitude as double,
      longitude: longitude == freezed ? _value.longitude : longitude as double,
    ));
  }
}

/// @nodoc
abstract class _$LocationDtoCopyWith<$Res>
    implements $LocationDtoCopyWith<$Res> {
  factory _$LocationDtoCopyWith(
          _LocationDto value, $Res Function(_LocationDto) then) =
      __$LocationDtoCopyWithImpl<$Res>;
  @override
  $Res call(
      {int id,
      String country,
      String countryCode,
      List<ContaminationDto> contaminations,
      int countryPopulation,
      double latitude,
      double longitude});
}

/// @nodoc
class __$LocationDtoCopyWithImpl<$Res> extends _$LocationDtoCopyWithImpl<$Res>
    implements _$LocationDtoCopyWith<$Res> {
  __$LocationDtoCopyWithImpl(
      _LocationDto _value, $Res Function(_LocationDto) _then)
      : super(_value, (v) => _then(v as _LocationDto));

  @override
  _LocationDto get _value => super._value as _LocationDto;

  @override
  $Res call({
    Object? id = freezed,
    Object? country = freezed,
    Object? countryCode = freezed,
    Object? contaminations = freezed,
    Object? countryPopulation = freezed,
    Object? latitude = freezed,
    Object? longitude = freezed,
  }) {
    return _then(_LocationDto(
      id: id == freezed ? _value.id : id as int,
      country: country == freezed ? _value.country : country as String,
      countryCode:
          countryCode == freezed ? _value.countryCode : countryCode as String,
      contaminations: contaminations == freezed
          ? _value.contaminations
          : contaminations as List<ContaminationDto>,
      countryPopulation: countryPopulation == freezed
          ? _value.countryPopulation
          : countryPopulation as int,
      latitude: latitude == freezed ? _value.latitude : latitude as double,
      longitude: longitude == freezed ? _value.longitude : longitude as double,
    ));
  }
}

/// @nodoc
class _$_LocationDto extends _LocationDto {
  const _$_LocationDto(
      {required this.id,
      required this.country,
      required this.countryCode,
      required this.contaminations,
      required this.countryPopulation,
      required this.latitude,
      required this.longitude})
      : super._();

  @override
  final int id;
  @override
  final String country;
  @override
  final String countryCode;
  @override
  final List<ContaminationDto> contaminations;
  @override
  final int countryPopulation;
  @override
  final double latitude;
  @override
  final double longitude;

  @override
  String toString() {
    return 'LocationDto(id: $id, country: $country, countryCode: $countryCode, contaminations: $contaminations, countryPopulation: $countryPopulation, latitude: $latitude, longitude: $longitude)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _LocationDto &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.country, country) ||
                const DeepCollectionEquality()
                    .equals(other.country, country)) &&
            (identical(other.countryCode, countryCode) ||
                const DeepCollectionEquality()
                    .equals(other.countryCode, countryCode)) &&
            (identical(other.contaminations, contaminations) ||
                const DeepCollectionEquality()
                    .equals(other.contaminations, contaminations)) &&
            (identical(other.countryPopulation, countryPopulation) ||
                const DeepCollectionEquality()
                    .equals(other.countryPopulation, countryPopulation)) &&
            (identical(other.latitude, latitude) ||
                const DeepCollectionEquality()
                    .equals(other.latitude, latitude)) &&
            (identical(other.longitude, longitude) ||
                const DeepCollectionEquality()
                    .equals(other.longitude, longitude)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(country) ^
      const DeepCollectionEquality().hash(countryCode) ^
      const DeepCollectionEquality().hash(contaminations) ^
      const DeepCollectionEquality().hash(countryPopulation) ^
      const DeepCollectionEquality().hash(latitude) ^
      const DeepCollectionEquality().hash(longitude);

  @JsonKey(ignore: true)
  @override
  _$LocationDtoCopyWith<_LocationDto> get copyWith =>
      __$LocationDtoCopyWithImpl<_LocationDto>(this, _$identity);
}

abstract class _LocationDto extends LocationDto {
  const _LocationDto._() : super._();
  const factory _LocationDto(
      {required int id,
      required String country,
      required String countryCode,
      required List<ContaminationDto> contaminations,
      required int countryPopulation,
      required double latitude,
      required double longitude}) = _$_LocationDto;

  @override
  int get id => throw _privateConstructorUsedError;
  @override
  String get country => throw _privateConstructorUsedError;
  @override
  String get countryCode => throw _privateConstructorUsedError;
  @override
  List<ContaminationDto> get contaminations =>
      throw _privateConstructorUsedError;
  @override
  int get countryPopulation => throw _privateConstructorUsedError;
  @override
  double get latitude => throw _privateConstructorUsedError;
  @override
  double get longitude => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$LocationDtoCopyWith<_LocationDto> get copyWith =>
      throw _privateConstructorUsedError;
}
