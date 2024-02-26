import 'package:firebase_auth/firebase_auth.dart';
import 'package:icare/dependency_injection.dart';
import 'package:icare/src/core/firebase/firebase_auth_error_handler.dart';
import 'package:icare/src/core/firebase/firebase_request_result.dart';
import 'package:icare/src/core/network/network_info.dart';
import 'package:icare/src/core/utils/app_strings.dart';

Future<FirebaseRequestResult> executeAndHandleFirebaseErrors(
  Future Function() function,
) async {
  if (await getIt.get<NetworkInfo>().isConnected) {
    try {
      final response = await function();

      return FirebaseRequestResult.success(data: response);
    } catch (error) {
      if (error is FirebaseException) {
        return FirebaseRequestResult.error(
          errorHandler: FirebaseAuthErrorHandler.handleError(error),
        );
      } else {
        return FirebaseRequestResult.error(
          errorHandler: FirebaseAuthErrorHandler.handleError(
            error.toString(),
          ),
        );
      }
    }
  } else {
    return FirebaseRequestResult.error(
      errorHandler: FirebaseAuthErrorHandler.handleError(
        AppStrings.noInternetConnection,
      ),
    );
  }
}
