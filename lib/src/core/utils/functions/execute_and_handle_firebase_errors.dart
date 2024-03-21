import 'package:firebase_auth/firebase_auth.dart';
import 'package:icare/dependency_injection.dart';
import 'package:icare/src/core/firebase/firebase_error_handler.dart';
import 'package:icare/src/core/firebase/firebase_request_result.dart';
import 'package:icare/src/core/network/network_info.dart';
import 'package:icare/src/core/utils/app_strings.dart';

Future<FirebaseRequestResult<T>> executeAndHandleFirebaseErrors<T>(
  Future Function() function,
) async {
  if (await getIt.get<NetworkInfo>().isConnected) {
    try {
      final response = await function();

      return FirebaseRequestResult<T>.success(response);
    } catch (error) {
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
