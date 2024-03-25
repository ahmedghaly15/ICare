import 'package:google_generative_ai/google_generative_ai.dart';
import 'package:icare/src/core/api/api_result.dart';
import 'package:icare/src/features/icare_bot/data/models/ask_icare_bot_params.dart';
import 'package:icare/src/features/icare_bot/data/models/bookmark_icare_bot_message_params.dart';
import 'package:icare/src/features/icare_bot/data/models/bookmark_icare_bot_message_response.dart';
import 'package:icare/src/features/icare_bot/data/models/icare_bot_result.dart';

abstract class ICareBotRepo {
  Future<ICareBotResult<GenerateContentResponse>> askICareBot(
    AskICareBotParams params,
  );

  Future<ApiResult<BookmarkICareBotMessageResponse>> bookmarkICareBotMessage(
    BookmarkICareBotMessageParams params,
  );

  Future<ApiResult<List<BookmarkICareBotMessageResponse>>>
      retrieveICareBotBookmarks(String userId);
}
