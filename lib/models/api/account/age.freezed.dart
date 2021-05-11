// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'age.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Age _$AgeFromJson(Map<String, dynamic> json) {
  return _Age.fromJson(json);
}

/// @nodoc
class _$AgeTearOff {
  const _$AgeTearOff();

  _Age call({@JsonKey(name: 'value') int? value}) {
    return _Age(
      value: value,
    );
  }

  Age fromJson(Map<String, Object> json) {
    return Age.fromJson(json);
  }
}

/// @nodoc
const $Age = _$AgeTearOff();

/// @nodoc
mixin _$Age {
  @JsonKey(name: 'value')
  int? get value => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AgeCopyWith<Age> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AgeCopyWith<$Res> {
  factory $AgeCopyWith(Age value, $Res Function(Age) then) =
      _$AgeCopyWithImpl<$Res>;
  $Res call({@JsonKey(name: 'value') int? value});
}

/// @nodoc
class _$AgeCopyWithImpl<$Res> implements $AgeCopyWith<$Res> {
  _$AgeCopyWithImpl(this._value, this._then);

  final Age _value;
  // ignore: unused_field
  final $Res Function(Age) _then;

  @override
  $Res call({
    Object? value = freezed,
  }) {
    return _then(_value.copyWith(
      value: value == freezed
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
abstract class _$AgeCopyWith<$Res> implements $AgeCopyWith<$Res> {
  factory _$AgeCopyWith(_Age value, $Res Function(_Age) then) =
      __$AgeCopyWithImpl<$Res>;
  @override
  $Res call({@JsonKey(name: 'value') int? value});
}

/// @nodoc
class __$AgeCopyWithImpl<$Res> extends _$AgeCopyWithImpl<$Res>
    implements _$AgeCopyWith<$Res> {
  __$AgeCopyWithImpl(_Age _value, $Res Function(_Age) _then)
      : super(_value, (v) => _then(v as _Age));

  @override
  _Age get _value => super._value as _Age;

  @override
  $Res call({
    Object? value = freezed,
  }) {
    return _then(_Age(
      value: value == freezed
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Age with DiagnosticableTreeMixin implements _Age {
  _$_Age({@JsonKey(name: 'value') this.value});

  factory _$_Age.fromJson(Map<String, dynamic> json) => _$_$_AgeFromJson(json);

  @override
  @JsonKey(name: 'value')
  final int? value;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Age(value: $value)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'Age'))
      ..add(DiagnosticsProperty('value', value));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Age &&
            (identical(other.value, value) ||
                const DeepCollectionEquality().equals(other.value, value)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(value);

  @JsonKey(ignore: true)
  @override
  _$AgeCopyWith<_Age> get copyWith =>
      __$AgeCopyWithImpl<_Age>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_AgeToJson(this);
  }
}

abstract class _Age implements Age {
  factory _Age({@JsonKey(name: 'value') int? value}) = _$_Age;

  factory _Age.fromJson(Map<String, dynamic> json) = _$_Age.fromJson;

  @override
  @JsonKey(name: 'value')
  int? get value => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$AgeCopyWith<_Age> get copyWith => throw _privateConstructorUsedError;
}
