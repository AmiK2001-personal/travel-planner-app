// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'route.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Route _$RouteFromJson(Map<String, dynamic> json) {
  return _Route.fromJson(json);
}

/// @nodoc
class _$RouteTearOff {
  const _$RouteTearOff();

  _Route call(
      {@JsonKey(name: 'from') Geopoint? from,
      @JsonKey(name: 'to') Geopoint? to}) {
    return _Route(
      from: from,
      to: to,
    );
  }

  Route fromJson(Map<String, Object> json) {
    return Route.fromJson(json);
  }
}

/// @nodoc
const $Route = _$RouteTearOff();

/// @nodoc
mixin _$Route {
  @JsonKey(name: 'from')
  Geopoint? get from => throw _privateConstructorUsedError;
  @JsonKey(name: 'to')
  Geopoint? get to => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RouteCopyWith<Route> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RouteCopyWith<$Res> {
  factory $RouteCopyWith(Route value, $Res Function(Route) then) =
      _$RouteCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'from') Geopoint? from,
      @JsonKey(name: 'to') Geopoint? to});

  $GeopointCopyWith<$Res>? get from;
  $GeopointCopyWith<$Res>? get to;
}

/// @nodoc
class _$RouteCopyWithImpl<$Res> implements $RouteCopyWith<$Res> {
  _$RouteCopyWithImpl(this._value, this._then);

  final Route _value;
  // ignore: unused_field
  final $Res Function(Route) _then;

  @override
  $Res call({
    Object? from = freezed,
    Object? to = freezed,
  }) {
    return _then(_value.copyWith(
      from: from == freezed
          ? _value.from
          : from // ignore: cast_nullable_to_non_nullable
              as Geopoint?,
      to: to == freezed
          ? _value.to
          : to // ignore: cast_nullable_to_non_nullable
              as Geopoint?,
    ));
  }

  @override
  $GeopointCopyWith<$Res>? get from {
    if (_value.from == null) {
      return null;
    }

    return $GeopointCopyWith<$Res>(_value.from!, (value) {
      return _then(_value.copyWith(from: value));
    });
  }

  @override
  $GeopointCopyWith<$Res>? get to {
    if (_value.to == null) {
      return null;
    }

    return $GeopointCopyWith<$Res>(_value.to!, (value) {
      return _then(_value.copyWith(to: value));
    });
  }
}

/// @nodoc
abstract class _$RouteCopyWith<$Res> implements $RouteCopyWith<$Res> {
  factory _$RouteCopyWith(_Route value, $Res Function(_Route) then) =
      __$RouteCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'from') Geopoint? from,
      @JsonKey(name: 'to') Geopoint? to});

  @override
  $GeopointCopyWith<$Res>? get from;
  @override
  $GeopointCopyWith<$Res>? get to;
}

/// @nodoc
class __$RouteCopyWithImpl<$Res> extends _$RouteCopyWithImpl<$Res>
    implements _$RouteCopyWith<$Res> {
  __$RouteCopyWithImpl(_Route _value, $Res Function(_Route) _then)
      : super(_value, (v) => _then(v as _Route));

  @override
  _Route get _value => super._value as _Route;

  @override
  $Res call({
    Object? from = freezed,
    Object? to = freezed,
  }) {
    return _then(_Route(
      from: from == freezed
          ? _value.from
          : from // ignore: cast_nullable_to_non_nullable
              as Geopoint?,
      to: to == freezed
          ? _value.to
          : to // ignore: cast_nullable_to_non_nullable
              as Geopoint?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Route with DiagnosticableTreeMixin implements _Route {
  _$_Route({@JsonKey(name: 'from') this.from, @JsonKey(name: 'to') this.to});

  factory _$_Route.fromJson(Map<String, dynamic> json) =>
      _$_$_RouteFromJson(json);

  @override
  @JsonKey(name: 'from')
  final Geopoint? from;
  @override
  @JsonKey(name: 'to')
  final Geopoint? to;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Route(from: $from, to: $to)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'Route'))
      ..add(DiagnosticsProperty('from', from))
      ..add(DiagnosticsProperty('to', to));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Route &&
            (identical(other.from, from) ||
                const DeepCollectionEquality().equals(other.from, from)) &&
            (identical(other.to, to) ||
                const DeepCollectionEquality().equals(other.to, to)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(from) ^
      const DeepCollectionEquality().hash(to);

  @JsonKey(ignore: true)
  @override
  _$RouteCopyWith<_Route> get copyWith =>
      __$RouteCopyWithImpl<_Route>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_RouteToJson(this);
  }
}

abstract class _Route implements Route {
  factory _Route(
      {@JsonKey(name: 'from') Geopoint? from,
      @JsonKey(name: 'to') Geopoint? to}) = _$_Route;

  factory _Route.fromJson(Map<String, dynamic> json) = _$_Route.fromJson;

  @override
  @JsonKey(name: 'from')
  Geopoint? get from => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'to')
  Geopoint? get to => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$RouteCopyWith<_Route> get copyWith => throw _privateConstructorUsedError;
}
