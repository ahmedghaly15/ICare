import 'package:icare/src/core/entities/no_params.dart';
import 'package:icare/src/core/firebase/firebase_request_result.dart';
import 'package:icare/src/core/usecases/firebase_usecase.dart';
import 'package:icare/src/features/user/domain/repositories/user_repo.dart';

class SignOutUseCase implements FirebaseUseCase<void, NoParams> {
  final UserRepo _userRepo;

  const SignOutUseCase(this._userRepo);

  @override
  Future<FirebaseRequestResult<void>> call(NoParams params) async {
    return await _userRepo.signOut();
  }
}
