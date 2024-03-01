import 'package:firebase_auth/firebase_auth.dart';
import 'package:icare/dependency_injection.dart';

abstract class ForgotPasswordDataSource {
  Future<void> forgotPassword(String email);
}

class ForgotPasswordDataSourceImpl implements ForgotPasswordDataSource {
  const ForgotPasswordDataSourceImpl();

  @override
  Future<void> forgotPassword(String email) async {
    return await getIt.get<FirebaseAuth>().sendPasswordResetEmail(email: email);
  }
}
