import 'package:icare/src/core/firebase/firebase_request_result.dart';
import 'package:icare/src/core/usecases/firebase_usecase.dart';
import 'package:icare/src/features/profile/data/repositories/edit_profile_repo.dart';

class UpdatePasswordUseCase implements FirebaseUseCase<void, String> {
  final EditProfileRepo _editProfileRepo;

  const UpdatePasswordUseCase(this._editProfileRepo);

  @override
  Future<FirebaseRequestResult<void>> call(String params) async {
    return await _editProfileRepo.updatePassword(params);
  }
}
