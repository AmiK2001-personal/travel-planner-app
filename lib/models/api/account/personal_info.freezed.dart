// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'personal_info.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PersonalInfo _$PersonalInfoFromJson(Map<String, dynamic> json) {
  return _PersonalInfo.fromJson(json);
}

/// @nodoc
class _$PersonalInfoTearOff {
  const _$PersonalInfoTearOff();

  _PersonalInfo call(
      {@JsonKey(name: 'firstname') String? firstname,
      @JsonKey(name: 'lastname') String? lastname,
      @JsonKey(name: 'patronymic') Patronymic? patronymic,
      @JsonKey(name: 'age') Age? age}) {
    return _PersonalInfo(
      firstname: firstname,
      lastname: lastname,
      patronymic: patronymic,
      age: age,
    );
  }

  PersonalInfo fromJson(Map<String, Object> json) {
    return PersonalInfo.fromJson(json);
  }
}

/// @nodoc
const $PersonalInfo = _$PersonalInfoTearOff();

/// @nodoc
mixin _$PersonalInfo {
  @JsonKey(name: 'firstname')
  String? get firstname => throw _privateConstructorUsedError;
  @JsonKey(name: 'lastname')
  String? get lastname => throw _privateConstructorUsedError;
  @JsonKey(name: 'patronymic')
  Patronymic? get patronymic => throw _privateConstructorUsedError;
  @JsonKey(name: 'age')
  Age? get age => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PersonalInfoCopyWith<PersonalInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PersonalInfoCopyWith<$Res> {
  factory $PersonalInfoCopyWith(
          PersonalInfo value, $Res Function(PersonalInfo) then) =
      _$PersonalInfoCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'firstname') String? firstname,
      @JsonKey(name: 'lastname') String? lastname,
      @JsonKey(name: 'patronymic') Patronymic? patronymic,
      @JsonKey(name: 'age') Age? age});

  $PatronymicCopyWith<$Res>? get patronymic;
  $AgeCopyWith<$Res>? get age;
}

/// @nodoc
class _$PersonalInfoCopyWithImpl<$Res> implements $PersonalInfoCopyWith<$Res> {
  _$PersonalInfoCopyWithImpl(this._value, this._then);

  final PersonalInfo _value;
  // ignore: unused_field
  final $Res Function(PersonalInfo) _then;

  @override
  $Res call({
    Object? firstname = freezed,
    Object? lastname = freezed,
    Object? patronymic = freezed,
    Object? age = freezed,
  }) {
    return _then(_value.copyWith(
      firstname: firstname == freezed
          ? _value.firstname
          : firstname // ignore: cast_nullable_to_non_nullable
              as String?,
      lastname: lastname == freezed
          ? _value.lastname
          : lastname // ignore: cast_nullable_to_non_nullable
              as String?,
      patronymic: patronymic == freezed
          ? _value.patronymic
          : patronymic // ignore: cast_nullable_to_non_nullable
              as Patronymic?,
      age: age == freezed
          ? _value.age
          : age // ignore: cast_nullable_to_non_nullable
              as Age?,
    ));
  }

  @override
  $PatronymicCopyWith<$Res>? get patronymic {
    if (_value.patronymic == null) {
      return null;
    }

    return $PatronymicCopyWith<$Res>(_value.patronymic!, (value) {
      return _then(_value.copyWith(patronymic: value));
    });
  }

  @override
  $AgeCopyWith<$Res>? get age {
    if (_value.age == null) {
      return null;
    }

    return $AgeCopyWith<$Res>(_value.age!, (value) {
      return _then(_value.copyWith(age: value));
    });
  }
}

/// @nodoc
abstract class _$PersonalInfoCopyWith<$Res>
    implements $PersonalInfoCopyWith<$Res> {
  factory _$PersonalInfoCopyWith(
          _PersonalInfo value, $Res Function(_PersonalInfo) then) =
      __$PersonalInfoCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'firstname') String? firstname,
      @JsonKey(name: 'lastname') String? lastname,
      @JsonKey(name: 'patronymic') Patronymic? patronymic,
      @JsonKey(name: 'age') Age? age});

  @override
  $PatronymicCopyWith<$Res>? get patronymic;
  @override
  $AgeCopyWith<$Res>? get age;
}

/// @nodoc
class __$PersonalInfoCopyWithImpl<$Res> extends _$PersonalInfoCopyWithImpl<$Res>
    implements _$PersonalInfoCopyWith<$Res> {
  __$PersonalInfoCopyWithImpl(
      _PersonalInfo _value, $Res Function(_PersonalInfo) _then)
      : super(_value, (v) => _then(v as _PersonalInfo));

  @override
  _PersonalInfo get _value => super._value as _PersonalInfo;

  @override
  $Res call({
    Object? firstname = freezed,
    Object? lastname = freezed,
    Object? patronymic = freezed,
    Object? age = freezed,
  }) {
    return _then(_PersonalInfo(
      firstname: firstname == freezed
          ? _value.firstname
          : firstname // ignore: cast_nullable_to_non_nullable
              as String?,
      lastname: lastname == freezed
          ? _value.lastname
          : lastname // ignore: cast_nullable_to_non_nullable
              as String?,
      patronymic: patronymic == freezed
          ? _value.patronymic
          : patronymic // ignore: cast_nullable_to_non_nullable
              as Patronymic?,
      age: age == freezed
          ? _value.age
          : age // ignore: cast_nullable_to_non_nullable
              as Age?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_PersonalInfo with DiagnosticableTreeMixin implements _PersonalInfo {
  _$_PersonalInfo(
      {@JsonKey(name: 'firstname') this.firstname,
      @JsonKey(name: 'lastname') this.lastname,
      @JsonKey(name: 'patronymic') this.patronymic,
      @JsonKey(name: 'age') this.age});

  factory _$_PersonalInfo.fromJson(Map<String, dynamic> json) =>
      _$_$_PersonalInfoFromJson(json);

  @override
  @JsonKey(name: 'firstname')
  final String? firstname;
  @override
  @JsonKey(name: 'lastname')
  final String? lastname;
  @override
  @JsonKey(name: 'patronymic')
  final Patronymic? patronymic;
  @override
  @JsonKey(name: 'age')
  final Age? age;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'PersonalInfo(firstname: $firstname, lastname: $lastname, patronymic: $patronymic, age: $age)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'PersonalInfo'))
      ..add(DiagnosticsProperty('firstname', firstname))
      ..add(DiagnosticsProperty('lastname', lastname))
      ..add(DiagnosticsProperty('patronymic', patronymic))
      ..add(DiagnosticsProperty('age', age));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _PersonalInfo &&
            (identical(other.firstname, firstname) ||
                const DeepCollectionEquality()
                    .equals(other.firstname, firstname)) &&
            (identical(other.lastname, lastname) ||
                const DeepCollectionEquality()
                    .equals(other.lastname, lastname)) &&
            (identical(other.patronymic, patronymic) ||
                const DeepCollectionEquality()
                    .equals(other.patronymic, patronymic)) &&
            (identical(other.age, age) ||
                const DeepCollectionEquality().equals(other.age, age)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(firstname) ^
      const DeepCollectionEquality().hash(lastname) ^
      const DeepCollectionEquality().hash(patronymic) ^
      const DeepCollectionEquality().hash(age);

  @JsonKey(ignore: true)
  @override
  _$PersonalInfoCopyWith<_PersonalInfo> get copyWith =>
      __$PersonalInfoCopyWithImpl<_PersonalInfo>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_PersonalInfoToJson(this);
  }
}

abstract class _PersonalInfo implements PersonalInfo {
  factory _PersonalInfo(
      {@JsonKey(name: 'firstname') String? firstname,
      @JsonKey(name: 'lastname') String? lastname,
      @JsonKey(name: 'patronymic') Patronymic? patronymic,
      @JsonKey(name: 'age') Age? age}) = _$_PersonalInfo;

  factory _PersonalInfo.fromJson(Map<String, dynamic> json) =
      _$_PersonalInfo.fromJson;

  @override
  @JsonKey(name: 'firstname')
  String? get firstname => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'lastname')
  String? get lastname => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'patronymic')
  Patronymic? get patronymic => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'age')
  Age? get age => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$PersonalInfoCopyWith<_PersonalInfo> get copyWith =>
      throw _privateConstructorUsedError;
}
