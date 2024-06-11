import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:icare/dependency_injection.dart';
import 'package:icare/src/core/firebase/firebase_error_handler.dart';
import 'package:icare/src/core/firebase/firebase_request_result.dart';
import 'package:icare/src/core/network/network_info.dart';
import 'package:icare/src/core/utils/app_strings.dart';

/// Executes a given asynchronous Firebase function and handles any errors that occur during its execution.
///
/// This method first checks if there is an active internet connection using [NetworkInfo].
/// If connected, it attempts to execute the [function] and wraps the result in a [FirebaseRequestResult.success] object.
/// If an error occurs, it logs the error using [debugPrint] and returns a [FirebaseRequestResult.error] object
/// with the error handled by [FirebaseErrorHandler].
///
/// In the case of no internet connection, it directly returns a [FirebaseRequestResult.error] object
/// with an appropriate error message from [AppStrings].
///
/// Example usage:
/// ```dart
/// Future<FirebaseRequestResult<MyData>> result = executeAndHandleFirebaseErrors(() async {
///   // Your asynchronous Firebase code here
/// });
/// ```
///
/// [T] is the type of the result that the function returns.
Future<FirebaseRequestResult<T>> executeAndHandleFirebaseErrors<T>(
  Future Function() function,
) async {
  if (await getIt.get<NetworkInfo>().isConnected) {
    try {
      final response = await function();
      return FirebaseRequestResult<T>.success(response);
    } catch (error) {
      debugPrint('Firebase error: $error');
      if (error is FirebaseAuthException) {
        return FirebaseRequestResult.error(
          FirebaseErrorHandler.handleError(error),
        );
      } else {
        return FirebaseRequestResult.error(
          FirebaseErrorHandler.handleError(error.toString()),
        );
      }
    }
  } else {
    return FirebaseRequestResult.error(
      FirebaseErrorHandler.handleError(AppStrings.noInternetConnection),
    );
  }
}
