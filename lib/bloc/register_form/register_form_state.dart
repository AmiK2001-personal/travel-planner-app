import 'package:formz/formz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:travel_planner_app/models/validation/validation.dart';

part 'register_form_state.freezed.dart';

@freezed
class RegisterFormState with _$RegisterFormState {
  const factory RegisterFormState(
      {@Default(Number.pure()) Number age,
      @Default(Email.pure()) Email email,
      @Default(Password.pure()) Password password,
      @Default(FormzStatus.pure) FormzStatus status}) = _RegisterFormState;
}
