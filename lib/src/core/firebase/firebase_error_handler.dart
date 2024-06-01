import 'package:firebase_auth/firebase_auth.dart';
import 'package:icare/src/core/errors/failure.dart';
import 'package:icare/src/core/utils/app_strings.dart';

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
      case FirebaseAuthCodes.requiresRecentLogin:
        return const FirebaseErrorHandler(
          failureMsg: FirebaseAuthErrorMessages.requiresRecentLogin,
        );
      case FirebaseAuthCodes.networkRequestFailed:
        return const FirebaseErrorHandler(
          failureMsg: FirebaseAuthErrorMessages.networkRequestFailed,
        );
      case FirebaseAuthCodes.userDisabled:
        return const FirebaseErrorHandler(
          failureMsg: FirebaseAuthErrorMessages.userDisabled,
        );
      case FirebaseAuthCodes.userTokenExpired:
        return const FirebaseErrorHandler(
          failureMsg: FirebaseAuthErrorMessages.userTokenExpired,
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
  static const String defaultError = AppStrings.unKnownError;
  static const String invalidCredential =
      'Incorrect login details. Please ensure your email and password are correct.';
  static const String requiresRecentLogin =
      'Requires recent login. Please log in again.';
  static const String networkRequestFailed =
      'A network request failed. Please check your internet connection and try again.';
  static const String userDisabled =
      'The user account has been disabled by an administrator.';
  static const String userTokenExpired =
      'Your credentials have expired. Please log in again.';
}

class FirebaseAuthCodes {
  static const String userNotFound = 'user-not-found';
  static const String wrongPassword = 'wrong-password';
  static const String weakPassword = 'weak-password';
  static const String emailAlreadyInUse = 'email-already-in-use';
  static const String invalidEmail = 'invalid-email';
  static const String invalidCredential = 'invalid-credential';
  static const String requiresRecentLogin = 'requires-recent-login';
  static const String networkRequestFailed = 'network-request-failed';
  static const String userDisabled = 'user-disabled';
  static const String userTokenExpired = 'user-token-expired';
}
