import 'package:formz/formz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:travelplanner/models/validation/validation.dart';

part 'login_form_state.freezed.dart';

@freezed
class LoginFormState with _$LoginFormState {
  const factory LoginFormState(
      {@Default(Email.pure()) Email email,
      @Default(Password.pure()) Password password,
      @Default(FormzStatus.pure) FormzStatus status}) = _LoginFormState;
}
