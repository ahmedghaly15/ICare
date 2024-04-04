import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:icare/src/core/widgets/custom_circular_progress_indicator.dart';
import 'package:icare/src/core/widgets/custom_error_widget.dart';
import 'package:icare/src/features/comments/data/models/comment_replies_view_params.dart';
import 'package:icare/src/features/comments/presentation/cubits/comment_replies/comment_replies_cubit.dart';
import 'package:icare/src/features/comments/presentation/cubits/comment_replies/comment_replies_state.dart';
import 'package:icare/src/features/comments/presentation/widgets/comment_reply_item.dart';

class CommentRepliesBlocBuilder extends StatelessWidget {
  const CommentRepliesBlocBuilder({
    super.key,
    required this.params,
  });

  final CommentRepliesViewParams params;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CommentRepliesCubit, CommentRepliesState>(
      buildWhen: (_, current) =>
          current is GetCommentRepliesLoading ||
          current is GetCommentRepliesSuccess ||
          current is GetCommentRepliesError,
      builder: (context, state) {
        if (state is GetCommentRepliesError) {
          return SliverFillRemaining(
            child: CustomErrorWidget(
              error: state.error,
              tryAgainOnPressed: () =>
                  context.read<CommentRepliesCubit>().getCommentReplies(params),
            ),
          );
        } else if (state is GetCommentRepliesSuccess) {
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
                  child: CommentReplyItem(
                    reply: state.comments[index],
                    params: params,
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
