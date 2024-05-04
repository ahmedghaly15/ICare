import 'package:firebase_auth/firebase_auth.dart';
import 'package:icare/src/core/models/no_params.dart';
import 'package:icare/src/core/firebase/firebase_request_result.dart';
import 'package:icare/src/core/usecases/firebase_usecase.dart';
import 'package:icare/src/features/auth/data/repositories/login_repo.dart';

class SignInWithGoogleUseCase
    implements FirebaseUseCase<UserCredential, NoParams> {
  final LoginRepo _loginRepo;

  const SignInWithGoogleUseCase(this._loginRepo);

  @override
  Future<FirebaseRequestResult<UserCredential>> call(NoParams params) async {
    return await _loginRepo.signInWithGoogle();
  }
}
