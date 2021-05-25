import 'dart:async';
import 'package:dfunc/dfunc.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:travelplanner/models/error_message.dart';

class AuthRepository {
  final FirebaseAuth _firebaseAuth;
  final GoogleSignIn _googleSignIn;

  String firebaseAuthExceptionCodeToString(String exceptionCode) {
    switch (exceptionCode) {
      case "email-already-in-use":
        return "Почта уже занята";
      case "invalid-email":
        return "Неверная почта";
      case "operation-not-allowed":
        return "Операция не разрешена";
      case "weak-password":
        return "Слабый пароль";
      case "user-not-found":
        return "Пользователь не найден";
      case "user-disabled":
        return "Пользователь отключен";
      case "wrong-password":
        return "Неверный пароль";
      default:
        return "Произошла неизвестная ошибка во время создании аккаунта";
    }
  }

  AuthRepository({FirebaseAuth? firebaseAuth, GoogleSignIn? googleSignin})
      : _firebaseAuth = firebaseAuth ?? FirebaseAuth.instance,
        _googleSignIn = googleSignin ?? GoogleSignIn();

  Future<User?> signInWithGoogle() async {
    final GoogleSignInAccount? googleUser = await _googleSignIn.signIn();
    final GoogleSignInAuthentication googleAuth =
        await googleUser!.authentication;
    final AuthCredential credential = GoogleAuthProvider.credential(
      accessToken: googleAuth.accessToken,
      idToken: googleAuth.idToken,
    );
    await _firebaseAuth.signInWithCredential(credential);
    return _firebaseAuth.currentUser;
  }

  Future<Either<UserCredential, ErrorMessage>> signInWithCredentials(
      {required String email, required String password}) async {
    if (email.isNotEmpty && password.isNotEmpty) {
      try {
        return Either.left(
          await _firebaseAuth.signInWithEmailAndPassword(
            email: email,
            password: password,
          ),
        );
      } on FirebaseAuthException catch (e) {
        final errorMessage = firebaseAuthExceptionCodeToString(e.code);
        return Either.right(ErrorMessage(message: errorMessage, code: e.code));
      } catch (e) {
        return Either.right(
          ErrorMessage(code: "unknown", message: "Неизвестная ошибка", data: e),
        );
      }
    } else {
      return Either.right(
        ErrorMessage(
            code: "invalid-input",
            message: "Неверные данные для аутентификации"),
      );
    }
  }

  Future<Either<UserCredential, ErrorMessage>> signUp(
      {required String email, required String password}) async {
    if (email.isNotEmpty && password.isNotEmpty) {
      try {
        return Either.left(
          await _firebaseAuth.createUserWithEmailAndPassword(
            email: email,
            password: password,
          ),
        );
      } on FirebaseAuthException catch (e) {
        final errorMessage = firebaseAuthExceptionCodeToString(e.code);
        return Either.right(ErrorMessage(message: errorMessage, code: e.code));
      } catch (e) {
        return Either.right(
          ErrorMessage(code: "unknown", message: "Неизвестная ошибка", data: e),
        );
      }
    } else {
      return Either.right(
        ErrorMessage(
            code: "invalid-input",
            message: "Неверные данные для аутентификации"),
      );
    }
  }

  Future<List<void>> signOut() async {
    return Future.wait([
      _firebaseAuth.signOut(),
      _googleSignIn.signOut(),
    ]);
  }

  bool isSignedIn() {
    return _firebaseAuth.currentUser != null;
  }

  User? getUser() {
    return _firebaseAuth.currentUser;
  }
}
