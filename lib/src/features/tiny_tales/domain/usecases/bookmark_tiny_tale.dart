import 'package:icare/src/core/firebase/firebase_request_result.dart';
import 'package:icare/src/core/usecases/firebase_usecase.dart';
import 'package:icare/src/features/tiny_tales/data/models/tiny_tale.dart';
import 'package:icare/src/features/tiny_tales/domain/repositories/tiny_tales_repo.dart';

class BookmarkTinyTaleUseCase implements FirebaseUseCase<void, TinyTale> {
  final TinyTalesRepo _tinyTalesRepo;

  const BookmarkTinyTaleUseCase(this._tinyTalesRepo);

  @override
  Future<FirebaseRequestResult<void>> call(TinyTale params) async {
    return await _tinyTalesRepo.bookmarkTinyTale(params);
  }
}
