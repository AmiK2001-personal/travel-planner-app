import 'package:freezed_annotation/freezed_annotation.dart';

part 'signin_event.freezed.dart';

@freezed
class LoginFormEvent with _$LoginFormEvent {
  const factory LoginFormEvent.emailChanged(String email) = EmailChanged;
  const factory LoginFormEvent.emailUnfocused() = EmailUnfocused;
  const factory LoginFormEvent.passwordChanged(String password) =
      PasswordChanged;
  const factory LoginFormEvent.passwordUnfocused() = PasswordUnfocused;
  const factory LoginFormEvent.formSubmitted() = FormSubmitted;
}
