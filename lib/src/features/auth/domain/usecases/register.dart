import 'package:firebase_auth/firebase_auth.dart';
import 'package:icare/src/core/firebase/firebase_request_result.dart';
import 'package:icare/src/core/usecases/firebase_usecase.dart';
import 'package:icare/src/features/auth/data/models/auth_request_params.dart';
import 'package:icare/src/features/auth/domain/repositories/register_repo.dart';

class RegisterUseCase
    implements FirebaseUseCase<UserCredential, AuthRequestParams> {
  final RegisterRepo _registerRepo;

  const RegisterUseCase(this._registerRepo);

  @override
  Future<FirebaseRequestResult<UserCredential>> call(
    AuthRequestParams params,
  ) async {
    return await _registerRepo.register(params);
  }
}
