part of 'register_form_bloc.dart';

abstract class RegisterFormEvent extends Equatable {
  const RegisterFormEvent();

  @override
  List<Object> get props => [];
}

class EmailChanged extends RegisterFormEvent {
  const EmailChanged({required this.email});

  final String email;

  @override
  List<Object> get props => [email];
}

class EmailUnfocused extends RegisterFormEvent {}

class PasswordChanged extends RegisterFormEvent {
  const PasswordChanged({required this.password});

  final String password;

  @override
  List<Object> get props => [password];
}

class PasswordUnfocused extends RegisterFormEvent {}

class FormSubmitted extends RegisterFormEvent {}

class AgeChanged extends RegisterFormEvent {
  const AgeChanged({required this.age});

  final int age;

  @override
  List<Object> get props => [age];
}
