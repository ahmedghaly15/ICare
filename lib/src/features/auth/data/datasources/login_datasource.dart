import 'package:firebase_auth/firebase_auth.dart';
import 'package:icare/dependency_injection.dart';
import 'package:icare/src/features/auth/data/models/login_request_params.dart';

abstract class LoginDataSource {
  Future<UserCredential> login(LoginRequestParams params); // <>
}

class LoginDataSourceImpl implements LoginDataSource {
  @override
  Future<UserCredential> login(LoginRequestParams params) async {
    return await getIt.get<FirebaseAuth>().signInWithEmailAndPassword(
          email: params.email,
          password: params.password,
        );
  }
}
