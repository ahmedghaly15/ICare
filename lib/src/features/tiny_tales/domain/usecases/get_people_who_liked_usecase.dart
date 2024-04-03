import 'package:icare/src/core/firebase/firebase_request_result.dart';
import 'package:icare/src/core/models/icare_user.dart';
import 'package:icare/src/core/usecases/firebase_usecase.dart';
import 'package:icare/src/features/tiny_tales/domain/repositories/tiny_tales_repo.dart';

class GetPeopleWhoLikedUseCase
    implements FirebaseUseCase<List<ICareUser>, String> {
  final TinyTalesRepo _tinyTaleRepo;

  const GetPeopleWhoLikedUseCase(this._tinyTaleRepo);

  @override
  Future<FirebaseRequestResult<List<ICareUser>>> call(String params) async {
    return await _tinyTaleRepo.getPeopleWhoLiked(params);
  }
}
