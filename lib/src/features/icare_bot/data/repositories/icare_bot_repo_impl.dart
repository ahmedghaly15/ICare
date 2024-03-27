import 'package:flutter/material.dart';
import 'package:google_generative_ai/google_generative_ai.dart';
import 'package:icare/dependency_injection.dart';
import 'package:icare/src/core/api/api_error_handler.dart';
import 'package:icare/src/core/api/api_result.dart';
import 'package:icare/src/core/network/network_info.dart';
import 'package:icare/src/core/utils/app_strings.dart';
import 'package:icare/src/core/utils/functions/execute_and_handle_errors.dart';
import 'package:icare/src/features/icare_bot/data/datasources/icare_bot_local_datasource.dart';
import 'package:icare/src/features/icare_bot/data/datasources/icare_bot_remote_datasource.dart';
import 'package:icare/src/features/icare_bot/data/models/ask_icare_bot_params.dart';
import 'package:icare/src/features/icare_bot/data/models/bookmark_icare_bot_message_params.dart';
import 'package:icare/src/features/icare_bot/data/models/bookmark_icare_bot_message_response.dart';
import 'package:icare/src/features/icare_bot/data/models/delete_bookmark_params.dart';
import 'package:icare/src/features/icare_bot/data/models/delete_bookmark_response.dart';
import 'package:icare/src/features/icare_bot/data/models/icare_bot_error_handler.dart';
import 'package:icare/src/features/icare_bot/data/models/icare_bot_result.dart';
import 'package:icare/src/features/icare_bot/domain/repositories/icare_bot_repo.dart';

class ICareBotRepoImpl implements ICareBotRepo {
  final ICareBotRemoteDatasource _icareBotRemoteDatasource;
  final ICareBotLocalDatasource _icareBotLocalDatasource;

  const ICareBotRepoImpl(
    this._icareBotRemoteDatasource,
    this._icareBotLocalDatasource,
  );

  @override
  Future<ICareBotResult<GenerateContentResponse>> askICareBot(
      AskICareBotParams params) async {
    if (await getIt.get<NetworkInfo>().isConnected) {
      try {
        return ICareBotResult.success(
          await _icareBotRemoteDatasource.askICareBot(params),
        );
      } catch (e) {
        return ICareBotResult.failure(
          ICareBotErrorHandler(
            failureMsg: e.toString(),
          ),
        );
      }
    } else {
      return const ICareBotResult.failure(
        ICareBotErrorHandler(failureMsg: AppStrings.noInternetConnection),
      );
    }
  }

  @override
  Future<ApiResult<BookmarkICareBotMessageResponse>> bookmarkICareBotMessage(
    BookmarkICareBotMessageParams params,
  ) {
    return executeAndHandleErrors<BookmarkICareBotMessageResponse>(
      () async =>
          await _icareBotRemoteDatasource.bookmarkICareBotMessage(params),
    );
  }

  @override
  Future<ApiResult<List<BookmarkICareBotMessageResponse>>>
      retrieveICareBotBookmarks() async {
    if (_icareBotLocalDatasource.bookmarksJson() != null) {
      debugPrint('GOT CACHED BOOKMARKS DATA');
      return ApiResult.success(
        _icareBotLocalDatasource.retrieveCachedBookmarks(),
      );
    } else {
      debugPrint('GOT NO CACHED BOOKMARKS DATA');
      try {
        final bookmarks =
            await _icareBotRemoteDatasource.retrieveICareBotBookmarks();

        await _icareBotLocalDatasource.cacheBookmarks(bookmarks);

        return ApiResult.success(bookmarks);
      } catch (error) {
        return ApiResult.error(ErrorHandler.handle(error));
      }
    }
  }

  @override
  Future<ApiResult<DeleteBookmarkResponse>> deleteBookmark(
    DeleteBookmarkParams params,
  ) {
    return executeAndHandleErrors<DeleteBookmarkResponse>(
      () async => await _icareBotRemoteDatasource.deleteBookmark(params),
    );
  }
}
