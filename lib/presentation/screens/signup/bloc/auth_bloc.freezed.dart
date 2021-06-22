// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'auth_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$AuthEventTearOff {
  const _$AuthEventTearOff();

  Started started() {
    return const Started();
  }

  CreateUserWithEmailAndPassword createUserWithEmailAndPassword(
      String email, String password) {
    return CreateUserWithEmailAndPassword(
      email,
      password,
    );
  }

  SignInWithGoogle signInWithGoogle() {
    return const SignInWithGoogle();
  }

  SignInUserWithEmailAndPassword signInUserWithEmailAndPassword(
      String email, String password) {
    return SignInUserWithEmailAndPassword(
      email,
      password,
    );
  }

  Logout logout() {
    return const Logout();
  }
}

/// @nodoc
const $AuthEvent = _$AuthEventTearOff();

/// @nodoc
mixin _$AuthEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String email, String password)
        createUserWithEmailAndPassword,
    required TResult Function() signInWithGoogle,
    required TResult Function(String email, String password)
        signInUserWithEmailAndPassword,
    required TResult Function() logout,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String email, String password)?
        createUserWithEmailAndPassword,
    TResult Function()? signInWithGoogle,
    TResult Function(String email, String password)?
        signInUserWithEmailAndPassword,
    TResult Function()? logout,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Started value) started,
    required TResult Function(CreateUserWithEmailAndPassword value)
        createUserWithEmailAndPassword,
    required TResult Function(SignInWithGoogle value) signInWithGoogle,
    required TResult Function(SignInUserWithEmailAndPassword value)
        signInUserWithEmailAndPassword,
    required TResult Function(Logout value) logout,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Started value)? started,
    TResult Function(CreateUserWithEmailAndPassword value)?
        createUserWithEmailAndPassword,
    TResult Function(SignInWithGoogle value)? signInWithGoogle,
    TResult Function(SignInUserWithEmailAndPassword value)?
        signInUserWithEmailAndPassword,
    TResult Function(Logout value)? logout,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthEventCopyWith<$Res> {
  factory $AuthEventCopyWith(AuthEvent value, $Res Function(AuthEvent) then) =
      _$AuthEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$AuthEventCopyWithImpl<$Res> implements $AuthEventCopyWith<$Res> {
  _$AuthEventCopyWithImpl(this._value, this._then);

  final AuthEvent _value;
  // ignore: unused_field
  final $Res Function(AuthEvent) _then;
}

/// @nodoc
abstract class $StartedCopyWith<$Res> {
  factory $StartedCopyWith(Started value, $Res Function(Started) then) =
      _$StartedCopyWithImpl<$Res>;
}

/// @nodoc
class _$StartedCopyWithImpl<$Res> extends _$AuthEventCopyWithImpl<$Res>
    implements $StartedCopyWith<$Res> {
  _$StartedCopyWithImpl(Started _value, $Res Function(Started) _then)
      : super(_value, (v) => _then(v as Started));

  @override
  Started get _value => super._value as Started;
}

/// @nodoc

class _$Started implements Started {
  const _$Started();

  @override
  String toString() {
    return 'AuthEvent.started()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is Started);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String email, String password)
        createUserWithEmailAndPassword,
    required TResult Function() signInWithGoogle,
    required TResult Function(String email, String password)
        signInUserWithEmailAndPassword,
    required TResult Function() logout,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String email, String password)?
        createUserWithEmailAndPassword,
    TResult Function()? signInWithGoogle,
    TResult Function(String email, String password)?
        signInUserWithEmailAndPassword,
    TResult Function()? logout,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Started value) started,
    required TResult Function(CreateUserWithEmailAndPassword value)
        createUserWithEmailAndPassword,
    required TResult Function(SignInWithGoogle value) signInWithGoogle,
    required TResult Function(SignInUserWithEmailAndPassword value)
        signInUserWithEmailAndPassword,
    required TResult Function(Logout value) logout,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Started value)? started,
    TResult Function(CreateUserWithEmailAndPassword value)?
        createUserWithEmailAndPassword,
    TResult Function(SignInWithGoogle value)? signInWithGoogle,
    TResult Function(SignInUserWithEmailAndPassword value)?
        signInUserWithEmailAndPassword,
    TResult Function(Logout value)? logout,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class Started implements AuthEvent {
  const factory Started() = _$Started;
}

/// @nodoc
abstract class $CreateUserWithEmailAndPasswordCopyWith<$Res> {
  factory $CreateUserWithEmailAndPasswordCopyWith(
          CreateUserWithEmailAndPassword value,
          $Res Function(CreateUserWithEmailAndPassword) then) =
      _$CreateUserWithEmailAndPasswordCopyWithImpl<$Res>;
  $Res call({String email, String password});
}

/// @nodoc
class _$CreateUserWithEmailAndPasswordCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res>
    implements $CreateUserWithEmailAndPasswordCopyWith<$Res> {
  _$CreateUserWithEmailAndPasswordCopyWithImpl(
      CreateUserWithEmailAndPassword _value,
      $Res Function(CreateUserWithEmailAndPassword) _then)
      : super(_value, (v) => _then(v as CreateUserWithEmailAndPassword));

  @override
  CreateUserWithEmailAndPassword get _value =>
      super._value as CreateUserWithEmailAndPassword;

  @override
  $Res call({
    Object? email = freezed,
    Object? password = freezed,
  }) {
    return _then(CreateUserWithEmailAndPassword(
      email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      password == freezed
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$CreateUserWithEmailAndPassword
    implements CreateUserWithEmailAndPassword {
  const _$CreateUserWithEmailAndPassword(this.email, this.password);

  @override
  final String email;
  @override
  final String password;

  @override
  String toString() {
    return 'AuthEvent.createUserWithEmailAndPassword(email: $email, password: $password)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is CreateUserWithEmailAndPassword &&
            (identical(other.email, email) ||
                const DeepCollectionEquality().equals(other.email, email)) &&
            (identical(other.password, password) ||
                const DeepCollectionEquality()
                    .equals(other.password, password)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(email) ^
      const DeepCollectionEquality().hash(password);

  @JsonKey(ignore: true)
  @override
  $CreateUserWithEmailAndPasswordCopyWith<CreateUserWithEmailAndPassword>
      get copyWith => _$CreateUserWithEmailAndPasswordCopyWithImpl<
          CreateUserWithEmailAndPassword>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String email, String password)
        createUserWithEmailAndPassword,
    required TResult Function() signInWithGoogle,
    required TResult Function(String email, String password)
        signInUserWithEmailAndPassword,
    required TResult Function() logout,
  }) {
    return createUserWithEmailAndPassword(email, password);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String email, String password)?
        createUserWithEmailAndPassword,
    TResult Function()? signInWithGoogle,
    TResult Function(String email, String password)?
        signInUserWithEmailAndPassword,
    TResult Function()? logout,
    required TResult orElse(),
  }) {
    if (createUserWithEmailAndPassword != null) {
      return createUserWithEmailAndPassword(email, password);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Started value) started,
    required TResult Function(CreateUserWithEmailAndPassword value)
        createUserWithEmailAndPassword,
    required TResult Function(SignInWithGoogle value) signInWithGoogle,
    required TResult Function(SignInUserWithEmailAndPassword value)
        signInUserWithEmailAndPassword,
    required TResult Function(Logout value) logout,
  }) {
    return createUserWithEmailAndPassword(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Started value)? started,
    TResult Function(CreateUserWithEmailAndPassword value)?
        createUserWithEmailAndPassword,
    TResult Function(SignInWithGoogle value)? signInWithGoogle,
    TResult Function(SignInUserWithEmailAndPassword value)?
        signInUserWithEmailAndPassword,
    TResult Function(Logout value)? logout,
    required TResult orElse(),
  }) {
    if (createUserWithEmailAndPassword != null) {
      return createUserWithEmailAndPassword(this);
    }
    return orElse();
  }
}

abstract class CreateUserWithEmailAndPassword implements AuthEvent {
  const factory CreateUserWithEmailAndPassword(String email, String password) =
      _$CreateUserWithEmailAndPassword;

  String get email => throw _privateConstructorUsedError;
  String get password => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CreateUserWithEmailAndPasswordCopyWith<CreateUserWithEmailAndPassword>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SignInWithGoogleCopyWith<$Res> {
  factory $SignInWithGoogleCopyWith(
          SignInWithGoogle value, $Res Function(SignInWithGoogle) then) =
      _$SignInWithGoogleCopyWithImpl<$Res>;
}

/// @nodoc
class _$SignInWithGoogleCopyWithImpl<$Res> extends _$AuthEventCopyWithImpl<$Res>
    implements $SignInWithGoogleCopyWith<$Res> {
  _$SignInWithGoogleCopyWithImpl(
      SignInWithGoogle _value, $Res Function(SignInWithGoogle) _then)
      : super(_value, (v) => _then(v as SignInWithGoogle));

  @override
  SignInWithGoogle get _value => super._value as SignInWithGoogle;
}

/// @nodoc

class _$SignInWithGoogle implements SignInWithGoogle {
  const _$SignInWithGoogle();

  @override
  String toString() {
    return 'AuthEvent.signInWithGoogle()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is SignInWithGoogle);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String email, String password)
        createUserWithEmailAndPassword,
    required TResult Function() signInWithGoogle,
    required TResult Function(String email, String password)
        signInUserWithEmailAndPassword,
    required TResult Function() logout,
  }) {
    return signInWithGoogle();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String email, String password)?
        createUserWithEmailAndPassword,
    TResult Function()? signInWithGoogle,
    TResult Function(String email, String password)?
        signInUserWithEmailAndPassword,
    TResult Function()? logout,
    required TResult orElse(),
  }) {
    if (signInWithGoogle != null) {
      return signInWithGoogle();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Started value) started,
    required TResult Function(CreateUserWithEmailAndPassword value)
        createUserWithEmailAndPassword,
    required TResult Function(SignInWithGoogle value) signInWithGoogle,
    required TResult Function(SignInUserWithEmailAndPassword value)
        signInUserWithEmailAndPassword,
    required TResult Function(Logout value) logout,
  }) {
    return signInWithGoogle(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Started value)? started,
    TResult Function(CreateUserWithEmailAndPassword value)?
        createUserWithEmailAndPassword,
    TResult Function(SignInWithGoogle value)? signInWithGoogle,
    TResult Function(SignInUserWithEmailAndPassword value)?
        signInUserWithEmailAndPassword,
    TResult Function(Logout value)? logout,
    required TResult orElse(),
  }) {
    if (signInWithGoogle != null) {
      return signInWithGoogle(this);
    }
    return orElse();
  }
}

abstract class SignInWithGoogle implements AuthEvent {
  const factory SignInWithGoogle() = _$SignInWithGoogle;
}

/// @nodoc
abstract class $SignInUserWithEmailAndPasswordCopyWith<$Res> {
  factory $SignInUserWithEmailAndPasswordCopyWith(
          SignInUserWithEmailAndPassword value,
          $Res Function(SignInUserWithEmailAndPassword) then) =
      _$SignInUserWithEmailAndPasswordCopyWithImpl<$Res>;
  $Res call({String email, String password});
}

/// @nodoc
class _$SignInUserWithEmailAndPasswordCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res>
    implements $SignInUserWithEmailAndPasswordCopyWith<$Res> {
  _$SignInUserWithEmailAndPasswordCopyWithImpl(
      SignInUserWithEmailAndPassword _value,
      $Res Function(SignInUserWithEmailAndPassword) _then)
      : super(_value, (v) => _then(v as SignInUserWithEmailAndPassword));

  @override
  SignInUserWithEmailAndPassword get _value =>
      super._value as SignInUserWithEmailAndPassword;

  @override
  $Res call({
    Object? email = freezed,
    Object? password = freezed,
  }) {
    return _then(SignInUserWithEmailAndPassword(
      email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      password == freezed
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SignInUserWithEmailAndPassword
    implements SignInUserWithEmailAndPassword {
  const _$SignInUserWithEmailAndPassword(this.email, this.password);

  @override
  final String email;
  @override
  final String password;

  @override
  String toString() {
    return 'AuthEvent.signInUserWithEmailAndPassword(email: $email, password: $password)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is SignInUserWithEmailAndPassword &&
            (identical(other.email, email) ||
                const DeepCollectionEquality().equals(other.email, email)) &&
            (identical(other.password, password) ||
                const DeepCollectionEquality()
                    .equals(other.password, password)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(email) ^
      const DeepCollectionEquality().hash(password);

  @JsonKey(ignore: true)
  @override
  $SignInUserWithEmailAndPasswordCopyWith<SignInUserWithEmailAndPassword>
      get copyWith => _$SignInUserWithEmailAndPasswordCopyWithImpl<
          SignInUserWithEmailAndPassword>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String email, String password)
        createUserWithEmailAndPassword,
    required TResult Function() signInWithGoogle,
    required TResult Function(String email, String password)
        signInUserWithEmailAndPassword,
    required TResult Function() logout,
  }) {
    return signInUserWithEmailAndPassword(email, password);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String email, String password)?
        createUserWithEmailAndPassword,
    TResult Function()? signInWithGoogle,
    TResult Function(String email, String password)?
        signInUserWithEmailAndPassword,
    TResult Function()? logout,
    required TResult orElse(),
  }) {
    if (signInUserWithEmailAndPassword != null) {
      return signInUserWithEmailAndPassword(email, password);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Started value) started,
    required TResult Function(CreateUserWithEmailAndPassword value)
        createUserWithEmailAndPassword,
    required TResult Function(SignInWithGoogle value) signInWithGoogle,
    required TResult Function(SignInUserWithEmailAndPassword value)
        signInUserWithEmailAndPassword,
    required TResult Function(Logout value) logout,
  }) {
    return signInUserWithEmailAndPassword(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Started value)? started,
    TResult Function(CreateUserWithEmailAndPassword value)?
        createUserWithEmailAndPassword,
    TResult Function(SignInWithGoogle value)? signInWithGoogle,
    TResult Function(SignInUserWithEmailAndPassword value)?
        signInUserWithEmailAndPassword,
    TResult Function(Logout value)? logout,
    required TResult orElse(),
  }) {
    if (signInUserWithEmailAndPassword != null) {
      return signInUserWithEmailAndPassword(this);
    }
    return orElse();
  }
}

abstract class SignInUserWithEmailAndPassword implements AuthEvent {
  const factory SignInUserWithEmailAndPassword(String email, String password) =
      _$SignInUserWithEmailAndPassword;

  String get email => throw _privateConstructorUsedError;
  String get password => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SignInUserWithEmailAndPasswordCopyWith<SignInUserWithEmailAndPassword>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LogoutCopyWith<$Res> {
  factory $LogoutCopyWith(Logout value, $Res Function(Logout) then) =
      _$LogoutCopyWithImpl<$Res>;
}

/// @nodoc
class _$LogoutCopyWithImpl<$Res> extends _$AuthEventCopyWithImpl<$Res>
    implements $LogoutCopyWith<$Res> {
  _$LogoutCopyWithImpl(Logout _value, $Res Function(Logout) _then)
      : super(_value, (v) => _then(v as Logout));

  @override
  Logout get _value => super._value as Logout;
}

/// @nodoc

class _$Logout implements Logout {
  const _$Logout();

  @override
  String toString() {
    return 'AuthEvent.logout()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is Logout);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String email, String password)
        createUserWithEmailAndPassword,
    required TResult Function() signInWithGoogle,
    required TResult Function(String email, String password)
        signInUserWithEmailAndPassword,
    required TResult Function() logout,
  }) {
    return logout();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String email, String password)?
        createUserWithEmailAndPassword,
    TResult Function()? signInWithGoogle,
    TResult Function(String email, String password)?
        signInUserWithEmailAndPassword,
    TResult Function()? logout,
    required TResult orElse(),
  }) {
    if (logout != null) {
      return logout();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Started value) started,
    required TResult Function(CreateUserWithEmailAndPassword value)
        createUserWithEmailAndPassword,
    required TResult Function(SignInWithGoogle value) signInWithGoogle,
    required TResult Function(SignInUserWithEmailAndPassword value)
        signInUserWithEmailAndPassword,
    required TResult Function(Logout value) logout,
  }) {
    return logout(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Started value)? started,
    TResult Function(CreateUserWithEmailAndPassword value)?
        createUserWithEmailAndPassword,
    TResult Function(SignInWithGoogle value)? signInWithGoogle,
    TResult Function(SignInUserWithEmailAndPassword value)?
        signInUserWithEmailAndPassword,
    TResult Function(Logout value)? logout,
    required TResult orElse(),
  }) {
    if (logout != null) {
      return logout(this);
    }
    return orElse();
  }
}

abstract class Logout implements AuthEvent {
  const factory Logout() = _$Logout;
}

/// @nodoc
class _$AuthStateTearOff {
  const _$AuthStateTearOff();

  _Initial initial() {
    return const _Initial();
  }

  _Created created(UserCredential userCredential) {
    return _Created(
      userCredential,
    );
  }

  _Authenticated authenticated(UserCredential userCredential) {
    return _Authenticated(
      userCredential,
    );
  }

  _Logouted logouted() {
    return const _Logouted();
  }

  _Error error(String errorMessage) {
    return _Error(
      errorMessage,
    );
  }
}

/// @nodoc
const $AuthState = _$AuthStateTearOff();

/// @nodoc
mixin _$AuthState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(UserCredential userCredential) created,
    required TResult Function(UserCredential userCredential) authenticated,
    required TResult Function() logouted,
    required TResult Function(String errorMessage) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(UserCredential userCredential)? created,
    TResult Function(UserCredential userCredential)? authenticated,
    TResult Function()? logouted,
    TResult Function(String errorMessage)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Created value) created,
    required TResult Function(_Authenticated value) authenticated,
    required TResult Function(_Logouted value) logouted,
    required TResult Function(_Error value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Created value)? created,
    TResult Function(_Authenticated value)? authenticated,
    TResult Function(_Logouted value)? logouted,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthStateCopyWith<$Res> {
  factory $AuthStateCopyWith(AuthState value, $Res Function(AuthState) then) =
      _$AuthStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$AuthStateCopyWithImpl<$Res> implements $AuthStateCopyWith<$Res> {
  _$AuthStateCopyWithImpl(this._value, this._then);

  final AuthState _value;
  // ignore: unused_field
  final $Res Function(AuthState) _then;
}

/// @nodoc
abstract class _$InitialCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) then) =
      __$InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$InitialCopyWithImpl<$Res> extends _$AuthStateCopyWithImpl<$Res>
    implements _$InitialCopyWith<$Res> {
  __$InitialCopyWithImpl(_Initial _value, $Res Function(_Initial) _then)
      : super(_value, (v) => _then(v as _Initial));

  @override
  _Initial get _value => super._value as _Initial;
}

/// @nodoc

class _$_Initial implements _Initial {
  const _$_Initial();

  @override
  String toString() {
    return 'AuthState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Initial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(UserCredential userCredential) created,
    required TResult Function(UserCredential userCredential) authenticated,
    required TResult Function() logouted,
    required TResult Function(String errorMessage) error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(UserCredential userCredential)? created,
    TResult Function(UserCredential userCredential)? authenticated,
    TResult Function()? logouted,
    TResult Function(String errorMessage)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Created value) created,
    required TResult Function(_Authenticated value) authenticated,
    required TResult Function(_Logouted value) logouted,
    required TResult Function(_Error value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Created value)? created,
    TResult Function(_Authenticated value)? authenticated,
    TResult Function(_Logouted value)? logouted,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements AuthState {
  const factory _Initial() = _$_Initial;
}

/// @nodoc
abstract class _$CreatedCopyWith<$Res> {
  factory _$CreatedCopyWith(_Created value, $Res Function(_Created) then) =
      __$CreatedCopyWithImpl<$Res>;
  $Res call({UserCredential userCredential});
}

/// @nodoc
class __$CreatedCopyWithImpl<$Res> extends _$AuthStateCopyWithImpl<$Res>
    implements _$CreatedCopyWith<$Res> {
  __$CreatedCopyWithImpl(_Created _value, $Res Function(_Created) _then)
      : super(_value, (v) => _then(v as _Created));

  @override
  _Created get _value => super._value as _Created;

  @override
  $Res call({
    Object? userCredential = freezed,
  }) {
    return _then(_Created(
      userCredential == freezed
          ? _value.userCredential
          : userCredential // ignore: cast_nullable_to_non_nullable
              as UserCredential,
    ));
  }
}

/// @nodoc

class _$_Created implements _Created {
  const _$_Created(this.userCredential);

  @override
  final UserCredential userCredential;

  @override
  String toString() {
    return 'AuthState.created(userCredential: $userCredential)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Created &&
            (identical(other.userCredential, userCredential) ||
                const DeepCollectionEquality()
                    .equals(other.userCredential, userCredential)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(userCredential);

  @JsonKey(ignore: true)
  @override
  _$CreatedCopyWith<_Created> get copyWith =>
      __$CreatedCopyWithImpl<_Created>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(UserCredential userCredential) created,
    required TResult Function(UserCredential userCredential) authenticated,
    required TResult Function() logouted,
    required TResult Function(String errorMessage) error,
  }) {
    return created(userCredential);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(UserCredential userCredential)? created,
    TResult Function(UserCredential userCredential)? authenticated,
    TResult Function()? logouted,
    TResult Function(String errorMessage)? error,
    required TResult orElse(),
  }) {
    if (created != null) {
      return created(userCredential);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Created value) created,
    required TResult Function(_Authenticated value) authenticated,
    required TResult Function(_Logouted value) logouted,
    required TResult Function(_Error value) error,
  }) {
    return created(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Created value)? created,
    TResult Function(_Authenticated value)? authenticated,
    TResult Function(_Logouted value)? logouted,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (created != null) {
      return created(this);
    }
    return orElse();
  }
}

abstract class _Created implements AuthState {
  const factory _Created(UserCredential userCredential) = _$_Created;

  UserCredential get userCredential => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$CreatedCopyWith<_Created> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$AuthenticatedCopyWith<$Res> {
  factory _$AuthenticatedCopyWith(
          _Authenticated value, $Res Function(_Authenticated) then) =
      __$AuthenticatedCopyWithImpl<$Res>;
  $Res call({UserCredential userCredential});
}

/// @nodoc
class __$AuthenticatedCopyWithImpl<$Res> extends _$AuthStateCopyWithImpl<$Res>
    implements _$AuthenticatedCopyWith<$Res> {
  __$AuthenticatedCopyWithImpl(
      _Authenticated _value, $Res Function(_Authenticated) _then)
      : super(_value, (v) => _then(v as _Authenticated));

  @override
  _Authenticated get _value => super._value as _Authenticated;

  @override
  $Res call({
    Object? userCredential = freezed,
  }) {
    return _then(_Authenticated(
      userCredential == freezed
          ? _value.userCredential
          : userCredential // ignore: cast_nullable_to_non_nullable
              as UserCredential,
    ));
  }
}

/// @nodoc

class _$_Authenticated implements _Authenticated {
  const _$_Authenticated(this.userCredential);

  @override
  final UserCredential userCredential;

  @override
  String toString() {
    return 'AuthState.authenticated(userCredential: $userCredential)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Authenticated &&
            (identical(other.userCredential, userCredential) ||
                const DeepCollectionEquality()
                    .equals(other.userCredential, userCredential)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(userCredential);

  @JsonKey(ignore: true)
  @override
  _$AuthenticatedCopyWith<_Authenticated> get copyWith =>
      __$AuthenticatedCopyWithImpl<_Authenticated>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(UserCredential userCredential) created,
    required TResult Function(UserCredential userCredential) authenticated,
    required TResult Function() logouted,
    required TResult Function(String errorMessage) error,
  }) {
    return authenticated(userCredential);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(UserCredential userCredential)? created,
    TResult Function(UserCredential userCredential)? authenticated,
    TResult Function()? logouted,
    TResult Function(String errorMessage)? error,
    required TResult orElse(),
  }) {
    if (authenticated != null) {
      return authenticated(userCredential);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Created value) created,
    required TResult Function(_Authenticated value) authenticated,
    required TResult Function(_Logouted value) logouted,
    required TResult Function(_Error value) error,
  }) {
    return authenticated(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Created value)? created,
    TResult Function(_Authenticated value)? authenticated,
    TResult Function(_Logouted value)? logouted,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (authenticated != null) {
      return authenticated(this);
    }
    return orElse();
  }
}

abstract class _Authenticated implements AuthState {
  const factory _Authenticated(UserCredential userCredential) =
      _$_Authenticated;

  UserCredential get userCredential => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$AuthenticatedCopyWith<_Authenticated> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$LogoutedCopyWith<$Res> {
  factory _$LogoutedCopyWith(_Logouted value, $Res Function(_Logouted) then) =
      __$LogoutedCopyWithImpl<$Res>;
}

/// @nodoc
class __$LogoutedCopyWithImpl<$Res> extends _$AuthStateCopyWithImpl<$Res>
    implements _$LogoutedCopyWith<$Res> {
  __$LogoutedCopyWithImpl(_Logouted _value, $Res Function(_Logouted) _then)
      : super(_value, (v) => _then(v as _Logouted));

  @override
  _Logouted get _value => super._value as _Logouted;
}

/// @nodoc

class _$_Logouted implements _Logouted {
  const _$_Logouted();

  @override
  String toString() {
    return 'AuthState.logouted()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Logouted);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(UserCredential userCredential) created,
    required TResult Function(UserCredential userCredential) authenticated,
    required TResult Function() logouted,
    required TResult Function(String errorMessage) error,
  }) {
    return logouted();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(UserCredential userCredential)? created,
    TResult Function(UserCredential userCredential)? authenticated,
    TResult Function()? logouted,
    TResult Function(String errorMessage)? error,
    required TResult orElse(),
  }) {
    if (logouted != null) {
      return logouted();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Created value) created,
    required TResult Function(_Authenticated value) authenticated,
    required TResult Function(_Logouted value) logouted,
    required TResult Function(_Error value) error,
  }) {
    return logouted(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Created value)? created,
    TResult Function(_Authenticated value)? authenticated,
    TResult Function(_Logouted value)? logouted,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (logouted != null) {
      return logouted(this);
    }
    return orElse();
  }
}

abstract class _Logouted implements AuthState {
  const factory _Logouted() = _$_Logouted;
}

/// @nodoc
abstract class _$ErrorCopyWith<$Res> {
  factory _$ErrorCopyWith(_Error value, $Res Function(_Error) then) =
      __$ErrorCopyWithImpl<$Res>;
  $Res call({String errorMessage});
}

/// @nodoc
class __$ErrorCopyWithImpl<$Res> extends _$AuthStateCopyWithImpl<$Res>
    implements _$ErrorCopyWith<$Res> {
  __$ErrorCopyWithImpl(_Error _value, $Res Function(_Error) _then)
      : super(_value, (v) => _then(v as _Error));

  @override
  _Error get _value => super._value as _Error;

  @override
  $Res call({
    Object? errorMessage = freezed,
  }) {
    return _then(_Error(
      errorMessage == freezed
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_Error implements _Error {
  const _$_Error(this.errorMessage);

  @override
  final String errorMessage;

  @override
  String toString() {
    return 'AuthState.error(errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Error &&
            (identical(other.errorMessage, errorMessage) ||
                const DeepCollectionEquality()
                    .equals(other.errorMessage, errorMessage)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(errorMessage);

  @JsonKey(ignore: true)
  @override
  _$ErrorCopyWith<_Error> get copyWith =>
      __$ErrorCopyWithImpl<_Error>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(UserCredential userCredential) created,
    required TResult Function(UserCredential userCredential) authenticated,
    required TResult Function() logouted,
    required TResult Function(String errorMessage) error,
  }) {
    return error(errorMessage);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(UserCredential userCredential)? created,
    TResult Function(UserCredential userCredential)? authenticated,
    TResult Function()? logouted,
    TResult Function(String errorMessage)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(errorMessage);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Created value) created,
    required TResult Function(_Authenticated value) authenticated,
    required TResult Function(_Logouted value) logouted,
    required TResult Function(_Error value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Created value)? created,
    TResult Function(_Authenticated value)? authenticated,
    TResult Function(_Logouted value)? logouted,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _Error implements AuthState {
  const factory _Error(String errorMessage) = _$_Error;

  String get errorMessage => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$ErrorCopyWith<_Error> get copyWith => throw _privateConstructorUsedError;
}
