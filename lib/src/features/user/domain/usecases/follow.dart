import 'package:icare/src/core/firebase/firebase_request_result.dart';
import 'package:icare/src/core/models/icare_user.dart';
import 'package:icare/src/core/usecases/firebase_usecase.dart';
import 'package:icare/src/features/user/domain/repositories/user_repo.dart';

class FollowUseCase implements FirebaseUseCase<void, ICareUser> {
  final UserRepo _userRepo;

  const FollowUseCase(this._userRepo);

  @override
  Future<FirebaseRequestResult<void>> call(ICareUser params) async {
    return await _userRepo.follow(params);
  }
}
