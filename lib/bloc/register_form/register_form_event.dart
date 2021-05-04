import 'package:freezed_annotation/freezed_annotation.dart';

part 'register_form_event.freezed.dart';

@freezed
class RegisterFormEvent with _$RegisterFormEvent {
  const factory RegisterFormEvent.emailChanged(String email) = EmailChanged;
  const factory RegisterFormEvent.emailUnfocused() = EmailUnfocused;
  const factory RegisterFormEvent.ageUnfocused() = AgeUnfocused;
  const factory RegisterFormEvent.passwordChanged(String password) =
      PasswordChanged;
  const factory RegisterFormEvent.ageChanged(String age) = AgeChanged;
  const factory RegisterFormEvent.passwordUnfocused() = PasswordUnfocused;
  const factory RegisterFormEvent.formSubmitted() = FormSubmitted;
}
