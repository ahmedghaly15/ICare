import 'package:icare/src/core/api/api_result.dart';
import 'package:icare/src/core/usecases/base_usecase.dart';
import 'package:icare/src/features/icare_bot/data/models/bookmark_icare_bot_message_params.dart';
import 'package:icare/src/features/icare_bot/data/models/bookmark_icare_bot_message_response.dart';
import 'package:icare/src/features/icare_bot/domain/repositories/icare_bot_repo.dart';

class BookmarkICareBotMessageUseCase
    implements
        BaseUseCase<BookmarkICareBotMessageResponse,
            BookmarkICareBotMessageParams> {
  final ICareBotRepo _icareBotRepo;

  const BookmarkICareBotMessageUseCase(this._icareBotRepo);

  @override
  Future<ApiResult<BookmarkICareBotMessageResponse>> call(
    BookmarkICareBotMessageParams params,
  ) async {
    return await _icareBotRepo.bookmarkICareBotMessage(params);
  }
}
