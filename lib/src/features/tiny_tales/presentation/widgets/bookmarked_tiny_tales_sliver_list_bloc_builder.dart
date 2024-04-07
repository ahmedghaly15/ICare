import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:icare/src/core/utils/app_assets.dart';
import 'package:icare/src/core/utils/app_strings.dart';
import 'package:icare/src/core/widgets/animated_empty_view.dart';
import 'package:icare/src/core/widgets/custom_error_widget.dart';
import 'package:icare/src/features/tiny_tales/presentation/cubits/tiny_tales/tiny_tales_cubit.dart';
import 'package:icare/src/features/tiny_tales/presentation/cubits/tiny_tales/tiny_tales_state.dart';
import 'package:icare/src/features/tiny_tales/presentation/widgets/tiny_tale_item.dart';
import 'package:icare/src/features/tiny_tales/presentation/widgets/tiny_tales_loading_sliver_list.dart';

class BookmarkedTinyTalesSliverListBlocBuilder extends StatelessWidget {
  const BookmarkedTinyTalesSliverListBlocBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<TinyTalesCubit, TinyTalesState>(
      buildWhen: (_, current) =>
          current is GetBookmarkedTinyTalesSuccess ||
          current is GetBookmarkedTinyTalesLoading ||
          current is GetBookmarkedTinyTalesError ||
          current is UnBookmarkTinyTaleSuccess ||
          current is BookmarkTinyTaleSuccess,
      builder: (context, state) {
        if (state is GetBookmarkedTinyTalesSuccess) {
          return state.data.isNotEmpty
              ? SliverList(
                  delegate: SliverChildBuilderDelegate(
                    (context, index) =>
                        TinyTaleItem(tinyTale: state.data[index]),
                    childCount: state.data.length,
                  ),
                )
              : const SliverFillRemaining(
                  child: AnimatedEmptyView(
                    svgImage: AppAssets.svgsEmptyBookmarkedTinyTales,
                    text: AppStrings.noBookmarkedTinyTalesYet,
                  ),
                );
        } else if (state is GetBookmarkedTinyTalesError) {
          return SliverFillRemaining(
            hasScrollBody: false,
            child: CustomErrorWidget(
              error: state.error,
              tryAgainOnPressed: () =>
                  context.read<TinyTalesCubit>().getBookmarkedTinyTales(),
            ),
          );
        } else {
          return const TinyTalesLoadingSliverList();
        }
      },
    );
  }
}
