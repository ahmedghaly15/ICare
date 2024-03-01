import 'package:icare/src/core/firebase/firebase_request_result.dart';
import 'package:icare/src/core/usecases/my_usecase.dart';
import 'package:icare/src/features/auth/data/models/login_request_params.dart';
import 'package:icare/src/features/auth/data/repositories/login_repo.dart';

class LoginUseCase
    implements MyUseCase<FirebaseRequestResult, LoginRequestParams> {
  final LoginRepo _loginRepo;

  const LoginUseCase(this._loginRepo);

  @override
  Future<FirebaseRequestResult> call(LoginRequestParams params) async {
    return await _loginRepo.login(params);
  }
}
