import 'package:icare/src/core/firebase/firebase_request_result.dart';
import 'package:icare/src/core/usecases/base_usecase.dart';
import 'package:icare/src/features/auth/data/repositories/forgot_password_repo.dart';

class ForgotPasswordUseCase
    implements BaseUseCases<FirebaseRequestResult, String> {
  final ForgotPasswordRepo _forgotPasswordRepo;

  const ForgotPasswordUseCase(this._forgotPasswordRepo);

  @override
  Future<FirebaseRequestResult> call(String params) async {
    return await _forgotPasswordRepo.forgotPassword(params);
  }
}
