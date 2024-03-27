import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:icare/src/core/utils/app_constants.dart';
import 'package:icare/src/features/icare_bot/presentation/cubits/bookmark/bookmark_cubit.dart';
import 'package:icare/src/features/icare_bot/presentation/cubits/bookmark/bookmark_state.dart';
import 'package:icare/src/features/icare_bot/presentation/widgets/bookmark_message_bubble.dart';
import 'package:icare/src/features/icare_bot/presentation/widgets/empty_bookmarks.dart';
import 'package:icare/src/features/icare_bot/presentation/widgets/loading_bookmarks_view.dart';

class BookmarksBlocConsumer extends StatelessWidget {
  const BookmarksBlocConsumer({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<BookmarkCubit, BookmarkState>(
      listenWhen: (_, current) =>
          current is RetrieveICareBotBookmarksError ||
          current is DeleteBookmarkSuccess,
      listener: (context, state) =>
          context.read<BookmarkCubit>().bookmarkStateListener(state, context),
      buildWhen: (_, current) =>
          current is RetrieveICareBotBookmarksSuccess ||
          current is RetrieveICareBotBookmarksLoading,
      builder: (context, state) {
        if (state is RetrieveICareBotBookmarksSuccess) {
          return state.data.isEmpty
              ? const SliverFillRemaining(
                  child: EmptyBookmarks(),
                )
              : SliverPadding(
                  padding: AppConstants.bookmarksBubblesPadding,
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
            padding: AppConstants.bookmarksBubblesPadding,
            sliver: const LoadingBookmarksView(),
          );
        }
      },
    );
  }
}
