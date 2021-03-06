// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'geopoint.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Geopoint _$GeopointFromJson(Map<String, dynamic> json) {
  return _Geopoint.fromJson(json);
}

/// @nodoc
class _$GeopointTearOff {
  const _$GeopointTearOff();

  _Geopoint call(
      {@JsonKey(name: 'latitude') double latitude = 0.0,
      @JsonKey(name: 'longitude') double longitude = 0.0}) {
    return _Geopoint(
      latitude: latitude,
      longitude: longitude,
    );
  }

  Geopoint fromJson(Map<String, Object> json) {
    return Geopoint.fromJson(json);
  }
}

/// @nodoc
const $Geopoint = _$GeopointTearOff();

/// @nodoc
mixin _$Geopoint {
  @JsonKey(name: 'latitude')
  double get latitude => throw _privateConstructorUsedError;
  @JsonKey(name: 'longitude')
  double get longitude => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GeopointCopyWith<Geopoint> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GeopointCopyWith<$Res> {
  factory $GeopointCopyWith(Geopoint value, $Res Function(Geopoint) then) =
      _$GeopointCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'latitude') double latitude,
      @JsonKey(name: 'longitude') double longitude});
}

/// @nodoc
class _$GeopointCopyWithImpl<$Res> implements $GeopointCopyWith<$Res> {
  _$GeopointCopyWithImpl(this._value, this._then);

  final Geopoint _value;
  // ignore: unused_field
  final $Res Function(Geopoint) _then;

  @override
  $Res call({
    Object? latitude = freezed,
    Object? longitude = freezed,
  }) {
    return _then(_value.copyWith(
      latitude: latitude == freezed
          ? _value.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as double,
      longitude: longitude == freezed
          ? _value.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
abstract class _$GeopointCopyWith<$Res> implements $GeopointCopyWith<$Res> {
  factory _$GeopointCopyWith(_Geopoint value, $Res Function(_Geopoint) then) =
      __$GeopointCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'latitude') double latitude,
      @JsonKey(name: 'longitude') double longitude});
}

/// @nodoc
class __$GeopointCopyWithImpl<$Res> extends _$GeopointCopyWithImpl<$Res>
    implements _$GeopointCopyWith<$Res> {
  __$GeopointCopyWithImpl(_Geopoint _value, $Res Function(_Geopoint) _then)
      : super(_value, (v) => _then(v as _Geopoint));

  @override
  _Geopoint get _value => super._value as _Geopoint;

  @override
  $Res call({
    Object? latitude = freezed,
    Object? longitude = freezed,
  }) {
    return _then(_Geopoint(
      latitude: latitude == freezed
          ? _value.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as double,
      longitude: longitude == freezed
          ? _value.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Geopoint with DiagnosticableTreeMixin implements _Geopoint {
  _$_Geopoint(
      {@JsonKey(name: 'latitude') this.latitude = 0.0,
      @JsonKey(name: 'longitude') this.longitude = 0.0});

  factory _$_Geopoint.fromJson(Map<String, dynamic> json) =>
      _$_$_GeopointFromJson(json);

  @override
  @JsonKey(name: 'latitude')
  final double latitude;
  @override
  @JsonKey(name: 'longitude')
  final double longitude;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Geopoint(latitude: $latitude, longitude: $longitude)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'Geopoint'))
      ..add(DiagnosticsProperty('latitude', latitude))
      ..add(DiagnosticsProperty('longitude', longitude));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Geopoint &&
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
      const DeepCollectionEquality().hash(latitude) ^
      const DeepCollectionEquality().hash(longitude);

  @JsonKey(ignore: true)
  @override
  _$GeopointCopyWith<_Geopoint> get copyWith =>
      __$GeopointCopyWithImpl<_Geopoint>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_GeopointToJson(this);
  }
}

abstract class _Geopoint implements Geopoint {
  factory _Geopoint(
      {@JsonKey(name: 'latitude') double latitude,
      @JsonKey(name: 'longitude') double longitude}) = _$_Geopoint;

  factory _Geopoint.fromJson(Map<String, dynamic> json) = _$_Geopoint.fromJson;

  @override
  @JsonKey(name: 'latitude')
  double get latitude => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'longitude')
  double get longitude => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$GeopointCopyWith<_Geopoint> get copyWith =>
      throw _privateConstructorUsedError;
}
