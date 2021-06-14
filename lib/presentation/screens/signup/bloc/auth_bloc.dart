import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:travelplanner/data/models/firebase/auth.dart';
import 'package:tuple/tuple.dart';

part 'auth_event.dart';
part 'auth_state.dart';
part 'auth_bloc.freezed.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  AuthBloc() : super(const _Initial()) {
    add(const Started());
  }

  final userRepo = Auth();

  Future<void> saveUserCredential(String email, String password) async {
    //TODO!
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setStringList('userAuth', [email, password]);
  }

  Future<Tuple2<String, String>?> loadUserCredential() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    final authList = prefs.getStringList('userAuth');
    if (authList != null) {
      return Tuple2(authList[0], authList[1]);
    }
  }

  @override
  Stream<AuthState> mapEventToState(
    AuthEvent event,
  ) async* {
    if (event is Started) {
      final userCred = await loadUserCredential();
      if (userCred != null) {
        final signUpResult = await userRepo.signInWithCredentials(
            email: userCred.item1, password: userCred.item2);
        yield signUpResult.fold(
          (ok) {
            return _Authenticated(ok);
          },
          (error) => _Error(error.message),
        );
      }
    } else if (event is CreateUserWithEmailAndPassword) {
      final signUpResult =
          await userRepo.signUp(email: event.email, password: event.password);
      yield signUpResult.fold(
        (ok) {
          return _Created(ok);
        },
        (error) => _Error(error.message),
      );
    } else if (event is SignInUserWithEmailAndPassword) {
      final signUpResult = await userRepo.signInWithCredentials(
          email: event.email, password: event.password);
      yield signUpResult.fold(
        (ok) {
          saveUserCredential(event.email, event.password);
          return _Authenticated(ok);
        },
        (error) => _Error(error.message),
      );
    } else if (event is Logout) {
      final SharedPreferences prefs = await SharedPreferences.getInstance();
      await prefs.remove("userAuth");
      yield const _Logouted();
    }
  }
}
