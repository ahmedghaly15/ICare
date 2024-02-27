import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:icare/dependency_injection.dart';
import 'package:icare/src/features/auth/data/models/login_request_params.dart';

abstract class LoginDataSource {
  Future<UserCredential> login(LoginRequestParams params);

  Future signInWithGoogle();
}

class LoginDataSourceImpl implements LoginDataSource {
  @override
  Future<UserCredential> login(LoginRequestParams params) async {
    return await getIt.get<FirebaseAuth>().signInWithEmailAndPassword(
          email: params.email,
          password: params.password,
        );
  }

  @override
  Future signInWithGoogle() async {
    final GoogleSignInAccount? googleUser = await GoogleSignIn().signIn();

    if (googleUser == null) return;

    final GoogleSignInAuthentication googleAuth =
        await googleUser.authentication;

    final credential = GoogleAuthProvider.credential(
      accessToken: googleAuth.accessToken,
      idToken: googleAuth.idToken,
    );

    return await getIt.get<FirebaseAuth>().signInWithCredential(credential);
  }
}
