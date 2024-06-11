import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:icare/dependency_injection.dart';
import 'package:icare/src/core/models/no_params.dart';
import 'package:icare/src/core/helpers/cache_helper.dart';
import 'package:icare/src/core/helpers/constants.dart';
import 'package:icare/src/core/utils/app_strings.dart';
import 'package:icare/src/core/widgets/icare_dialog.dart';
import 'package:icare/src/features/icare_bot/data/models/bookmark_icare_bot_message_params.dart';
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

  void bookmarkICareBotMessage(
    BookmarkICareBotMessageParams params,
  ) async {
    emit(const BookmarkState.bookmarkICareBotMessageLoading());
    final result = await bookmarkICareBotMessageUseCase(params);

    result.when(
      success: (bookmark) async {
        await _removeCachedBookmarks();
        emit(BookmarkState.bookmarkICareBotMessageSuccess(bookmark));
      },
      error: (error) => emit(
        BookmarkState.bookmarkICareBotMessageError(
            error.apiErrorModel.error ?? ''),
      ),
    );
  }

  Future<void> retrieveICareBotBookmarks() async {
    emit(const BookmarkState.retrieveICareBotBookmarksLoading());
    final result = await retrieveICareBotBookmarksUseCase(const NoParams());
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

  void popUpMenuButtonOnSelected({
    required String value,
    required String chatResponse,
  }) {
    if (value == AppStrings.bookmarkMenuButtonVal) {
      bookmarkICareBotMessage(
        BookmarkICareBotMessageParams(
          userId: Constants.uId!,
          chatResponse: chatResponse,
        ),
      );
    }

    if (value == AppStrings.copyMenuButtonVal) {
      copyToClipboard(chatResponse);
    }
  }

  void handleDeleteBookmarkStates(
    BookmarkState<dynamic> state,
    BuildContext context,
  ) {
    state.whenOrNull(
        deleteBookmarkSuccess: (data) =>
            _handleDeleteBookmarkSuccessState(context),
        retrieveICareBotBookmarksError: (error) {
          ShowICareDialog.showICareDialogError(context, error);
        },
        deleteBookmarkError: (error) {
          ShowICareDialog.showICareDialogError(context, error);
        });
  }

  void _handleDeleteBookmarkSuccessState(BuildContext context) {
    _removeCachedBookmarks().then((value) {
      if (value) {
        debugPrint(
            '=========>>>> CACHED BOOKMARKS DELETED <<<<<<<<<<==========');
        context.read<BookmarkCubit>().retrieveICareBotBookmarks();
      }
    });
  }

  void handleBookmarkMessageStates(
    BookmarkState<dynamic> state,
    BuildContext context,
  ) {
    state.whenOrNull(
      bookmarkICareBotMessageSuccess: (_) {
        _removeCachedBookmarks().then((_) => retrieveICareBotBookmarks());
      },
      bookmarkICareBotMessageError: (error) {
        ShowICareDialog.showICareDialogError(context, error);
      },
    );
  }

  Future<bool> _removeCachedBookmarks() async {
    return await getIt
        .get<CacheHelper>()
        .removeData(key: AppStrings.cachedBookmarks);
  }
}
