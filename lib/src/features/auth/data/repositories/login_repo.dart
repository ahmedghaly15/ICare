import 'package:icare/src/core/firebase/firebase_request_result.dart';
import 'package:icare/src/core/utils/functions/execute_and_handle_firebase_errors.dart';
import 'package:icare/src/features/auth/data/datasources/login_datasource.dart';
import 'package:icare/src/features/auth/data/models/login_request_params.dart';

class LoginRepo {
  final LoginDataSource loginDataSource;

  const LoginRepo({required this.loginDataSource});

  Future<FirebaseRequestResult> login(LoginRequestParams params) async {
    return executeAndHandleFirebaseErrors(
      () async => await loginDataSource.login(params),
    );
  }
}
