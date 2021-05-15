part of 'auth_bloc.dart';

@freezed
class AuthState with _$AuthState {
  const factory AuthState.initial() = _Initial;
  const factory AuthState.created(UserCredential userCredential) = _Created;
  const factory AuthState.authenticated(UserCredential userCredential) =
      _Authenticated;
  const factory AuthState.logouted(UserCredential userCredential) = _Logouted;
  const factory AuthState.error(String errorMessage) = _Error;
}
