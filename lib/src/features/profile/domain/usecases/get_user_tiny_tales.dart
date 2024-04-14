import 'package:icare/src/core/firebase/firebase_request_result.dart';
import 'package:icare/src/core/usecases/firebase_usecase.dart';
import 'package:icare/src/features/profile/data/repositories/profile_repo.dart';
import 'package:icare/src/features/tiny_tales/data/models/tiny_tale.dart';

class GetUserTinyTalesUseCase
    implements FirebaseUseCase<List<TinyTale>, String> {
  final ProfileRepo _profileRepo;

  const GetUserTinyTalesUseCase(this._profileRepo);

  @override
  Future<FirebaseRequestResult<List<TinyTale>>> call(String params) async {
    return await _profileRepo.getUserTinyTales(params);
  }
}
