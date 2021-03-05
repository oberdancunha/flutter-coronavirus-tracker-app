// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'tracker.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$TrackerTearOff {
  const _$TrackerTearOff();

  _Tracker call(
      {required Contamination contamination,
      required KtList<Location> locations}) {
    return _Tracker(
      contamination: contamination,
      locations: locations,
    );
  }
}

/// @nodoc
const $Tracker = _$TrackerTearOff();

/// @nodoc
mixin _$Tracker {
  Contamination get contamination => throw _privateConstructorUsedError;
  KtList<Location> get locations => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TrackerCopyWith<Tracker> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TrackerCopyWith<$Res> {
  factory $TrackerCopyWith(Tracker value, $Res Function(Tracker) then) =
      _$TrackerCopyWithImpl<$Res>;
  $Res call({Contamination contamination, KtList<Location> locations});

  $ContaminationCopyWith<$Res> get contamination;
}

/// @nodoc
class _$TrackerCopyWithImpl<$Res> implements $TrackerCopyWith<$Res> {
  _$TrackerCopyWithImpl(this._value, this._then);

  final Tracker _value;
  // ignore: unused_field
  final $Res Function(Tracker) _then;

  @override
  $Res call({
    Object? contamination = freezed,
    Object? locations = freezed,
  }) {
    return _then(_value.copyWith(
      contamination: contamination == freezed
          ? _value.contamination
          : contamination as Contamination,
      locations: locations == freezed
          ? _value.locations
          : locations as KtList<Location>,
    ));
  }

  @override
  $ContaminationCopyWith<$Res> get contamination {
    return $ContaminationCopyWith<$Res>(_value.contamination, (value) {
      return _then(_value.copyWith(contamination: value));
    });
  }
}

/// @nodoc
abstract class _$TrackerCopyWith<$Res> implements $TrackerCopyWith<$Res> {
  factory _$TrackerCopyWith(_Tracker value, $Res Function(_Tracker) then) =
      __$TrackerCopyWithImpl<$Res>;
  @override
  $Res call({Contamination contamination, KtList<Location> locations});

  @override
  $ContaminationCopyWith<$Res> get contamination;
}

/// @nodoc
class __$TrackerCopyWithImpl<$Res> extends _$TrackerCopyWithImpl<$Res>
    implements _$TrackerCopyWith<$Res> {
  __$TrackerCopyWithImpl(_Tracker _value, $Res Function(_Tracker) _then)
      : super(_value, (v) => _then(v as _Tracker));

  @override
  _Tracker get _value => super._value as _Tracker;

  @override
  $Res call({
    Object? contamination = freezed,
    Object? locations = freezed,
  }) {
    return _then(_Tracker(
      contamination: contamination == freezed
          ? _value.contamination
          : contamination as Contamination,
      locations: locations == freezed
          ? _value.locations
          : locations as KtList<Location>,
    ));
  }
}

/// @nodoc
class _$_Tracker extends _Tracker {
  const _$_Tracker({required this.contamination, required this.locations})
      : super._();

  @override
  final Contamination contamination;
  @override
  final KtList<Location> locations;

  @override
  String toString() {
    return 'Tracker(contamination: $contamination, locations: $locations)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Tracker &&
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
  _$TrackerCopyWith<_Tracker> get copyWith =>
      __$TrackerCopyWithImpl<_Tracker>(this, _$identity);
}

abstract class _Tracker extends Tracker {
  const _Tracker._() : super._();
  const factory _Tracker(
      {required Contamination contamination,
      required KtList<Location> locations}) = _$_Tracker;

  @override
  Contamination get contamination => throw _privateConstructorUsedError;
  @override
  KtList<Location> get locations => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$TrackerCopyWith<_Tracker> get copyWith =>
      throw _privateConstructorUsedError;
}
