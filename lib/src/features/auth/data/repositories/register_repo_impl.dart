import 'package:icare/src/core/firebase/firebase_request_result.dart';
import 'package:icare/src/core/utils/functions/execute_and_handle_firebase_errors.dart';
import 'package:icare/src/features/auth/data/datasources/register_datasource.dart';
import 'package:icare/src/features/auth/data/models/create_firestore_user_params.dart';
import 'package:icare/src/features/auth/data/models/register_request_params.dart';
import 'package:icare/src/features/auth/domain/repositories/register_repo.dart';

class RegisterRepoImpl implements RegisterRepo {
  final RegisterDataSource _registerDataSource;

  const RegisterRepoImpl(this._registerDataSource);

  @override
  Future<FirebaseRequestResult> createFirestoreUser(
    CreateFirestoreUserParams params,
  ) {
    return executeAndHandleFirebaseErrors(
      () async => await _registerDataSource.createFirestoreUser(params),
    );
  }

  @override
  Future<FirebaseRequestResult> register(RegisterRequestParams params) {
    return executeAndHandleFirebaseErrors(
      () async => await _registerDataSource.register(params),
    );
  }
}
