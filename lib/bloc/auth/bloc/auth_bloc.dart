import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:firebase_auth/firebase_auth.dart';

part 'auth_event.dart';
part 'auth_state.dart';
part 'auth_bloc.freezed.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  AuthBloc() : super(const _Initial());

  final FirebaseAuth firebaseAuth = FirebaseAuth.instance;

  @override
  Stream<AuthState> mapEventToState(
    AuthEvent event,
  ) async* {
    if (event is CreateUserWithEmailAndPassword) {
      try {
        final userCredential =
            await firebaseAuth.createUserWithEmailAndPassword(
                email: event.email, password: event.password);
        yield _Created(userCredential);
      } on FirebaseAuthException catch (e) {
        switch (e.code) {
          case "email-already-in-use":
            yield const _Error("Почта уже занята");
            break;
          case "invalid-emai":
            yield const _Error("Неверная почта");
            break;
          case "operation-not-allowed":
            yield const _Error("Операция не разрешена");
            break;
          case "weak-password":
            yield const _Error("Слабый пароль");
            break;
          default:
            yield const _Error(
                "Произошла неизвестная ошибка во время создании аккаунта");
            break;
        }
      }
    }
  }
}
