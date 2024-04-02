import 'package:icare/src/core/usecases/regular_usecase.dart';
import 'package:icare/src/features/tiny_tales/domain/repositories/tiny_tales_repo.dart';

class IsTinyTaleBookmarkedByMeUseCase
    implements RegularUseCase<Stream<bool>, String> {
  final TinyTalesRepo _tinyTalesRepo;

  const IsTinyTaleBookmarkedByMeUseCase(this._tinyTalesRepo);

  @override
  Stream<bool> call(String params) {
    return _tinyTalesRepo.isTinyTaleBookmarkedByMe(params);
  }
}
