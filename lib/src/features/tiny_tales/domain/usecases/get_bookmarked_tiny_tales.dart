import 'package:icare/src/core/models/no_params.dart';
import 'package:icare/src/core/firebase/firebase_request_result.dart';
import 'package:icare/src/core/usecases/firebase_usecase.dart';
import 'package:icare/src/features/tiny_tales/data/models/tiny_tale.dart';
import 'package:icare/src/features/tiny_tales/domain/repositories/tiny_tales_repo.dart';

class GetBookmarkedTinyTalesUseCase
    implements FirebaseUseCase<List<TinyTale>, NoParams> {
  final TinyTalesRepo _tinyTalesRepo;

  const GetBookmarkedTinyTalesUseCase(this._tinyTalesRepo);

  @override
  Future<FirebaseRequestResult<List<TinyTale>>> call(NoParams params) async {
    return await _tinyTalesRepo.getBookmarkedTinyTales();
  }
}
