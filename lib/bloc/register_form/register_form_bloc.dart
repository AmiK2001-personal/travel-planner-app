import 'dart:async';
import 'package:bloc/bloc.dart';
import 'package:travelplanner/models/validation/validation.dart';
import 'package:formz/formz.dart';

import 'register_form_event.dart';
import 'register_form_state.dart';

class RegisterFormBloc extends Bloc<RegisterFormEvent, RegisterFormState> {
  RegisterFormBloc() : super(const RegisterFormState());

  @override
  Stream<RegisterFormState> mapEventToState(RegisterFormEvent event) async* {
    if (event is EmailChanged) {
      final email = Email.dirty(event.email);
      yield state.copyWith(
        email: email.valid ? email : Email.pure(event.email),
        status: Formz.validate([email, state.password]),
      );
    } else if (event is PasswordChanged) {
      final password = Password.dirty(event.password);
      yield state.copyWith(
        password: password.valid ? password : Password.pure(event.password),
        status: Formz.validate([state.email, password]),
      );
    } else if (event is AgeChanged) {
      final age = Number.dirty(event.age);
      yield state.copyWith(
        age: age.valid ? age : Number.pure(event.age),
        status: Formz.validate([age, age]),
      );
    } else if (event is EmailUnfocused) {
      final email = Email.dirty(state.email.value);
      yield state.copyWith(
        email: email,
        status: Formz.validate([email, state.password]),
      );
    } else if (event is PasswordUnfocused) {
      final password = Password.dirty(state.password.value);
      yield state.copyWith(
        password: password,
        status: Formz.validate([state.email, password]),
      );
    } else if (event is AgeUnfocused) {
      final age = Number.dirty(state.age.value);
      yield state.copyWith(
        age: age,
        status: Formz.validate([state.email, age]),
      );
    } else if (event is FormSubmitted) {
      final email = Email.dirty(state.email.value);
      final password = Password.dirty(state.password.value);
      yield state.copyWith(
        email: email,
        password: password,
        status: Formz.validate([email, password]),
      );
      if (state.status.isValidated) {
        yield state.copyWith(status: FormzStatus.submissionInProgress);
        await Future<void>.delayed(const Duration(seconds: 1));
        yield state.copyWith(status: FormzStatus.submissionSuccess);
      }
    }
  }
}
