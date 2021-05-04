// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'register_form_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$RegisterFormEventTearOff {
  const _$RegisterFormEventTearOff();

  EmailChanged emailChanged(String email) {
    return EmailChanged(
      email,
    );
  }

  EmailUnfocused emailUnfocused() {
    return const EmailUnfocused();
  }

  AgeUnfocused ageUnfocused() {
    return const AgeUnfocused();
  }

  PasswordChanged passwordChanged(String password) {
    return PasswordChanged(
      password,
    );
  }

  AgeChanged ageChanged(String age) {
    return AgeChanged(
      age,
    );
  }

  PasswordUnfocused passwordUnfocused() {
    return const PasswordUnfocused();
  }

  FormSubmitted formSubmitted() {
    return const FormSubmitted();
  }
}

/// @nodoc
const $RegisterFormEvent = _$RegisterFormEventTearOff();

/// @nodoc
mixin _$RegisterFormEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email) emailChanged,
    required TResult Function() emailUnfocused,
    required TResult Function() ageUnfocused,
    required TResult Function(String password) passwordChanged,
    required TResult Function(String age) ageChanged,
    required TResult Function() passwordUnfocused,
    required TResult Function() formSubmitted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email)? emailChanged,
    TResult Function()? emailUnfocused,
    TResult Function()? ageUnfocused,
    TResult Function(String password)? passwordChanged,
    TResult Function(String age)? ageChanged,
    TResult Function()? passwordUnfocused,
    TResult Function()? formSubmitted,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EmailChanged value) emailChanged,
    required TResult Function(EmailUnfocused value) emailUnfocused,
    required TResult Function(AgeUnfocused value) ageUnfocused,
    required TResult Function(PasswordChanged value) passwordChanged,
    required TResult Function(AgeChanged value) ageChanged,
    required TResult Function(PasswordUnfocused value) passwordUnfocused,
    required TResult Function(FormSubmitted value) formSubmitted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EmailChanged value)? emailChanged,
    TResult Function(EmailUnfocused value)? emailUnfocused,
    TResult Function(AgeUnfocused value)? ageUnfocused,
    TResult Function(PasswordChanged value)? passwordChanged,
    TResult Function(AgeChanged value)? ageChanged,
    TResult Function(PasswordUnfocused value)? passwordUnfocused,
    TResult Function(FormSubmitted value)? formSubmitted,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RegisterFormEventCopyWith<$Res> {
  factory $RegisterFormEventCopyWith(
          RegisterFormEvent value, $Res Function(RegisterFormEvent) then) =
      _$RegisterFormEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$RegisterFormEventCopyWithImpl<$Res>
    implements $RegisterFormEventCopyWith<$Res> {
  _$RegisterFormEventCopyWithImpl(this._value, this._then);

  final RegisterFormEvent _value;
  // ignore: unused_field
  final $Res Function(RegisterFormEvent) _then;
}

/// @nodoc
abstract class $EmailChangedCopyWith<$Res> {
  factory $EmailChangedCopyWith(
          EmailChanged value, $Res Function(EmailChanged) then) =
      _$EmailChangedCopyWithImpl<$Res>;
  $Res call({String email});
}

/// @nodoc
class _$EmailChangedCopyWithImpl<$Res>
    extends _$RegisterFormEventCopyWithImpl<$Res>
    implements $EmailChangedCopyWith<$Res> {
  _$EmailChangedCopyWithImpl(
      EmailChanged _value, $Res Function(EmailChanged) _then)
      : super(_value, (v) => _then(v as EmailChanged));

  @override
  EmailChanged get _value => super._value as EmailChanged;

  @override
  $Res call({
    Object? email = freezed,
  }) {
    return _then(EmailChanged(
      email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$EmailChanged implements EmailChanged {
  const _$EmailChanged(this.email);

  @override
  final String email;

  @override
  String toString() {
    return 'RegisterFormEvent.emailChanged(email: $email)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is EmailChanged &&
            (identical(other.email, email) ||
                const DeepCollectionEquality().equals(other.email, email)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(email);

  @JsonKey(ignore: true)
  @override
  $EmailChangedCopyWith<EmailChanged> get copyWith =>
      _$EmailChangedCopyWithImpl<EmailChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email) emailChanged,
    required TResult Function() emailUnfocused,
    required TResult Function() ageUnfocused,
    required TResult Function(String password) passwordChanged,
    required TResult Function(String age) ageChanged,
    required TResult Function() passwordUnfocused,
    required TResult Function() formSubmitted,
  }) {
    return emailChanged(email);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email)? emailChanged,
    TResult Function()? emailUnfocused,
    TResult Function()? ageUnfocused,
    TResult Function(String password)? passwordChanged,
    TResult Function(String age)? ageChanged,
    TResult Function()? passwordUnfocused,
    TResult Function()? formSubmitted,
    required TResult orElse(),
  }) {
    if (emailChanged != null) {
      return emailChanged(email);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EmailChanged value) emailChanged,
    required TResult Function(EmailUnfocused value) emailUnfocused,
    required TResult Function(AgeUnfocused value) ageUnfocused,
    required TResult Function(PasswordChanged value) passwordChanged,
    required TResult Function(AgeChanged value) ageChanged,
    required TResult Function(PasswordUnfocused value) passwordUnfocused,
    required TResult Function(FormSubmitted value) formSubmitted,
  }) {
    return emailChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EmailChanged value)? emailChanged,
    TResult Function(EmailUnfocused value)? emailUnfocused,
    TResult Function(AgeUnfocused value)? ageUnfocused,
    TResult Function(PasswordChanged value)? passwordChanged,
    TResult Function(AgeChanged value)? ageChanged,
    TResult Function(PasswordUnfocused value)? passwordUnfocused,
    TResult Function(FormSubmitted value)? formSubmitted,
    required TResult orElse(),
  }) {
    if (emailChanged != null) {
      return emailChanged(this);
    }
    return orElse();
  }
}

abstract class EmailChanged implements RegisterFormEvent {
  const factory EmailChanged(String email) = _$EmailChanged;

  String get email => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $EmailChangedCopyWith<EmailChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EmailUnfocusedCopyWith<$Res> {
  factory $EmailUnfocusedCopyWith(
          EmailUnfocused value, $Res Function(EmailUnfocused) then) =
      _$EmailUnfocusedCopyWithImpl<$Res>;
}

/// @nodoc
class _$EmailUnfocusedCopyWithImpl<$Res>
    extends _$RegisterFormEventCopyWithImpl<$Res>
    implements $EmailUnfocusedCopyWith<$Res> {
  _$EmailUnfocusedCopyWithImpl(
      EmailUnfocused _value, $Res Function(EmailUnfocused) _then)
      : super(_value, (v) => _then(v as EmailUnfocused));

  @override
  EmailUnfocused get _value => super._value as EmailUnfocused;
}

/// @nodoc

class _$EmailUnfocused implements EmailUnfocused {
  const _$EmailUnfocused();

  @override
  String toString() {
    return 'RegisterFormEvent.emailUnfocused()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is EmailUnfocused);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email) emailChanged,
    required TResult Function() emailUnfocused,
    required TResult Function() ageUnfocused,
    required TResult Function(String password) passwordChanged,
    required TResult Function(String age) ageChanged,
    required TResult Function() passwordUnfocused,
    required TResult Function() formSubmitted,
  }) {
    return emailUnfocused();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email)? emailChanged,
    TResult Function()? emailUnfocused,
    TResult Function()? ageUnfocused,
    TResult Function(String password)? passwordChanged,
    TResult Function(String age)? ageChanged,
    TResult Function()? passwordUnfocused,
    TResult Function()? formSubmitted,
    required TResult orElse(),
  }) {
    if (emailUnfocused != null) {
      return emailUnfocused();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EmailChanged value) emailChanged,
    required TResult Function(EmailUnfocused value) emailUnfocused,
    required TResult Function(AgeUnfocused value) ageUnfocused,
    required TResult Function(PasswordChanged value) passwordChanged,
    required TResult Function(AgeChanged value) ageChanged,
    required TResult Function(PasswordUnfocused value) passwordUnfocused,
    required TResult Function(FormSubmitted value) formSubmitted,
  }) {
    return emailUnfocused(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EmailChanged value)? emailChanged,
    TResult Function(EmailUnfocused value)? emailUnfocused,
    TResult Function(AgeUnfocused value)? ageUnfocused,
    TResult Function(PasswordChanged value)? passwordChanged,
    TResult Function(AgeChanged value)? ageChanged,
    TResult Function(PasswordUnfocused value)? passwordUnfocused,
    TResult Function(FormSubmitted value)? formSubmitted,
    required TResult orElse(),
  }) {
    if (emailUnfocused != null) {
      return emailUnfocused(this);
    }
    return orElse();
  }
}

abstract class EmailUnfocused implements RegisterFormEvent {
  const factory EmailUnfocused() = _$EmailUnfocused;
}

/// @nodoc
abstract class $AgeUnfocusedCopyWith<$Res> {
  factory $AgeUnfocusedCopyWith(
          AgeUnfocused value, $Res Function(AgeUnfocused) then) =
      _$AgeUnfocusedCopyWithImpl<$Res>;
}

/// @nodoc
class _$AgeUnfocusedCopyWithImpl<$Res>
    extends _$RegisterFormEventCopyWithImpl<$Res>
    implements $AgeUnfocusedCopyWith<$Res> {
  _$AgeUnfocusedCopyWithImpl(
      AgeUnfocused _value, $Res Function(AgeUnfocused) _then)
      : super(_value, (v) => _then(v as AgeUnfocused));

  @override
  AgeUnfocused get _value => super._value as AgeUnfocused;
}

/// @nodoc

class _$AgeUnfocused implements AgeUnfocused {
  const _$AgeUnfocused();

  @override
  String toString() {
    return 'RegisterFormEvent.ageUnfocused()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is AgeUnfocused);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email) emailChanged,
    required TResult Function() emailUnfocused,
    required TResult Function() ageUnfocused,
    required TResult Function(String password) passwordChanged,
    required TResult Function(String age) ageChanged,
    required TResult Function() passwordUnfocused,
    required TResult Function() formSubmitted,
  }) {
    return ageUnfocused();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email)? emailChanged,
    TResult Function()? emailUnfocused,
    TResult Function()? ageUnfocused,
    TResult Function(String password)? passwordChanged,
    TResult Function(String age)? ageChanged,
    TResult Function()? passwordUnfocused,
    TResult Function()? formSubmitted,
    required TResult orElse(),
  }) {
    if (ageUnfocused != null) {
      return ageUnfocused();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EmailChanged value) emailChanged,
    required TResult Function(EmailUnfocused value) emailUnfocused,
    required TResult Function(AgeUnfocused value) ageUnfocused,
    required TResult Function(PasswordChanged value) passwordChanged,
    required TResult Function(AgeChanged value) ageChanged,
    required TResult Function(PasswordUnfocused value) passwordUnfocused,
    required TResult Function(FormSubmitted value) formSubmitted,
  }) {
    return ageUnfocused(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EmailChanged value)? emailChanged,
    TResult Function(EmailUnfocused value)? emailUnfocused,
    TResult Function(AgeUnfocused value)? ageUnfocused,
    TResult Function(PasswordChanged value)? passwordChanged,
    TResult Function(AgeChanged value)? ageChanged,
    TResult Function(PasswordUnfocused value)? passwordUnfocused,
    TResult Function(FormSubmitted value)? formSubmitted,
    required TResult orElse(),
  }) {
    if (ageUnfocused != null) {
      return ageUnfocused(this);
    }
    return orElse();
  }
}

abstract class AgeUnfocused implements RegisterFormEvent {
  const factory AgeUnfocused() = _$AgeUnfocused;
}

/// @nodoc
abstract class $PasswordChangedCopyWith<$Res> {
  factory $PasswordChangedCopyWith(
          PasswordChanged value, $Res Function(PasswordChanged) then) =
      _$PasswordChangedCopyWithImpl<$Res>;
  $Res call({String password});
}

/// @nodoc
class _$PasswordChangedCopyWithImpl<$Res>
    extends _$RegisterFormEventCopyWithImpl<$Res>
    implements $PasswordChangedCopyWith<$Res> {
  _$PasswordChangedCopyWithImpl(
      PasswordChanged _value, $Res Function(PasswordChanged) _then)
      : super(_value, (v) => _then(v as PasswordChanged));

  @override
  PasswordChanged get _value => super._value as PasswordChanged;

  @override
  $Res call({
    Object? password = freezed,
  }) {
    return _then(PasswordChanged(
      password == freezed
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$PasswordChanged implements PasswordChanged {
  const _$PasswordChanged(this.password);

  @override
  final String password;

  @override
  String toString() {
    return 'RegisterFormEvent.passwordChanged(password: $password)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is PasswordChanged &&
            (identical(other.password, password) ||
                const DeepCollectionEquality()
                    .equals(other.password, password)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(password);

  @JsonKey(ignore: true)
  @override
  $PasswordChangedCopyWith<PasswordChanged> get copyWith =>
      _$PasswordChangedCopyWithImpl<PasswordChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email) emailChanged,
    required TResult Function() emailUnfocused,
    required TResult Function() ageUnfocused,
    required TResult Function(String password) passwordChanged,
    required TResult Function(String age) ageChanged,
    required TResult Function() passwordUnfocused,
    required TResult Function() formSubmitted,
  }) {
    return passwordChanged(password);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email)? emailChanged,
    TResult Function()? emailUnfocused,
    TResult Function()? ageUnfocused,
    TResult Function(String password)? passwordChanged,
    TResult Function(String age)? ageChanged,
    TResult Function()? passwordUnfocused,
    TResult Function()? formSubmitted,
    required TResult orElse(),
  }) {
    if (passwordChanged != null) {
      return passwordChanged(password);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EmailChanged value) emailChanged,
    required TResult Function(EmailUnfocused value) emailUnfocused,
    required TResult Function(AgeUnfocused value) ageUnfocused,
    required TResult Function(PasswordChanged value) passwordChanged,
    required TResult Function(AgeChanged value) ageChanged,
    required TResult Function(PasswordUnfocused value) passwordUnfocused,
    required TResult Function(FormSubmitted value) formSubmitted,
  }) {
    return passwordChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EmailChanged value)? emailChanged,
    TResult Function(EmailUnfocused value)? emailUnfocused,
    TResult Function(AgeUnfocused value)? ageUnfocused,
    TResult Function(PasswordChanged value)? passwordChanged,
    TResult Function(AgeChanged value)? ageChanged,
    TResult Function(PasswordUnfocused value)? passwordUnfocused,
    TResult Function(FormSubmitted value)? formSubmitted,
    required TResult orElse(),
  }) {
    if (passwordChanged != null) {
      return passwordChanged(this);
    }
    return orElse();
  }
}

abstract class PasswordChanged implements RegisterFormEvent {
  const factory PasswordChanged(String password) = _$PasswordChanged;

  String get password => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PasswordChangedCopyWith<PasswordChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AgeChangedCopyWith<$Res> {
  factory $AgeChangedCopyWith(
          AgeChanged value, $Res Function(AgeChanged) then) =
      _$AgeChangedCopyWithImpl<$Res>;
  $Res call({String age});
}

/// @nodoc
class _$AgeChangedCopyWithImpl<$Res>
    extends _$RegisterFormEventCopyWithImpl<$Res>
    implements $AgeChangedCopyWith<$Res> {
  _$AgeChangedCopyWithImpl(AgeChanged _value, $Res Function(AgeChanged) _then)
      : super(_value, (v) => _then(v as AgeChanged));

  @override
  AgeChanged get _value => super._value as AgeChanged;

  @override
  $Res call({
    Object? age = freezed,
  }) {
    return _then(AgeChanged(
      age == freezed
          ? _value.age
          : age // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$AgeChanged implements AgeChanged {
  const _$AgeChanged(this.age);

  @override
  final String age;

  @override
  String toString() {
    return 'RegisterFormEvent.ageChanged(age: $age)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is AgeChanged &&
            (identical(other.age, age) ||
                const DeepCollectionEquality().equals(other.age, age)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(age);

  @JsonKey(ignore: true)
  @override
  $AgeChangedCopyWith<AgeChanged> get copyWith =>
      _$AgeChangedCopyWithImpl<AgeChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email) emailChanged,
    required TResult Function() emailUnfocused,
    required TResult Function() ageUnfocused,
    required TResult Function(String password) passwordChanged,
    required TResult Function(String age) ageChanged,
    required TResult Function() passwordUnfocused,
    required TResult Function() formSubmitted,
  }) {
    return ageChanged(age);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email)? emailChanged,
    TResult Function()? emailUnfocused,
    TResult Function()? ageUnfocused,
    TResult Function(String password)? passwordChanged,
    TResult Function(String age)? ageChanged,
    TResult Function()? passwordUnfocused,
    TResult Function()? formSubmitted,
    required TResult orElse(),
  }) {
    if (ageChanged != null) {
      return ageChanged(age);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EmailChanged value) emailChanged,
    required TResult Function(EmailUnfocused value) emailUnfocused,
    required TResult Function(AgeUnfocused value) ageUnfocused,
    required TResult Function(PasswordChanged value) passwordChanged,
    required TResult Function(AgeChanged value) ageChanged,
    required TResult Function(PasswordUnfocused value) passwordUnfocused,
    required TResult Function(FormSubmitted value) formSubmitted,
  }) {
    return ageChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EmailChanged value)? emailChanged,
    TResult Function(EmailUnfocused value)? emailUnfocused,
    TResult Function(AgeUnfocused value)? ageUnfocused,
    TResult Function(PasswordChanged value)? passwordChanged,
    TResult Function(AgeChanged value)? ageChanged,
    TResult Function(PasswordUnfocused value)? passwordUnfocused,
    TResult Function(FormSubmitted value)? formSubmitted,
    required TResult orElse(),
  }) {
    if (ageChanged != null) {
      return ageChanged(this);
    }
    return orElse();
  }
}

abstract class AgeChanged implements RegisterFormEvent {
  const factory AgeChanged(String age) = _$AgeChanged;

  String get age => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AgeChangedCopyWith<AgeChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PasswordUnfocusedCopyWith<$Res> {
  factory $PasswordUnfocusedCopyWith(
          PasswordUnfocused value, $Res Function(PasswordUnfocused) then) =
      _$PasswordUnfocusedCopyWithImpl<$Res>;
}

/// @nodoc
class _$PasswordUnfocusedCopyWithImpl<$Res>
    extends _$RegisterFormEventCopyWithImpl<$Res>
    implements $PasswordUnfocusedCopyWith<$Res> {
  _$PasswordUnfocusedCopyWithImpl(
      PasswordUnfocused _value, $Res Function(PasswordUnfocused) _then)
      : super(_value, (v) => _then(v as PasswordUnfocused));

  @override
  PasswordUnfocused get _value => super._value as PasswordUnfocused;
}

/// @nodoc

class _$PasswordUnfocused implements PasswordUnfocused {
  const _$PasswordUnfocused();

  @override
  String toString() {
    return 'RegisterFormEvent.passwordUnfocused()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is PasswordUnfocused);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email) emailChanged,
    required TResult Function() emailUnfocused,
    required TResult Function() ageUnfocused,
    required TResult Function(String password) passwordChanged,
    required TResult Function(String age) ageChanged,
    required TResult Function() passwordUnfocused,
    required TResult Function() formSubmitted,
  }) {
    return passwordUnfocused();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email)? emailChanged,
    TResult Function()? emailUnfocused,
    TResult Function()? ageUnfocused,
    TResult Function(String password)? passwordChanged,
    TResult Function(String age)? ageChanged,
    TResult Function()? passwordUnfocused,
    TResult Function()? formSubmitted,
    required TResult orElse(),
  }) {
    if (passwordUnfocused != null) {
      return passwordUnfocused();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EmailChanged value) emailChanged,
    required TResult Function(EmailUnfocused value) emailUnfocused,
    required TResult Function(AgeUnfocused value) ageUnfocused,
    required TResult Function(PasswordChanged value) passwordChanged,
    required TResult Function(AgeChanged value) ageChanged,
    required TResult Function(PasswordUnfocused value) passwordUnfocused,
    required TResult Function(FormSubmitted value) formSubmitted,
  }) {
    return passwordUnfocused(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EmailChanged value)? emailChanged,
    TResult Function(EmailUnfocused value)? emailUnfocused,
    TResult Function(AgeUnfocused value)? ageUnfocused,
    TResult Function(PasswordChanged value)? passwordChanged,
    TResult Function(AgeChanged value)? ageChanged,
    TResult Function(PasswordUnfocused value)? passwordUnfocused,
    TResult Function(FormSubmitted value)? formSubmitted,
    required TResult orElse(),
  }) {
    if (passwordUnfocused != null) {
      return passwordUnfocused(this);
    }
    return orElse();
  }
}

abstract class PasswordUnfocused implements RegisterFormEvent {
  const factory PasswordUnfocused() = _$PasswordUnfocused;
}

/// @nodoc
abstract class $FormSubmittedCopyWith<$Res> {
  factory $FormSubmittedCopyWith(
          FormSubmitted value, $Res Function(FormSubmitted) then) =
      _$FormSubmittedCopyWithImpl<$Res>;
}

/// @nodoc
class _$FormSubmittedCopyWithImpl<$Res>
    extends _$RegisterFormEventCopyWithImpl<$Res>
    implements $FormSubmittedCopyWith<$Res> {
  _$FormSubmittedCopyWithImpl(
      FormSubmitted _value, $Res Function(FormSubmitted) _then)
      : super(_value, (v) => _then(v as FormSubmitted));

  @override
  FormSubmitted get _value => super._value as FormSubmitted;
}

/// @nodoc

class _$FormSubmitted implements FormSubmitted {
  const _$FormSubmitted();

  @override
  String toString() {
    return 'RegisterFormEvent.formSubmitted()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is FormSubmitted);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email) emailChanged,
    required TResult Function() emailUnfocused,
    required TResult Function() ageUnfocused,
    required TResult Function(String password) passwordChanged,
    required TResult Function(String age) ageChanged,
    required TResult Function() passwordUnfocused,
    required TResult Function() formSubmitted,
  }) {
    return formSubmitted();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email)? emailChanged,
    TResult Function()? emailUnfocused,
    TResult Function()? ageUnfocused,
    TResult Function(String password)? passwordChanged,
    TResult Function(String age)? ageChanged,
    TResult Function()? passwordUnfocused,
    TResult Function()? formSubmitted,
    required TResult orElse(),
  }) {
    if (formSubmitted != null) {
      return formSubmitted();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EmailChanged value) emailChanged,
    required TResult Function(EmailUnfocused value) emailUnfocused,
    required TResult Function(AgeUnfocused value) ageUnfocused,
    required TResult Function(PasswordChanged value) passwordChanged,
    required TResult Function(AgeChanged value) ageChanged,
    required TResult Function(PasswordUnfocused value) passwordUnfocused,
    required TResult Function(FormSubmitted value) formSubmitted,
  }) {
    return formSubmitted(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EmailChanged value)? emailChanged,
    TResult Function(EmailUnfocused value)? emailUnfocused,
    TResult Function(AgeUnfocused value)? ageUnfocused,
    TResult Function(PasswordChanged value)? passwordChanged,
    TResult Function(AgeChanged value)? ageChanged,
    TResult Function(PasswordUnfocused value)? passwordUnfocused,
    TResult Function(FormSubmitted value)? formSubmitted,
    required TResult orElse(),
  }) {
    if (formSubmitted != null) {
      return formSubmitted(this);
    }
    return orElse();
  }
}

abstract class FormSubmitted implements RegisterFormEvent {
  const factory FormSubmitted() = _$FormSubmitted;
}
