import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:icare/src/features/icare_bot/data/models/bookmark_icare_bot_message_params.dart';
import 'package:icare/src/features/icare_bot/domain/usecases/bookmark_icare_bot_message.dart';
import 'package:icare/src/features/icare_bot/domain/usecases/retrieve_icare_bot_bookmarks.dart';
import 'package:icare/src/features/icare_bot/presentation/cubits/bookmark/bookmark_state.dart';

class BookmarkCubit extends Cubit<BookmarkState> {
  final BookmarkICareBotMessageUseCase bookmarkICareBotMessageUseCase;
  final RetrieveICareBotBookmarksUseCase retrieveICareBotBookmarksUseCase;

  BookmarkCubit({
    required this.bookmarkICareBotMessageUseCase,
    required this.retrieveICareBotBookmarksUseCase,
  }) : super(const BookmarkState.initial());

  void bookmarkICareBotMessage(
    BookmarkICareBotMessageParams params,
  ) async {
    emit(const BookmarkState.bookmarkICareBotMessageLoading());
    final result = await bookmarkICareBotMessageUseCase(params);

    result.when(
      success: (data) =>
          emit(BookmarkState.bookmarkICareBotMessageSuccess(data)),
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
}
