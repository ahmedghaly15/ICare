import 'package:icare/src/core/firebase/firebase_request_result.dart';
import 'package:icare/src/core/usecases/firebase_usecase.dart';
import 'package:icare/src/features/tiny_tales/data/models/like_tiny_tale_params.dart';
import 'package:icare/src/features/tiny_tales/domain/repositories/tiny_tales_repo.dart';

class LikeTinyTaleUseCase implements FirebaseUseCase<void, LikeTinyTaleParams> {
  final TinyTalesRepo _tinyTalesRepo;

  const LikeTinyTaleUseCase(this._tinyTalesRepo);

  @override
  Future<FirebaseRequestResult<void>> call(LikeTinyTaleParams params) async {
    return await _tinyTalesRepo.likeTinyTale(params);
  }
}
