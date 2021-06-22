// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'transport_wastes.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

TransportWastes _$TransportWastesFromJson(Map<String, dynamic> json) {
  return _TransportWastes.fromJson(json);
}

/// @nodoc
class _$TransportWastesTearOff {
  const _$TransportWastesTearOff();

  _TransportWastes call(
      {@JsonKey(name: 'name') String? name,
      @JsonKey(name: 'route') Route? route}) {
    return _TransportWastes(
      name: name,
      route: route,
    );
  }

  TransportWastes fromJson(Map<String, Object> json) {
    return TransportWastes.fromJson(json);
  }
}

/// @nodoc
const $TransportWastes = _$TransportWastesTearOff();

/// @nodoc
mixin _$TransportWastes {
  @JsonKey(name: 'name')
  String? get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'route')
  Route? get route => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TransportWastesCopyWith<TransportWastes> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TransportWastesCopyWith<$Res> {
  factory $TransportWastesCopyWith(
          TransportWastes value, $Res Function(TransportWastes) then) =
      _$TransportWastesCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'name') String? name,
      @JsonKey(name: 'route') Route? route});

  $RouteCopyWith<$Res>? get route;
}

/// @nodoc
class _$TransportWastesCopyWithImpl<$Res>
    implements $TransportWastesCopyWith<$Res> {
  _$TransportWastesCopyWithImpl(this._value, this._then);

  final TransportWastes _value;
  // ignore: unused_field
  final $Res Function(TransportWastes) _then;

  @override
  $Res call({
    Object? name = freezed,
    Object? route = freezed,
  }) {
    return _then(_value.copyWith(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      route: route == freezed
          ? _value.route
          : route // ignore: cast_nullable_to_non_nullable
              as Route?,
    ));
  }

  @override
  $RouteCopyWith<$Res>? get route {
    if (_value.route == null) {
      return null;
    }

    return $RouteCopyWith<$Res>(_value.route!, (value) {
      return _then(_value.copyWith(route: value));
    });
  }
}

/// @nodoc
abstract class _$TransportWastesCopyWith<$Res>
    implements $TransportWastesCopyWith<$Res> {
  factory _$TransportWastesCopyWith(
          _TransportWastes value, $Res Function(_TransportWastes) then) =
      __$TransportWastesCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'name') String? name,
      @JsonKey(name: 'route') Route? route});

  @override
  $RouteCopyWith<$Res>? get route;
}

/// @nodoc
class __$TransportWastesCopyWithImpl<$Res>
    extends _$TransportWastesCopyWithImpl<$Res>
    implements _$TransportWastesCopyWith<$Res> {
  __$TransportWastesCopyWithImpl(
      _TransportWastes _value, $Res Function(_TransportWastes) _then)
      : super(_value, (v) => _then(v as _TransportWastes));

  @override
  _TransportWastes get _value => super._value as _TransportWastes;

  @override
  $Res call({
    Object? name = freezed,
    Object? route = freezed,
  }) {
    return _then(_TransportWastes(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      route: route == freezed
          ? _value.route
          : route // ignore: cast_nullable_to_non_nullable
              as Route?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_TransportWastes
    with DiagnosticableTreeMixin
    implements _TransportWastes {
  _$_TransportWastes(
      {@JsonKey(name: 'name') this.name, @JsonKey(name: 'route') this.route});

  factory _$_TransportWastes.fromJson(Map<String, dynamic> json) =>
      _$_$_TransportWastesFromJson(json);

  @override
  @JsonKey(name: 'name')
  final String? name;
  @override
  @JsonKey(name: 'route')
  final Route? route;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'TransportWastes(name: $name, route: $route)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'TransportWastes'))
      ..add(DiagnosticsProperty('name', name))
      ..add(DiagnosticsProperty('route', route));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _TransportWastes &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.route, route) ||
                const DeepCollectionEquality().equals(other.route, route)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(route);

  @JsonKey(ignore: true)
  @override
  _$TransportWastesCopyWith<_TransportWastes> get copyWith =>
      __$TransportWastesCopyWithImpl<_TransportWastes>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_TransportWastesToJson(this);
  }
}

abstract class _TransportWastes implements TransportWastes {
  factory _TransportWastes(
      {@JsonKey(name: 'name') String? name,
      @JsonKey(name: 'route') Route? route}) = _$_TransportWastes;

  factory _TransportWastes.fromJson(Map<String, dynamic> json) =
      _$_TransportWastes.fromJson;

  @override
  @JsonKey(name: 'name')
  String? get name => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'route')
  Route? get route => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$TransportWastesCopyWith<_TransportWastes> get copyWith =>
      throw _privateConstructorUsedError;
}
