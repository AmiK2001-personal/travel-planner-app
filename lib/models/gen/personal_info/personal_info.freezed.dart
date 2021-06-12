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
      {@JsonKey(name: 'login') String? login,
      @JsonKey(name: 'avatar') FirebaseImage? avatar,
      @JsonKey(name: 'firstname') String? firstname,
      @JsonKey(name: 'lastname') String? lastname,
      @JsonKey(name: 'patronymic') String? patronymic}) {
    return _PersonalInfo(
      login: login,
      avatar: avatar,
      firstname: firstname,
      lastname: lastname,
      patronymic: patronymic,
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
  @JsonKey(name: 'login')
  String? get login => throw _privateConstructorUsedError;
  @JsonKey(name: 'avatar')
  FirebaseImage? get avatar => throw _privateConstructorUsedError;
  @JsonKey(name: 'firstname')
  String? get firstname => throw _privateConstructorUsedError;
  @JsonKey(name: 'lastname')
  String? get lastname => throw _privateConstructorUsedError;
  @JsonKey(name: 'patronymic')
  String? get patronymic => throw _privateConstructorUsedError;

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
      {@JsonKey(name: 'login') String? login,
      @JsonKey(name: 'avatar') FirebaseImage? avatar,
      @JsonKey(name: 'firstname') String? firstname,
      @JsonKey(name: 'lastname') String? lastname,
      @JsonKey(name: 'patronymic') String? patronymic});

  $FirebaseImageCopyWith<$Res>? get avatar;
}

/// @nodoc
class _$PersonalInfoCopyWithImpl<$Res> implements $PersonalInfoCopyWith<$Res> {
  _$PersonalInfoCopyWithImpl(this._value, this._then);

  final PersonalInfo _value;
  // ignore: unused_field
  final $Res Function(PersonalInfo) _then;

  @override
  $Res call({
    Object? login = freezed,
    Object? avatar = freezed,
    Object? firstname = freezed,
    Object? lastname = freezed,
    Object? patronymic = freezed,
  }) {
    return _then(_value.copyWith(
      login: login == freezed
          ? _value.login
          : login // ignore: cast_nullable_to_non_nullable
              as String?,
      avatar: avatar == freezed
          ? _value.avatar
          : avatar // ignore: cast_nullable_to_non_nullable
              as FirebaseImage?,
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
              as String?,
    ));
  }

  @override
  $FirebaseImageCopyWith<$Res>? get avatar {
    if (_value.avatar == null) {
      return null;
    }

    return $FirebaseImageCopyWith<$Res>(_value.avatar!, (value) {
      return _then(_value.copyWith(avatar: value));
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
      {@JsonKey(name: 'login') String? login,
      @JsonKey(name: 'avatar') FirebaseImage? avatar,
      @JsonKey(name: 'firstname') String? firstname,
      @JsonKey(name: 'lastname') String? lastname,
      @JsonKey(name: 'patronymic') String? patronymic});

  @override
  $FirebaseImageCopyWith<$Res>? get avatar;
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
    Object? login = freezed,
    Object? avatar = freezed,
    Object? firstname = freezed,
    Object? lastname = freezed,
    Object? patronymic = freezed,
  }) {
    return _then(_PersonalInfo(
      login: login == freezed
          ? _value.login
          : login // ignore: cast_nullable_to_non_nullable
              as String?,
      avatar: avatar == freezed
          ? _value.avatar
          : avatar // ignore: cast_nullable_to_non_nullable
              as FirebaseImage?,
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
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_PersonalInfo with DiagnosticableTreeMixin implements _PersonalInfo {
  _$_PersonalInfo(
      {@JsonKey(name: 'login') this.login,
      @JsonKey(name: 'avatar') this.avatar,
      @JsonKey(name: 'firstname') this.firstname,
      @JsonKey(name: 'lastname') this.lastname,
      @JsonKey(name: 'patronymic') this.patronymic});

  factory _$_PersonalInfo.fromJson(Map<String, dynamic> json) =>
      _$_$_PersonalInfoFromJson(json);

  @override
  @JsonKey(name: 'login')
  final String? login;
  @override
  @JsonKey(name: 'avatar')
  final FirebaseImage? avatar;
  @override
  @JsonKey(name: 'firstname')
  final String? firstname;
  @override
  @JsonKey(name: 'lastname')
  final String? lastname;
  @override
  @JsonKey(name: 'patronymic')
  final String? patronymic;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'PersonalInfo(login: $login, avatar: $avatar, firstname: $firstname, lastname: $lastname, patronymic: $patronymic)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'PersonalInfo'))
      ..add(DiagnosticsProperty('login', login))
      ..add(DiagnosticsProperty('avatar', avatar))
      ..add(DiagnosticsProperty('firstname', firstname))
      ..add(DiagnosticsProperty('lastname', lastname))
      ..add(DiagnosticsProperty('patronymic', patronymic));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _PersonalInfo &&
            (identical(other.login, login) ||
                const DeepCollectionEquality().equals(other.login, login)) &&
            (identical(other.avatar, avatar) ||
                const DeepCollectionEquality().equals(other.avatar, avatar)) &&
            (identical(other.firstname, firstname) ||
                const DeepCollectionEquality()
                    .equals(other.firstname, firstname)) &&
            (identical(other.lastname, lastname) ||
                const DeepCollectionEquality()
                    .equals(other.lastname, lastname)) &&
            (identical(other.patronymic, patronymic) ||
                const DeepCollectionEquality()
                    .equals(other.patronymic, patronymic)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(login) ^
      const DeepCollectionEquality().hash(avatar) ^
      const DeepCollectionEquality().hash(firstname) ^
      const DeepCollectionEquality().hash(lastname) ^
      const DeepCollectionEquality().hash(patronymic);

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
      {@JsonKey(name: 'login') String? login,
      @JsonKey(name: 'avatar') FirebaseImage? avatar,
      @JsonKey(name: 'firstname') String? firstname,
      @JsonKey(name: 'lastname') String? lastname,
      @JsonKey(name: 'patronymic') String? patronymic}) = _$_PersonalInfo;

  factory _PersonalInfo.fromJson(Map<String, dynamic> json) =
      _$_PersonalInfo.fromJson;

  @override
  @JsonKey(name: 'login')
  String? get login => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'avatar')
  FirebaseImage? get avatar => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'firstname')
  String? get firstname => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'lastname')
  String? get lastname => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'patronymic')
  String? get patronymic => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$PersonalInfoCopyWith<_PersonalInfo> get copyWith =>
      throw _privateConstructorUsedError;
}
