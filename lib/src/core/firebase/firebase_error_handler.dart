import 'package:icare/src/core/errors/failure.dart';

class FirebaseErrorHandler extends Failure {
  const FirebaseErrorHandler({super.failureMsg});

  factory FirebaseErrorHandler.fromCode(String code) {
    switch (code) {
      case FirebaseCodes.userNotFound:
        return const FirebaseErrorHandler(
          failureMsg: FirebaseErrorMessages.userNotFound,
        );
      case FirebaseCodes.wrongPassword:
        return const FirebaseErrorHandler(
          failureMsg: FirebaseErrorMessages.wrongPassword,
        );
      case FirebaseCodes.weakPassword:
        return const FirebaseErrorHandler(
          failureMsg: FirebaseErrorMessages.weakPassword,
        );
      case FirebaseCodes.emailAlreadyInUse:
        return const FirebaseErrorHandler(
          failureMsg: FirebaseErrorMessages.emailAlreadyInUse,
        );
      case FirebaseCodes.invalidEmail:
        return const FirebaseErrorHandler(
          failureMsg: FirebaseErrorMessages.invalidEmail,
        );
      default:
        return const FirebaseErrorHandler(
          failureMsg: FirebaseErrorMessages.defaultError,
        );
    }
  }
}

class FirebaseErrorMessages {
  static const String userNotFound = 'User not found';
  static const String wrongPassword = 'Wrong password';
  static const String weakPassword = 'Weak password';
  static const String emailAlreadyInUse = 'Email already in use';
  static const String invalidEmail = 'Invalid email';
  static const String defaultError = 'An error occurred';
}

class FirebaseCodes {
  static const String userNotFound = 'user-not-found';
  static const String wrongPassword = 'wrong-password';
  static const String weakPassword = 'weak-password';
  static const String emailAlreadyInUse = 'email-already-in-use';
  static const String invalidEmail = 'invalid-email';
}
