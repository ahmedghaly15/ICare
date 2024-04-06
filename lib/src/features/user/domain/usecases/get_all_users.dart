import 'package:icare/src/core/entities/no_params.dart';
import 'package:icare/src/core/firebase/firebase_request_result.dart';
import 'package:icare/src/core/models/icare_user.dart';
import 'package:icare/src/core/usecases/firebase_usecase.dart';
import 'package:icare/src/features/user/data/repositories/user_repo.dart';

class GetAllUsersUseCase implements FirebaseUseCase<List<ICareUser>, NoParams> {
  final UserRepo _userRepo;

  const GetAllUsersUseCase(this._userRepo);

  @override
  Future<FirebaseRequestResult<List<ICareUser>>> call(NoParams params) async {
    return await _userRepo.getAllUsers();
  }
}
