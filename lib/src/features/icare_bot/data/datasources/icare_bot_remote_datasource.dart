import 'package:google_generative_ai/google_generative_ai.dart';
import 'package:icare/src/core/api/api_service.dart';
import 'package:icare/src/features/icare_bot/data/models/ask_icare_bot_params.dart';
import 'package:icare/src/features/icare_bot/data/models/bookmark_icare_bot_message_params.dart';
import 'package:icare/src/features/icare_bot/data/models/bookmark_icare_bot_message_response.dart';

abstract class ICareBotRemoteDatasource {
  Future<GenerateContentResponse> askICareBot(AskICareBotParams params);
  Future<BookmarkICareBotMessageResponse> bookmarkICareBotMessage(
    BookmarkICareBotMessageParams params,
  );

  Future<List<BookmarkICareBotMessageResponse>> retrieveICareBotBookmarks(
    String userId,
  );
}

class ICareBotRemoteDatasourceImpl implements ICareBotRemoteDatasource {
  final ApiService _apiService;

  const ICareBotRemoteDatasourceImpl(this._apiService);

  @override
  Future<GenerateContentResponse> askICareBot(AskICareBotParams params) async {
    return await params.chat.sendMessage(params.content);
  }

  @override
  Future<BookmarkICareBotMessageResponse> bookmarkICareBotMessage(
    BookmarkICareBotMessageParams params,
  ) async {
    return await _apiService.bookmarkICareBotMessage(params);
  }

  @override
  Future<List<BookmarkICareBotMessageResponse>> retrieveICareBotBookmarks(
    String userId,
  ) async {
    return await _apiService.retrieveICareBotBookmarks(userId);
  }
}
