import 'package:firebase_auth/firebase_auth.dart';
import 'package:icare/src/core/errors/failure.dart';

class FirebaseAuthErrorHandler extends Failure {
  const FirebaseAuthErrorHandler({super.failureMsg});

  factory FirebaseAuthErrorHandler.handleError(String error) {
    if (error is FirebaseException) {
      return FirebaseAuthErrorHandler.fromCode(error);
    } else {
      return FirebaseAuthErrorHandler(failureMsg: error);
    }
  }

  factory FirebaseAuthErrorHandler.fromCode(String code) {
    switch (code) {
      case FirebaseAuthCodes.userNotFound:
        return const FirebaseAuthErrorHandler(
          failureMsg: FirebaseAuthErrorMessages.userNotFound,
        );
      case FirebaseAuthCodes.wrongPassword:
        return const FirebaseAuthErrorHandler(
          failureMsg: FirebaseAuthErrorMessages.wrongPassword,
        );
      case FirebaseAuthCodes.weakPassword:
        return const FirebaseAuthErrorHandler(
          failureMsg: FirebaseAuthErrorMessages.weakPassword,
        );
      case FirebaseAuthCodes.emailAlreadyInUse:
        return const FirebaseAuthErrorHandler(
          failureMsg: FirebaseAuthErrorMessages.emailAlreadyInUse,
        );
      case FirebaseAuthCodes.invalidEmail:
        return const FirebaseAuthErrorHandler(
          failureMsg: FirebaseAuthErrorMessages.invalidEmail,
        );
      default:
        return const FirebaseAuthErrorHandler(
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
}

class FirebaseAuthCodes {
  static const String userNotFound = 'user-not-found';
  static const String wrongPassword = 'wrong-password';
  static const String weakPassword = 'weak-password';
  static const String emailAlreadyInUse = 'email-already-in-use';
  static const String invalidEmail = 'invalid-email';
}
