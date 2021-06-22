import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:formz/formz.dart';
import 'package:travelplanner/data/models/validation/validation.dart';

import 'signin_event.dart';
import 'signin_state.dart';

class LoginFormBloc extends Bloc<LoginFormEvent, LoginFormState> {
  LoginFormBloc() : super(const LoginFormState());

  @override
  Stream<LoginFormState> mapEventToState(LoginFormEvent event) async* {
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
