// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'patronymic.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Patronymic _$PatronymicFromJson(Map<String, dynamic> json) {
  return _Patronymic.fromJson(json);
}

/// @nodoc
class _$PatronymicTearOff {
  const _$PatronymicTearOff();

  _Patronymic call({@JsonKey(name: 'value') String? value}) {
    return _Patronymic(
      value: value,
    );
  }

  Patronymic fromJson(Map<String, Object> json) {
    return Patronymic.fromJson(json);
  }
}

/// @nodoc
const $Patronymic = _$PatronymicTearOff();

/// @nodoc
mixin _$Patronymic {
  @JsonKey(name: 'value')
  String? get value => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PatronymicCopyWith<Patronymic> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PatronymicCopyWith<$Res> {
  factory $PatronymicCopyWith(
          Patronymic value, $Res Function(Patronymic) then) =
      _$PatronymicCopyWithImpl<$Res>;
  $Res call({@JsonKey(name: 'value') String? value});
}

/// @nodoc
class _$PatronymicCopyWithImpl<$Res> implements $PatronymicCopyWith<$Res> {
  _$PatronymicCopyWithImpl(this._value, this._then);

  final Patronymic _value;
  // ignore: unused_field
  final $Res Function(Patronymic) _then;

  @override
  $Res call({
    Object? value = freezed,
  }) {
    return _then(_value.copyWith(
      value: value == freezed
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$PatronymicCopyWith<$Res> implements $PatronymicCopyWith<$Res> {
  factory _$PatronymicCopyWith(
          _Patronymic value, $Res Function(_Patronymic) then) =
      __$PatronymicCopyWithImpl<$Res>;
  @override
  $Res call({@JsonKey(name: 'value') String? value});
}

/// @nodoc
class __$PatronymicCopyWithImpl<$Res> extends _$PatronymicCopyWithImpl<$Res>
    implements _$PatronymicCopyWith<$Res> {
  __$PatronymicCopyWithImpl(
      _Patronymic _value, $Res Function(_Patronymic) _then)
      : super(_value, (v) => _then(v as _Patronymic));

  @override
  _Patronymic get _value => super._value as _Patronymic;

  @override
  $Res call({
    Object? value = freezed,
  }) {
    return _then(_Patronymic(
      value: value == freezed
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Patronymic with DiagnosticableTreeMixin implements _Patronymic {
  _$_Patronymic({@JsonKey(name: 'value') this.value});

  factory _$_Patronymic.fromJson(Map<String, dynamic> json) =>
      _$_$_PatronymicFromJson(json);

  @override
  @JsonKey(name: 'value')
  final String? value;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Patronymic(value: $value)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'Patronymic'))
      ..add(DiagnosticsProperty('value', value));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Patronymic &&
            (identical(other.value, value) ||
                const DeepCollectionEquality().equals(other.value, value)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(value);

  @JsonKey(ignore: true)
  @override
  _$PatronymicCopyWith<_Patronymic> get copyWith =>
      __$PatronymicCopyWithImpl<_Patronymic>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_PatronymicToJson(this);
  }
}

abstract class _Patronymic implements Patronymic {
  factory _Patronymic({@JsonKey(name: 'value') String? value}) = _$_Patronymic;

  factory _Patronymic.fromJson(Map<String, dynamic> json) =
      _$_Patronymic.fromJson;

  @override
  @JsonKey(name: 'value')
  String? get value => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$PatronymicCopyWith<_Patronymic> get copyWith =>
      throw _privateConstructorUsedError;
}
