// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'encrypted_password.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

EncryptedPassword _$EncryptedPasswordFromJson(Map<String, dynamic> json) {
  return _EncryptedPassword.fromJson(json);
}

/// @nodoc
class _$EncryptedPasswordTearOff {
  const _$EncryptedPasswordTearOff();

  _EncryptedPassword call({@JsonKey(name: 'value') Value? value}) {
    return _EncryptedPassword(
      value: value,
    );
  }

  EncryptedPassword fromJson(Map<String, Object> json) {
    return EncryptedPassword.fromJson(json);
  }
}

/// @nodoc
const $EncryptedPassword = _$EncryptedPasswordTearOff();

/// @nodoc
mixin _$EncryptedPassword {
  @JsonKey(name: 'value')
  Value? get value => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $EncryptedPasswordCopyWith<EncryptedPassword> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EncryptedPasswordCopyWith<$Res> {
  factory $EncryptedPasswordCopyWith(
          EncryptedPassword value, $Res Function(EncryptedPassword) then) =
      _$EncryptedPasswordCopyWithImpl<$Res>;
  $Res call({@JsonKey(name: 'value') Value? value});

  $ValueCopyWith<$Res>? get value;
}

/// @nodoc
class _$EncryptedPasswordCopyWithImpl<$Res>
    implements $EncryptedPasswordCopyWith<$Res> {
  _$EncryptedPasswordCopyWithImpl(this._value, this._then);

  final EncryptedPassword _value;
  // ignore: unused_field
  final $Res Function(EncryptedPassword) _then;

  @override
  $Res call({
    Object? value = freezed,
  }) {
    return _then(_value.copyWith(
      value: value == freezed
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as Value?,
    ));
  }

  @override
  $ValueCopyWith<$Res>? get value {
    if (_value.value == null) {
      return null;
    }

    return $ValueCopyWith<$Res>(_value.value!, (value) {
      return _then(_value.copyWith(value: value));
    });
  }
}

/// @nodoc
abstract class _$EncryptedPasswordCopyWith<$Res>
    implements $EncryptedPasswordCopyWith<$Res> {
  factory _$EncryptedPasswordCopyWith(
          _EncryptedPassword value, $Res Function(_EncryptedPassword) then) =
      __$EncryptedPasswordCopyWithImpl<$Res>;
  @override
  $Res call({@JsonKey(name: 'value') Value? value});

  @override
  $ValueCopyWith<$Res>? get value;
}

/// @nodoc
class __$EncryptedPasswordCopyWithImpl<$Res>
    extends _$EncryptedPasswordCopyWithImpl<$Res>
    implements _$EncryptedPasswordCopyWith<$Res> {
  __$EncryptedPasswordCopyWithImpl(
      _EncryptedPassword _value, $Res Function(_EncryptedPassword) _then)
      : super(_value, (v) => _then(v as _EncryptedPassword));

  @override
  _EncryptedPassword get _value => super._value as _EncryptedPassword;

  @override
  $Res call({
    Object? value = freezed,
  }) {
    return _then(_EncryptedPassword(
      value: value == freezed
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as Value?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_EncryptedPassword
    with DiagnosticableTreeMixin
    implements _EncryptedPassword {
  _$_EncryptedPassword({@JsonKey(name: 'value') this.value});

  factory _$_EncryptedPassword.fromJson(Map<String, dynamic> json) =>
      _$_$_EncryptedPasswordFromJson(json);

  @override
  @JsonKey(name: 'value')
  final Value? value;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'EncryptedPassword(value: $value)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'EncryptedPassword'))
      ..add(DiagnosticsProperty('value', value));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _EncryptedPassword &&
            (identical(other.value, value) ||
                const DeepCollectionEquality().equals(other.value, value)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(value);

  @JsonKey(ignore: true)
  @override
  _$EncryptedPasswordCopyWith<_EncryptedPassword> get copyWith =>
      __$EncryptedPasswordCopyWithImpl<_EncryptedPassword>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_EncryptedPasswordToJson(this);
  }
}

abstract class _EncryptedPassword implements EncryptedPassword {
  factory _EncryptedPassword({@JsonKey(name: 'value') Value? value}) =
      _$_EncryptedPassword;

  factory _EncryptedPassword.fromJson(Map<String, dynamic> json) =
      _$_EncryptedPassword.fromJson;

  @override
  @JsonKey(name: 'value')
  Value? get value => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$EncryptedPasswordCopyWith<_EncryptedPassword> get copyWith =>
      throw _privateConstructorUsedError;
}
