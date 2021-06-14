// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'travellers.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Travellers _$TravellersFromJson(Map<String, dynamic> json) {
  return _Travellers.fromJson(json);
}

/// @nodoc
class _$TravellersTearOff {
  const _$TravellersTearOff();

  _Travellers call(
      {@JsonKey(name: 'role_id') String? roleId,
      @JsonKey(name: 'user_id') String? userId}) {
    return _Travellers(
      roleId: roleId,
      userId: userId,
    );
  }

  Travellers fromJson(Map<String, Object> json) {
    return Travellers.fromJson(json);
  }
}

/// @nodoc
const $Travellers = _$TravellersTearOff();

/// @nodoc
mixin _$Travellers {
  @JsonKey(name: 'role_id')
  String? get roleId => throw _privateConstructorUsedError;
  @JsonKey(name: 'user_id')
  String? get userId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TravellersCopyWith<Travellers> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TravellersCopyWith<$Res> {
  factory $TravellersCopyWith(
          Travellers value, $Res Function(Travellers) then) =
      _$TravellersCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'role_id') String? roleId,
      @JsonKey(name: 'user_id') String? userId});
}

/// @nodoc
class _$TravellersCopyWithImpl<$Res> implements $TravellersCopyWith<$Res> {
  _$TravellersCopyWithImpl(this._value, this._then);

  final Travellers _value;
  // ignore: unused_field
  final $Res Function(Travellers) _then;

  @override
  $Res call({
    Object? roleId = freezed,
    Object? userId = freezed,
  }) {
    return _then(_value.copyWith(
      roleId: roleId == freezed
          ? _value.roleId
          : roleId // ignore: cast_nullable_to_non_nullable
              as String?,
      userId: userId == freezed
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$TravellersCopyWith<$Res> implements $TravellersCopyWith<$Res> {
  factory _$TravellersCopyWith(
          _Travellers value, $Res Function(_Travellers) then) =
      __$TravellersCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'role_id') String? roleId,
      @JsonKey(name: 'user_id') String? userId});
}

/// @nodoc
class __$TravellersCopyWithImpl<$Res> extends _$TravellersCopyWithImpl<$Res>
    implements _$TravellersCopyWith<$Res> {
  __$TravellersCopyWithImpl(
      _Travellers _value, $Res Function(_Travellers) _then)
      : super(_value, (v) => _then(v as _Travellers));

  @override
  _Travellers get _value => super._value as _Travellers;

  @override
  $Res call({
    Object? roleId = freezed,
    Object? userId = freezed,
  }) {
    return _then(_Travellers(
      roleId: roleId == freezed
          ? _value.roleId
          : roleId // ignore: cast_nullable_to_non_nullable
              as String?,
      userId: userId == freezed
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Travellers with DiagnosticableTreeMixin implements _Travellers {
  _$_Travellers(
      {@JsonKey(name: 'role_id') this.roleId,
      @JsonKey(name: 'user_id') this.userId});

  factory _$_Travellers.fromJson(Map<String, dynamic> json) =>
      _$_$_TravellersFromJson(json);

  @override
  @JsonKey(name: 'role_id')
  final String? roleId;
  @override
  @JsonKey(name: 'user_id')
  final String? userId;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Travellers(roleId: $roleId, userId: $userId)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'Travellers'))
      ..add(DiagnosticsProperty('roleId', roleId))
      ..add(DiagnosticsProperty('userId', userId));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Travellers &&
            (identical(other.roleId, roleId) ||
                const DeepCollectionEquality().equals(other.roleId, roleId)) &&
            (identical(other.userId, userId) ||
                const DeepCollectionEquality().equals(other.userId, userId)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(roleId) ^
      const DeepCollectionEquality().hash(userId);

  @JsonKey(ignore: true)
  @override
  _$TravellersCopyWith<_Travellers> get copyWith =>
      __$TravellersCopyWithImpl<_Travellers>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_TravellersToJson(this);
  }
}

abstract class _Travellers implements Travellers {
  factory _Travellers(
      {@JsonKey(name: 'role_id') String? roleId,
      @JsonKey(name: 'user_id') String? userId}) = _$_Travellers;

  factory _Travellers.fromJson(Map<String, dynamic> json) =
      _$_Travellers.fromJson;

  @override
  @JsonKey(name: 'role_id')
  String? get roleId => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'user_id')
  String? get userId => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$TravellersCopyWith<_Travellers> get copyWith =>
      throw _privateConstructorUsedError;
}
