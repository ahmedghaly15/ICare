import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:icare/dependency_injection.dart';
import 'package:icare/src/core/helpers/cache_helper.dart';
import 'package:icare/src/core/helpers/helper.dart';
import 'package:icare/src/core/utils/app_constants.dart';
import 'package:icare/src/core/utils/app_strings.dart';
import 'package:icare/src/core/widgets/icare_dialog.dart';
import 'package:icare/src/features/icare_bot/presentation/cubits/bookmark/bookmark_cubit.dart';
import 'package:icare/src/features/icare_bot/presentation/cubits/bookmark/bookmark_state.dart';
import 'package:icare/src/features/icare_bot/presentation/widgets/bookmark_message_bubble.dart';
import 'package:icare/src/features/icare_bot/presentation/widgets/loading_bookmarks_view.dart';

class BookmarksBlocConsumer extends StatelessWidget {
  const BookmarksBlocConsumer({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<BookmarkCubit, BookmarkState>(
      listenWhen: (_, current) =>
          current is RetrieveICareBotBookmarksError ||
          current is DeleteBookmarkSuccess,
      listener: (context, state) => _handleBookmarkState(state, context),
      buildWhen: (_, current) =>
          current is RetrieveICareBotBookmarksSuccess ||
          current is RetrieveICareBotBookmarksLoading,
      builder: (context, state) {
        if (state is RetrieveICareBotBookmarksSuccess) {
          return SliverPadding(
            padding: AppConstants.iCareBotConversationsPadding,
            sliver: SliverList(
              delegate: SliverChildBuilderDelegate(
                (context, index) => BookmarkMessageBubble(
                  bookmark: state.data[index],
                ),
                childCount: state.data.length,
              ),
            ),
          );
        } else {
          return SliverPadding(
            padding: AppConstants.iCareBotConversationsPadding,
            sliver: const LoadingBookmarksView(),
          );
        }
      },
    );
  }

  void _handleBookmarkState(
    BookmarkState<dynamic> state,
    BuildContext context,
  ) {
    state.whenOrNull(
      deleteBookmarkSuccess: (data) =>
          _handleDeleteBookmarkSuccessState(context),
      retrieveICareBotBookmarksError: (error) => ShowICareDialog.show(
        context: context,
        state: ICareDialogStates.error,
        message: error,
      ),
    );
  }

  void _handleDeleteBookmarkSuccessState(BuildContext context) {
    getIt
        .get<CacheHelper>()
        .removeData(key: AppStrings.cachedBookmarks)
        .then((value) {
      if (value) {
        debugPrint(
            '=========>>>> CACHED BOOKMARKS DELETED <<<<<<<<<<==========');

        context.read<BookmarkCubit>().retrieveICareBotBookmarks(Helper.uId!);
      }
    });
  }
}
