// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'geopoint.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

GeoPoint _$GeoPointFromJson(Map<String, dynamic> json) {
  return _GeoPoint.fromJson(json);
}

/// @nodoc
class _$GeoPointTearOff {
  const _$GeoPointTearOff();

  _GeoPoint call(
      {@JsonKey(name: 'latitude') double? latitude,
      @JsonKey(name: 'longitude') double? longitude}) {
    return _GeoPoint(
      latitude: latitude,
      longitude: longitude,
    );
  }

  GeoPoint fromJson(Map<String, Object> json) {
    return GeoPoint.fromJson(json);
  }
}

/// @nodoc
const $GeoPoint = _$GeoPointTearOff();

/// @nodoc
mixin _$GeoPoint {
  @JsonKey(name: 'latitude')
  double? get latitude => throw _privateConstructorUsedError;
  @JsonKey(name: 'longitude')
  double? get longitude => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GeoPointCopyWith<GeoPoint> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GeoPointCopyWith<$Res> {
  factory $GeoPointCopyWith(GeoPoint value, $Res Function(GeoPoint) then) =
      _$GeoPointCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'latitude') double? latitude,
      @JsonKey(name: 'longitude') double? longitude});
}

/// @nodoc
class _$GeoPointCopyWithImpl<$Res> implements $GeoPointCopyWith<$Res> {
  _$GeoPointCopyWithImpl(this._value, this._then);

  final GeoPoint _value;
  // ignore: unused_field
  final $Res Function(GeoPoint) _then;

  @override
  $Res call({
    Object? latitude = freezed,
    Object? longitude = freezed,
  }) {
    return _then(_value.copyWith(
      latitude: latitude == freezed
          ? _value.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as double?,
      longitude: longitude == freezed
          ? _value.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as double?,
    ));
  }
}

/// @nodoc
abstract class _$GeoPointCopyWith<$Res> implements $GeoPointCopyWith<$Res> {
  factory _$GeoPointCopyWith(_GeoPoint value, $Res Function(_GeoPoint) then) =
      __$GeoPointCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'latitude') double? latitude,
      @JsonKey(name: 'longitude') double? longitude});
}

/// @nodoc
class __$GeoPointCopyWithImpl<$Res> extends _$GeoPointCopyWithImpl<$Res>
    implements _$GeoPointCopyWith<$Res> {
  __$GeoPointCopyWithImpl(_GeoPoint _value, $Res Function(_GeoPoint) _then)
      : super(_value, (v) => _then(v as _GeoPoint));

  @override
  _GeoPoint get _value => super._value as _GeoPoint;

  @override
  $Res call({
    Object? latitude = freezed,
    Object? longitude = freezed,
  }) {
    return _then(_GeoPoint(
      latitude: latitude == freezed
          ? _value.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as double?,
      longitude: longitude == freezed
          ? _value.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as double?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_GeoPoint with DiagnosticableTreeMixin implements _GeoPoint {
  _$_GeoPoint(
      {@JsonKey(name: 'latitude') this.latitude,
      @JsonKey(name: 'longitude') this.longitude});

  factory _$_GeoPoint.fromJson(Map<String, dynamic> json) =>
      _$_$_GeoPointFromJson(json);

  @override
  @JsonKey(name: 'latitude')
  final double? latitude;
  @override
  @JsonKey(name: 'longitude')
  final double? longitude;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'GeoPoint(latitude: $latitude, longitude: $longitude)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'GeoPoint'))
      ..add(DiagnosticsProperty('latitude', latitude))
      ..add(DiagnosticsProperty('longitude', longitude));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _GeoPoint &&
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
  _$GeoPointCopyWith<_GeoPoint> get copyWith =>
      __$GeoPointCopyWithImpl<_GeoPoint>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_GeoPointToJson(this);
  }
}

abstract class _GeoPoint implements GeoPoint {
  factory _GeoPoint(
      {@JsonKey(name: 'latitude') double? latitude,
      @JsonKey(name: 'longitude') double? longitude}) = _$_GeoPoint;

  factory _GeoPoint.fromJson(Map<String, dynamic> json) = _$_GeoPoint.fromJson;

  @override
  @JsonKey(name: 'latitude')
  double? get latitude => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'longitude')
  double? get longitude => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$GeoPointCopyWith<_GeoPoint> get copyWith =>
      throw _privateConstructorUsedError;
}
