import 'package:icare/src/core/entities/no_params.dart';
import 'package:icare/src/core/firebase/firebase_request_result.dart';
import 'package:icare/src/core/usecases/firebase_usecase.dart';
import 'package:icare/src/features/profile/data/repositories/profile_repo.dart';
import 'package:icare/src/features/tiny_tales/data/models/photo.dart';

class GetUserPhotosUseCase implements FirebaseUseCase<List<Photo>, NoParams> {
  final ProfileRepo _profileRepo;

  const GetUserPhotosUseCase(this._profileRepo);

  @override
  Future<FirebaseRequestResult<List<Photo>>> call(NoParams params) async {
    return await _profileRepo.getUserPhotos();
  }
}
