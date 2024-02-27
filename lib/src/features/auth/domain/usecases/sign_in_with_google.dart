import 'package:icare/src/core/entities/no_params.dart';
import 'package:icare/src/core/firebase/firebase_request_result.dart';
import 'package:icare/src/core/usecases/base_usecase.dart';
import 'package:icare/src/features/auth/data/repositories/login_repo.dart';

class SignInWithGoogleUseCase
    implements BaseUseCases<FirebaseRequestResult, NoParams> {
  final LoginRepo _loginRepo;

  const SignInWithGoogleUseCase(this._loginRepo);

  @override
  Future<FirebaseRequestResult> call(NoParams params) async {
    return await _loginRepo.signInWithGoogle();
  }
}
