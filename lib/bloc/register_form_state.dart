part of 'register_form_bloc.dart';

class RegisterFormState extends Equatable {
  const RegisterFormState(
      {this.email = const Email.pure(),
      this.password = const Password.pure(),
      this.status = FormzStatus.pure,
      this.age = 0});

  final Email email;
  final Password password;
  final FormzStatus status;
  final int age;

  RegisterFormState copyWith(
      {Email? email, Password? password, FormzStatus? status, int? age}) {
    return RegisterFormState(
        email: email ?? this.email,
        password: password ?? this.password,
        status: status ?? this.status,
        age: age ?? this.age);
  }

  @override
  List<Object> get props => [email, password, status, age];
}
