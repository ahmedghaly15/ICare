import 'package:icare/src/core/models/no_params.dart';
import 'package:icare/src/core/firebase/firebase_request_result.dart';
import 'package:icare/src/core/models/icare_user.dart';
import 'package:icare/src/core/usecases/firebase_usecase.dart';
import 'package:icare/src/features/user/domain/repositories/user_repo.dart';

class GetUserDataUseCase implements FirebaseUseCase<ICareUser, NoParams> {
  final UserRepo _userRepo;

  const GetUserDataUseCase(this._userRepo);

  @override
  Future<FirebaseRequestResult<ICareUser>> call(NoParams params) async {
    return await _userRepo.getUserData();
  }
}
