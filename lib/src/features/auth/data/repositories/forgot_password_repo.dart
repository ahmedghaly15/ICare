import 'package:icare/src/core/firebase/firebase_request_result.dart';
import 'package:icare/src/core/utils/functions/execute_and_handle_firebase_errors.dart';
import 'package:icare/src/features/auth/data/datasources/forgot_password_datasource.dart';

class ForgotPasswordRepo {
  final ForgotPasswordDataSource _forgotPasswordDataSource;

  const ForgotPasswordRepo(this._forgotPasswordDataSource);

  Future<FirebaseRequestResult> forgotPassword(String email) {
    return executeAndHandleFirebaseErrors(
      () async => await _forgotPasswordDataSource.forgotPassword(email),
    );
  }
}
