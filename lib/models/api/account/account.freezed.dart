// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'account.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Account _$AccountFromJson(Map<String, dynamic> json) {
  return _Account.fromJson(json);
}

/// @nodoc
class _$AccountTearOff {
  const _$AccountTearOff();

  _Account call(
      {@JsonKey(name: 'id') String? id,
      @JsonKey(name: 'login') String? login,
      @JsonKey(name: 'encryptedPassword') EncryptedPassword? encryptedPassword,
      @JsonKey(name: 'password') Object? password,
      @JsonKey(name: 'personalInfo') PersonalInfo? personalInfo}) {
    return _Account(
      id: id,
      login: login,
      encryptedPassword: encryptedPassword,
      password: password,
      personalInfo: personalInfo,
    );
  }

  Account fromJson(Map<String, Object> json) {
    return Account.fromJson(json);
  }
}

/// @nodoc
const $Account = _$AccountTearOff();

/// @nodoc
mixin _$Account {
  @JsonKey(name: 'id')
  String? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'login')
  String? get login => throw _privateConstructorUsedError;
  @JsonKey(name: 'encryptedPassword')
  EncryptedPassword? get encryptedPassword =>
      throw _privateConstructorUsedError;
  @JsonKey(name: 'password')
  Object? get password => throw _privateConstructorUsedError;
  @JsonKey(name: 'personalInfo')
  PersonalInfo? get personalInfo => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AccountCopyWith<Account> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AccountCopyWith<$Res> {
  factory $AccountCopyWith(Account value, $Res Function(Account) then) =
      _$AccountCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'id') String? id,
      @JsonKey(name: 'login') String? login,
      @JsonKey(name: 'encryptedPassword') EncryptedPassword? encryptedPassword,
      @JsonKey(name: 'password') Object? password,
      @JsonKey(name: 'personalInfo') PersonalInfo? personalInfo});

  $EncryptedPasswordCopyWith<$Res>? get encryptedPassword;
  $PersonalInfoCopyWith<$Res>? get personalInfo;
}

/// @nodoc
class _$AccountCopyWithImpl<$Res> implements $AccountCopyWith<$Res> {
  _$AccountCopyWithImpl(this._value, this._then);

  final Account _value;
  // ignore: unused_field
  final $Res Function(Account) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? login = freezed,
    Object? encryptedPassword = freezed,
    Object? password = freezed,
    Object? personalInfo = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      login: login == freezed
          ? _value.login
          : login // ignore: cast_nullable_to_non_nullable
              as String?,
      encryptedPassword: encryptedPassword == freezed
          ? _value.encryptedPassword
          : encryptedPassword // ignore: cast_nullable_to_non_nullable
              as EncryptedPassword?,
      password: password == freezed ? _value.password : password,
      personalInfo: personalInfo == freezed
          ? _value.personalInfo
          : personalInfo // ignore: cast_nullable_to_non_nullable
              as PersonalInfo?,
    ));
  }

  @override
  $EncryptedPasswordCopyWith<$Res>? get encryptedPassword {
    if (_value.encryptedPassword == null) {
      return null;
    }

    return $EncryptedPasswordCopyWith<$Res>(_value.encryptedPassword!, (value) {
      return _then(_value.copyWith(encryptedPassword: value));
    });
  }

  @override
  $PersonalInfoCopyWith<$Res>? get personalInfo {
    if (_value.personalInfo == null) {
      return null;
    }

    return $PersonalInfoCopyWith<$Res>(_value.personalInfo!, (value) {
      return _then(_value.copyWith(personalInfo: value));
    });
  }
}

/// @nodoc
abstract class _$AccountCopyWith<$Res> implements $AccountCopyWith<$Res> {
  factory _$AccountCopyWith(_Account value, $Res Function(_Account) then) =
      __$AccountCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'id') String? id,
      @JsonKey(name: 'login') String? login,
      @JsonKey(name: 'encryptedPassword') EncryptedPassword? encryptedPassword,
      @JsonKey(name: 'password') Object? password,
      @JsonKey(name: 'personalInfo') PersonalInfo? personalInfo});

  @override
  $EncryptedPasswordCopyWith<$Res>? get encryptedPassword;
  @override
  $PersonalInfoCopyWith<$Res>? get personalInfo;
}

/// @nodoc
class __$AccountCopyWithImpl<$Res> extends _$AccountCopyWithImpl<$Res>
    implements _$AccountCopyWith<$Res> {
  __$AccountCopyWithImpl(_Account _value, $Res Function(_Account) _then)
      : super(_value, (v) => _then(v as _Account));

  @override
  _Account get _value => super._value as _Account;

  @override
  $Res call({
    Object? id = freezed,
    Object? login = freezed,
    Object? encryptedPassword = freezed,
    Object? password = freezed,
    Object? personalInfo = freezed,
  }) {
    return _then(_Account(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      login: login == freezed
          ? _value.login
          : login // ignore: cast_nullable_to_non_nullable
              as String?,
      encryptedPassword: encryptedPassword == freezed
          ? _value.encryptedPassword
          : encryptedPassword // ignore: cast_nullable_to_non_nullable
              as EncryptedPassword?,
      password: password == freezed ? _value.password : password,
      personalInfo: personalInfo == freezed
          ? _value.personalInfo
          : personalInfo // ignore: cast_nullable_to_non_nullable
              as PersonalInfo?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Account with DiagnosticableTreeMixin implements _Account {
  _$_Account(
      {@JsonKey(name: 'id') this.id,
      @JsonKey(name: 'login') this.login,
      @JsonKey(name: 'encryptedPassword') this.encryptedPassword,
      @JsonKey(name: 'password') this.password,
      @JsonKey(name: 'personalInfo') this.personalInfo});

  factory _$_Account.fromJson(Map<String, dynamic> json) =>
      _$_$_AccountFromJson(json);

  @override
  @JsonKey(name: 'id')
  final String? id;
  @override
  @JsonKey(name: 'login')
  final String? login;
  @override
  @JsonKey(name: 'encryptedPassword')
  final EncryptedPassword? encryptedPassword;
  @override
  @JsonKey(name: 'password')
  final Object? password;
  @override
  @JsonKey(name: 'personalInfo')
  final PersonalInfo? personalInfo;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Account(id: $id, login: $login, encryptedPassword: $encryptedPassword, password: $password, personalInfo: $personalInfo)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'Account'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('login', login))
      ..add(DiagnosticsProperty('encryptedPassword', encryptedPassword))
      ..add(DiagnosticsProperty('password', password))
      ..add(DiagnosticsProperty('personalInfo', personalInfo));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Account &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.login, login) ||
                const DeepCollectionEquality().equals(other.login, login)) &&
            (identical(other.encryptedPassword, encryptedPassword) ||
                const DeepCollectionEquality()
                    .equals(other.encryptedPassword, encryptedPassword)) &&
            (identical(other.password, password) ||
                const DeepCollectionEquality()
                    .equals(other.password, password)) &&
            (identical(other.personalInfo, personalInfo) ||
                const DeepCollectionEquality()
                    .equals(other.personalInfo, personalInfo)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(login) ^
      const DeepCollectionEquality().hash(encryptedPassword) ^
      const DeepCollectionEquality().hash(password) ^
      const DeepCollectionEquality().hash(personalInfo);

  @JsonKey(ignore: true)
  @override
  _$AccountCopyWith<_Account> get copyWith =>
      __$AccountCopyWithImpl<_Account>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_AccountToJson(this);
  }
}

abstract class _Account implements Account {
  factory _Account(
      {@JsonKey(name: 'id') String? id,
      @JsonKey(name: 'login') String? login,
      @JsonKey(name: 'encryptedPassword') EncryptedPassword? encryptedPassword,
      @JsonKey(name: 'password') Object? password,
      @JsonKey(name: 'personalInfo') PersonalInfo? personalInfo}) = _$_Account;

  factory _Account.fromJson(Map<String, dynamic> json) = _$_Account.fromJson;

  @override
  @JsonKey(name: 'id')
  String? get id => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'login')
  String? get login => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'encryptedPassword')
  EncryptedPassword? get encryptedPassword =>
      throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'password')
  Object? get password => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'personalInfo')
  PersonalInfo? get personalInfo => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$AccountCopyWith<_Account> get copyWith =>
      throw _privateConstructorUsedError;
}
