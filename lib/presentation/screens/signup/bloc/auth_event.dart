part of 'auth_bloc.dart';

@freezed
class AuthEvent with _$AuthEvent {
  const factory AuthEvent.started() = Started;
  const factory AuthEvent.createUserWithEmailAndPassword(
      String email, String password) = CreateUserWithEmailAndPassword;
  const factory AuthEvent.signInWithGoogle() = SignInWithGoogle;
  const factory AuthEvent.signInUserWithEmailAndPassword(
      String email, String password) = SignInUserWithEmailAndPassword;
  const factory AuthEvent.logout() = Logout;
}
