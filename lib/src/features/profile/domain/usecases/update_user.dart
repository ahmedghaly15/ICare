import 'package:icare/src/core/firebase/firebase_request_result.dart';
import 'package:icare/src/core/usecases/firebase_usecase.dart';
import 'package:icare/src/features/profile/data/models/update_user_params.dart';
import 'package:icare/src/features/profile/data/repositories/edit_profile_repo.dart';

class UpdateUserUseCase implements FirebaseUseCase<void, UpdateUserParams> {
  final EditProfileRepo _editProfileRepo;

  const UpdateUserUseCase(this._editProfileRepo);

  @override
  Future<FirebaseRequestResult<void>> call(UpdateUserParams params) async {
    return await _editProfileRepo.updateUser(params);
  }
}
