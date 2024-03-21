import 'package:firebase_auth/firebase_auth.dart';
import 'package:icare/src/core/errors/failure.dart';

class FirebaseErrorHandler extends Failure {
  const FirebaseErrorHandler({super.failureMsg});

  factory FirebaseErrorHandler.handleError(dynamic error) {
    if (error is FirebaseException) {
      return FirebaseErrorHandler.fromCode(error.code);
    } else {
      return FirebaseErrorHandler(failureMsg: error);
    }
  }

  factory FirebaseErrorHandler.fromCode(String code) {
    switch (code) {
      case FirebaseAuthCodes.userNotFound:
        return const FirebaseErrorHandler(
          failureMsg: FirebaseAuthErrorMessages.userNotFound,
        );
      case FirebaseAuthCodes.wrongPassword:
        return const FirebaseErrorHandler(
          failureMsg: FirebaseAuthErrorMessages.wrongPassword,
        );
      case FirebaseAuthCodes.weakPassword:
        return const FirebaseErrorHandler(
          failureMsg: FirebaseAuthErrorMessages.weakPassword,
        );
      case FirebaseAuthCodes.emailAlreadyInUse:
        return const FirebaseErrorHandler(
          failureMsg: FirebaseAuthErrorMessages.emailAlreadyInUse,
        );
      case FirebaseAuthCodes.invalidEmail:
        return const FirebaseErrorHandler(
          failureMsg: FirebaseAuthErrorMessages.invalidEmail,
        );
      case FirebaseAuthCodes.invalidCredential:
        return const FirebaseErrorHandler(
          failureMsg: FirebaseAuthErrorMessages.invalidCredential,
        );
      default:
        return const FirebaseErrorHandler(
          failureMsg: FirebaseAuthErrorMessages.defaultError,
        );
    }
  }
}

class FirebaseAuthErrorMessages {
  static const String userNotFound = 'User not found';
  static const String wrongPassword = 'Wrong password';
  static const String weakPassword = 'Weak password';
  static const String emailAlreadyInUse = 'Email already in use';
  static const String invalidEmail = 'Invalid email';
  static const String defaultError = 'An error occurred';
  static const String invalidCredential =
      'Incorrect login details. Please ensure your email and password are correct.';
}

class FirebaseAuthCodes {
  static const String userNotFound = 'user-not-found';
  static const String wrongPassword = 'wrong-password';
  static const String weakPassword = 'weak-password';
  static const String emailAlreadyInUse = 'email-already-in-use';
  static const String invalidEmail = 'invalid-email';
  static const String invalidCredential = 'invalid-credential';
}
