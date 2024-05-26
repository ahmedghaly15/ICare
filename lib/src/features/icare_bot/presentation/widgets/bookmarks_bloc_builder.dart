import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:icare/src/core/utils/app_assets.dart';
import 'package:icare/src/core/utils/app_strings.dart';
import 'package:icare/src/core/utils/app_utils.dart';
import 'package:icare/src/core/widgets/custom_error_widget.dart';
import 'package:icare/src/features/icare_bot/presentation/cubits/bookmark/bookmark_cubit.dart';
import 'package:icare/src/features/icare_bot/presentation/cubits/bookmark/bookmark_state.dart';
import 'package:icare/src/features/icare_bot/presentation/widgets/bookmark_message_bubble.dart';
import 'package:icare/src/core/widgets/animated_empty_view.dart';
import 'package:icare/src/features/icare_bot/presentation/widgets/loading_bookmarks_view.dart';

class BookmarksBlocBuilder extends StatelessWidget {
  const BookmarksBlocBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<BookmarkCubit, BookmarkState>(
      buildWhen: (_, current) =>
          current is RetrieveICareBotBookmarksSuccess ||
          current is RetrieveICareBotBookmarksLoading ||
          current is RetrieveICareBotBookmarksError,
      builder: (context, state) {
        if (state is RetrieveICareBotBookmarksSuccess) {
          return state.data.isEmpty
              ? const SliverFillRemaining(
                  child: AnimatedEmptyView(
                    svgImage: AppAssets.svgsEmptyBookmarks,
                    text: AppStrings.noBookmarksSavedYet,
                  ),
                )
              : SliverPadding(
                  padding: AppUtils.bookmarksBubblesPadding,
                  sliver: SliverList.builder(
                    itemBuilder: (context, index) => BookmarkMessageBubble(
                      bookmark: state.data[index],
                    ),
                    itemCount: state.data.length,
                  ),
                );
        } else if (state is RetrieveICareBotBookmarksError) {
          return SliverFillRemaining(
            child: CustomErrorWidget(
              error: state.error,
              tryAgainOnPressed: () =>
                  context.read<BookmarkCubit>().retrieveICareBotBookmarks(),
            ),
          );
        } else {
          return SliverPadding(
            padding: AppUtils.bookmarksBubblesPadding,
            sliver: const LoadingBookmarksView(),
          );
        }
      },
    );
  }
}
