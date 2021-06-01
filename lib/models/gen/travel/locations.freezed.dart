// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'locations.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Locations _$LocationsFromJson(Map<String, dynamic> json) {
  return _Locations.fromJson(json);
}

/// @nodoc
class _$LocationsTearOff {
  const _$LocationsTearOff();

  _Locations call(
      {@JsonKey(name: 'name') String? name,
      @JsonKey(name: 'geopoint') Geopoint? geopoint}) {
    return _Locations(
      name: name,
      geopoint: geopoint,
    );
  }

  Locations fromJson(Map<String, Object> json) {
    return Locations.fromJson(json);
  }
}

/// @nodoc
const $Locations = _$LocationsTearOff();

/// @nodoc
mixin _$Locations {
  @JsonKey(name: 'name')
  String? get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'geopoint')
  Geopoint? get geopoint => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LocationsCopyWith<Locations> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LocationsCopyWith<$Res> {
  factory $LocationsCopyWith(Locations value, $Res Function(Locations) then) =
      _$LocationsCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'name') String? name,
      @JsonKey(name: 'geopoint') Geopoint? geopoint});

  $GeopointCopyWith<$Res>? get geopoint;
}

/// @nodoc
class _$LocationsCopyWithImpl<$Res> implements $LocationsCopyWith<$Res> {
  _$LocationsCopyWithImpl(this._value, this._then);

  final Locations _value;
  // ignore: unused_field
  final $Res Function(Locations) _then;

  @override
  $Res call({
    Object? name = freezed,
    Object? geopoint = freezed,
  }) {
    return _then(_value.copyWith(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      geopoint: geopoint == freezed
          ? _value.geopoint
          : geopoint // ignore: cast_nullable_to_non_nullable
              as Geopoint?,
    ));
  }

  @override
  $GeopointCopyWith<$Res>? get geopoint {
    if (_value.geopoint == null) {
      return null;
    }

    return $GeopointCopyWith<$Res>(_value.geopoint!, (value) {
      return _then(_value.copyWith(geopoint: value));
    });
  }
}

/// @nodoc
abstract class _$LocationsCopyWith<$Res> implements $LocationsCopyWith<$Res> {
  factory _$LocationsCopyWith(
          _Locations value, $Res Function(_Locations) then) =
      __$LocationsCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'name') String? name,
      @JsonKey(name: 'geopoint') Geopoint? geopoint});

  @override
  $GeopointCopyWith<$Res>? get geopoint;
}

/// @nodoc
class __$LocationsCopyWithImpl<$Res> extends _$LocationsCopyWithImpl<$Res>
    implements _$LocationsCopyWith<$Res> {
  __$LocationsCopyWithImpl(_Locations _value, $Res Function(_Locations) _then)
      : super(_value, (v) => _then(v as _Locations));

  @override
  _Locations get _value => super._value as _Locations;

  @override
  $Res call({
    Object? name = freezed,
    Object? geopoint = freezed,
  }) {
    return _then(_Locations(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      geopoint: geopoint == freezed
          ? _value.geopoint
          : geopoint // ignore: cast_nullable_to_non_nullable
              as Geopoint?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Locations with DiagnosticableTreeMixin implements _Locations {
  _$_Locations(
      {@JsonKey(name: 'name') this.name,
      @JsonKey(name: 'geopoint') this.geopoint});

  factory _$_Locations.fromJson(Map<String, dynamic> json) =>
      _$_$_LocationsFromJson(json);

  @override
  @JsonKey(name: 'name')
  final String? name;
  @override
  @JsonKey(name: 'geopoint')
  final Geopoint? geopoint;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Locations(name: $name, geopoint: $geopoint)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'Locations'))
      ..add(DiagnosticsProperty('name', name))
      ..add(DiagnosticsProperty('geopoint', geopoint));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Locations &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.geopoint, geopoint) ||
                const DeepCollectionEquality()
                    .equals(other.geopoint, geopoint)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(geopoint);

  @JsonKey(ignore: true)
  @override
  _$LocationsCopyWith<_Locations> get copyWith =>
      __$LocationsCopyWithImpl<_Locations>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_LocationsToJson(this);
  }
}

abstract class _Locations implements Locations {
  factory _Locations(
      {@JsonKey(name: 'name') String? name,
      @JsonKey(name: 'geopoint') Geopoint? geopoint}) = _$_Locations;

  factory _Locations.fromJson(Map<String, dynamic> json) =
      _$_Locations.fromJson;

  @override
  @JsonKey(name: 'name')
  String? get name => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'geopoint')
  Geopoint? get geopoint => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$LocationsCopyWith<_Locations> get copyWith =>
      throw _privateConstructorUsedError;
}
