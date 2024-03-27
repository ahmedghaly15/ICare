import 'package:icare/src/core/api/api_result.dart';
import 'package:icare/src/core/entities/no_params.dart';
import 'package:icare/src/core/usecases/base_usecase.dart';
import 'package:icare/src/features/icare_bot/data/models/bookmark_icare_bot_message_response.dart';
import 'package:icare/src/features/icare_bot/domain/repositories/icare_bot_repo.dart';

class RetrieveICareBotBookmarksUseCase
    implements BaseUseCase<List<BookmarkICareBotMessageResponse>, NoParams> {
  final ICareBotRepo _icareBotRepo;

  const RetrieveICareBotBookmarksUseCase(this._icareBotRepo);

  @override
  Future<ApiResult<List<BookmarkICareBotMessageResponse>>> call(
    NoParams params,
  ) async {
    return await _icareBotRepo.retrieveICareBotBookmarks();
  }
}
