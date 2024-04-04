import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:icare/src/core/widgets/custom_circular_progress_indicator.dart';
import 'package:icare/src/core/widgets/custom_error_widget.dart';
import 'package:icare/src/features/comments/presentation/cubits/comments/comments_cubit.dart';
import 'package:icare/src/features/comments/presentation/cubits/comments/comments_state.dart';
import 'package:icare/src/features/comments/presentation/widgets/comment_item.dart';

class CommentsBlocBuilder extends StatelessWidget {
  const CommentsBlocBuilder({
    super.key,
    required this.tinyTaleId,
  });

  final String tinyTaleId;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CommentsCubit, CommentsState>(
      buildWhen: (_, current) =>
          current is StreamCommentsLoading ||
          current is StreamCommentsSuccess ||
          current is StreamCommentsError,
      builder: (context, state) {
        if (state is StreamCommentsError) {
          return SliverFillRemaining(
            child: CustomErrorWidget(
              error: state.error,
              tryAgainOnPressed: () =>
                  context.read<CommentsCubit>().streamComments(tinyTaleId),
            ),
          );
        } else if (state is StreamCommentsSuccess) {
          return SliverPadding(
            padding: EdgeInsets.only(
              top: 16.h,
              right: 9.w,
              left: 9.w,
            ),
            sliver: SliverList(
              delegate: SliverChildBuilderDelegate(
                (context, index) => Container(
                  margin: EdgeInsets.only(bottom: 16.h),
                  child: CommentItem(
                    tinyTaleId: tinyTaleId,
                    comment: state.comments[index],
                  ),
                ),
                childCount: state.comments.length,
              ),
            ),
          );
        } else {
          return const SliverFillRemaining(
            child: Center(
              child: CustomCircularProgressIndicator(),
            ),
          );
        }
      },
    );
  }
}
