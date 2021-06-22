// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'id.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Id _$IdFromJson(Map<String, dynamic> json) {
  return _Id.fromJson(json);
}

/// @nodoc
class _$IdTearOff {
  const _$IdTearOff();

  _Id call({@JsonKey(name: 'id') required String id}) {
    return _Id(
      id: id,
    );
  }

  Id fromJson(Map<String, Object> json) {
    return Id.fromJson(json);
  }
}

/// @nodoc
const $Id = _$IdTearOff();

/// @nodoc
mixin _$Id {
  @JsonKey(name: 'id')
  String get id => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $IdCopyWith<Id> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $IdCopyWith<$Res> {
  factory $IdCopyWith(Id value, $Res Function(Id) then) =
      _$IdCopyWithImpl<$Res>;
  $Res call({@JsonKey(name: 'id') String id});
}

/// @nodoc
class _$IdCopyWithImpl<$Res> implements $IdCopyWith<$Res> {
  _$IdCopyWithImpl(this._value, this._then);

  final Id _value;
  // ignore: unused_field
  final $Res Function(Id) _then;

  @override
  $Res call({
    Object? id = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$IdCopyWith<$Res> implements $IdCopyWith<$Res> {
  factory _$IdCopyWith(_Id value, $Res Function(_Id) then) =
      __$IdCopyWithImpl<$Res>;
  @override
  $Res call({@JsonKey(name: 'id') String id});
}

/// @nodoc
class __$IdCopyWithImpl<$Res> extends _$IdCopyWithImpl<$Res>
    implements _$IdCopyWith<$Res> {
  __$IdCopyWithImpl(_Id _value, $Res Function(_Id) _then)
      : super(_value, (v) => _then(v as _Id));

  @override
  _Id get _value => super._value as _Id;

  @override
  $Res call({
    Object? id = freezed,
  }) {
    return _then(_Id(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Id implements _Id {
  _$_Id({@JsonKey(name: 'id') required this.id});

  factory _$_Id.fromJson(Map<String, dynamic> json) => _$_$_IdFromJson(json);

  @override
  @JsonKey(name: 'id')
  final String id;

  @override
  String toString() {
    return 'Id(id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Id &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(id);

  @JsonKey(ignore: true)
  @override
  _$IdCopyWith<_Id> get copyWith => __$IdCopyWithImpl<_Id>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_IdToJson(this);
  }
}

abstract class _Id implements Id {
  factory _Id({@JsonKey(name: 'id') required String id}) = _$_Id;

  factory _Id.fromJson(Map<String, dynamic> json) = _$_Id.fromJson;

  @override
  @JsonKey(name: 'id')
  String get id => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$IdCopyWith<_Id> get copyWith => throw _privateConstructorUsedError;
}
