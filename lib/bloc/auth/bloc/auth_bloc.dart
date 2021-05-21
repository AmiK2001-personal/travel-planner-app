import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:travelplanner/models/firebase/user_repository.dart';

part 'auth_event.dart';
part 'auth_state.dart';
part 'auth_bloc.freezed.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  AuthBloc() : super(const _Initial());

  final userRepo = UserRepository();

  @override
  Stream<AuthState> mapEventToState(
    AuthEvent event,
  ) async* {
    if (event is CreateUserWithEmailAndPassword) {
      final signUpResult =
          await userRepo.signUp(email: event.email, password: event.password);
      yield signUpResult.fold(
        (ok) => _Created(ok),
        (error) => _Error(error.message),
      );
    } else if (event is SignInUserWithEmailAndPassword) {
      final signUpResult = await userRepo.signInWithCredentials(
          email: event.email, password: event.password);
      yield signUpResult.fold(
        (ok) => _Authenticated(ok),
        (error) => _Error(error.message),
      );
    }
  }
}
