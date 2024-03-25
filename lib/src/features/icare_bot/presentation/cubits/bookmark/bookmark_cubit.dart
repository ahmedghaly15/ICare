import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:icare/src/features/icare_bot/data/models/bookmark_icare_bot_message_params.dart';
import 'package:icare/src/features/icare_bot/data/models/bookmark_icare_bot_message_response.dart';
import 'package:icare/src/features/icare_bot/data/models/delete_bookmark_params.dart';
import 'package:icare/src/features/icare_bot/domain/usecases/bookmark_icare_bot_message.dart';
import 'package:icare/src/features/icare_bot/domain/usecases/delete_bookmark.dart';
import 'package:icare/src/features/icare_bot/domain/usecases/retrieve_icare_bot_bookmarks.dart';
import 'package:icare/src/features/icare_bot/presentation/cubits/bookmark/bookmark_state.dart';

class BookmarkCubit extends Cubit<BookmarkState> {
  final BookmarkICareBotMessageUseCase bookmarkICareBotMessageUseCase;
  final RetrieveICareBotBookmarksUseCase retrieveICareBotBookmarksUseCase;
  final DeleteBookmarkUseCase deleteBookmarkUseCase;

  BookmarkCubit({
    required this.bookmarkICareBotMessageUseCase,
    required this.retrieveICareBotBookmarksUseCase,
    required this.deleteBookmarkUseCase,
  }) : super(const BookmarkState.initial());

  BookmarkICareBotMessageResponse? bookmark;

  void bookmarkICareBotMessage(
    BookmarkICareBotMessageParams params,
  ) async {
    emit(const BookmarkState.bookmarkICareBotMessageLoading());
    final result = await bookmarkICareBotMessageUseCase(params);

    result.when(
      success: (data) {
        bookmark = data;
        emit(BookmarkState.bookmarkICareBotMessageSuccess(data));
      },
      error: (error) => emit(
        BookmarkState.bookmarkICareBotMessageError(
            error.apiErrorModel.error ?? ''),
      ),
    );
  }

  void retrieveICareBotBookmarks(String userId) async {
    emit(const BookmarkState.retrieveICareBotBookmarksLoading());
    final result = await retrieveICareBotBookmarksUseCase(userId);

    result.when(
      success: (bookmarks) =>
          emit(BookmarkState.retrieveICareBotBookmarksSuccess(bookmarks)),
      error: (error) => emit(
        BookmarkState.retrieveICareBotBookmarksError(
          error.apiErrorModel.error ?? '',
        ),
      ),
    );
  }

  void deleteBookmark(DeleteBookmarkParams params) async {
    emit(const BookmarkState.deleteBookmarkLoading());
    final response = await deleteBookmarkUseCase(params);

    response.when(
      success: (data) => emit(BookmarkState.deleteBookmarkSuccess(data)),
      error: (error) => emit(
        BookmarkState.deleteBookmarkError(error.apiErrorModel.error ?? ''),
      ),
    );
  }

  Future<void> copyToClipboard(String text) async {
    return await Clipboard.setData(ClipboardData(text: text));
  }
}
