import 'package:icare/src/core/firebase/firebase_request_result.dart';
import 'package:icare/src/core/usecases/my_usecase.dart';
import 'package:icare/src/features/auth/data/models/register_request_params.dart';
import 'package:icare/src/features/auth/domain/repositories/register_repo.dart';

class RegisterUseCase
    implements MyUseCase<FirebaseRequestResult, RegisterRequestParams> {
  final RegisterRepo _registerRepo;

  const RegisterUseCase(this._registerRepo);

  @override
  Future<FirebaseRequestResult> call(RegisterRequestParams params) async {
    return _registerRepo.register(params);
  }
}
