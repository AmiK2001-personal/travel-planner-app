// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'login_form_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$LoginFormEventTearOff {
  const _$LoginFormEventTearOff();

  EmailChanged emailChanged(String email) {
    return EmailChanged(
      email,
    );
  }

  EmailUnfocused emailUnfocused() {
    return const EmailUnfocused();
  }

  PasswordChanged passwordChanged(String password) {
    return PasswordChanged(
      password,
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
const $LoginFormEvent = _$LoginFormEventTearOff();

/// @nodoc
mixin _$LoginFormEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email) emailChanged,
    required TResult Function() emailUnfocused,
    required TResult Function(String password) passwordChanged,
    required TResult Function() passwordUnfocused,
    required TResult Function() formSubmitted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email)? emailChanged,
    TResult Function()? emailUnfocused,
    TResult Function(String password)? passwordChanged,
    TResult Function()? passwordUnfocused,
    TResult Function()? formSubmitted,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EmailChanged value) emailChanged,
    required TResult Function(EmailUnfocused value) emailUnfocused,
    required TResult Function(PasswordChanged value) passwordChanged,
    required TResult Function(PasswordUnfocused value) passwordUnfocused,
    required TResult Function(FormSubmitted value) formSubmitted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EmailChanged value)? emailChanged,
    TResult Function(EmailUnfocused value)? emailUnfocused,
    TResult Function(PasswordChanged value)? passwordChanged,
    TResult Function(PasswordUnfocused value)? passwordUnfocused,
    TResult Function(FormSubmitted value)? formSubmitted,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoginFormEventCopyWith<$Res> {
  factory $LoginFormEventCopyWith(
          LoginFormEvent value, $Res Function(LoginFormEvent) then) =
      _$LoginFormEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$LoginFormEventCopyWithImpl<$Res>
    implements $LoginFormEventCopyWith<$Res> {
  _$LoginFormEventCopyWithImpl(this._value, this._then);

  final LoginFormEvent _value;
  // ignore: unused_field
  final $Res Function(LoginFormEvent) _then;
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
    extends _$LoginFormEventCopyWithImpl<$Res>
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
    return 'LoginFormEvent.emailChanged(email: $email)';
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
    required TResult Function(String password) passwordChanged,
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
    TResult Function(String password)? passwordChanged,
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
    required TResult Function(PasswordChanged value) passwordChanged,
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
    TResult Function(PasswordChanged value)? passwordChanged,
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

abstract class EmailChanged implements LoginFormEvent {
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
    extends _$LoginFormEventCopyWithImpl<$Res>
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
    return 'LoginFormEvent.emailUnfocused()';
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
    required TResult Function(String password) passwordChanged,
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
    TResult Function(String password)? passwordChanged,
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
    required TResult Function(PasswordChanged value) passwordChanged,
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
    TResult Function(PasswordChanged value)? passwordChanged,
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

abstract class EmailUnfocused implements LoginFormEvent {
  const factory EmailUnfocused() = _$EmailUnfocused;
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
    extends _$LoginFormEventCopyWithImpl<$Res>
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
    return 'LoginFormEvent.passwordChanged(password: $password)';
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
    required TResult Function(String password) passwordChanged,
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
    TResult Function(String password)? passwordChanged,
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
    required TResult Function(PasswordChanged value) passwordChanged,
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
    TResult Function(PasswordChanged value)? passwordChanged,
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

abstract class PasswordChanged implements LoginFormEvent {
  const factory PasswordChanged(String password) = _$PasswordChanged;

  String get password => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PasswordChangedCopyWith<PasswordChanged> get copyWith =>
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
    extends _$LoginFormEventCopyWithImpl<$Res>
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
    return 'LoginFormEvent.passwordUnfocused()';
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
    required TResult Function(String password) passwordChanged,
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
    TResult Function(String password)? passwordChanged,
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
    required TResult Function(PasswordChanged value) passwordChanged,
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
    TResult Function(PasswordChanged value)? passwordChanged,
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

abstract class PasswordUnfocused implements LoginFormEvent {
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
    extends _$LoginFormEventCopyWithImpl<$Res>
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
    return 'LoginFormEvent.formSubmitted()';
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
    required TResult Function(String password) passwordChanged,
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
    TResult Function(String password)? passwordChanged,
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
    required TResult Function(PasswordChanged value) passwordChanged,
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
    TResult Function(PasswordChanged value)? passwordChanged,
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

abstract class FormSubmitted implements LoginFormEvent {
  const factory FormSubmitted() = _$FormSubmitted;
}
