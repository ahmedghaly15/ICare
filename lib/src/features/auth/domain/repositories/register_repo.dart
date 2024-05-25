import 'package:firebase_auth/firebase_auth.dart';
import 'package:icare/src/core/firebase/firebase_request_result.dart';
import 'package:icare/src/features/auth/data/models/auth_request_params.dart';
import 'package:icare/src/features/auth/data/models/create_firestore_user_params.dart';

abstract class RegisterRepo {
  Future<FirebaseRequestResult<UserCredential>> register(
      AuthRequestParams params);

  Future<FirebaseRequestResult<void>> createFirestoreUser(
    CreateFirestoreUserParams params,
  );
}
