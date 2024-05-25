import 'package:icare/src/core/firebase/firebase_request_result.dart';
import 'package:icare/src/core/usecases/firebase_usecase.dart';
import 'package:icare/src/features/profile/data/repositories/profile_repo.dart';

class DeletePhotoFromPhotosUseCase implements FirebaseUseCase<void, String> {
  final ProfileRepo _profileRepo;

  const DeletePhotoFromPhotosUseCase(this._profileRepo);

  @override
  Future<FirebaseRequestResult<void>> call(String params) async {
    return await _profileRepo.deletePhotoFromPhotos(params);
  }
}
