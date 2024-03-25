import 'package:icare/src/core/api/api_result.dart';
import 'package:icare/src/core/usecases/base_usecase.dart';
import 'package:icare/src/features/icare_bot/data/models/delete_bookmark_params.dart';
import 'package:icare/src/features/icare_bot/data/models/delete_bookmark_response.dart';
import 'package:icare/src/features/icare_bot/domain/repositories/icare_bot_repo.dart';

class DeleteBookmarkUseCase
    implements BaseUseCase<DeleteBookmarkResponse, DeleteBookmarkParams> {
  final ICareBotRepo _icareBotRepo;

  const DeleteBookmarkUseCase(this._icareBotRepo);

  @override
  Future<ApiResult<DeleteBookmarkResponse>> call(
    DeleteBookmarkParams params,
  ) async {
    return await _icareBotRepo.deleteBookmark(params);
  }
}
