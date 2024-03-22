import 'package:icare/src/core/firebase/firebase_request_result.dart';
import 'package:icare/src/core/usecases/firebase_usecase.dart';
import 'package:icare/src/features/tiny_tales/domain/repositories/tiny_tales_repo.dart';

class DeleteTinyTaleUseCase implements FirebaseUseCase<void, String> {
  final TinyTalesRepo _tinyTalesRepo;

  const DeleteTinyTaleUseCase(this._tinyTalesRepo);

  @override
  Future<FirebaseRequestResult<void>> call(String params) async {
    return await _tinyTalesRepo.deleteTinyTale(params);
  }
}
