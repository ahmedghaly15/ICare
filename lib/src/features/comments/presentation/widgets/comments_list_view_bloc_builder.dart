import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:icare/src/core/widgets/custom_circular_progress_indicator.dart';
import 'package:icare/src/core/widgets/custom_error_widget.dart';
import 'package:icare/src/core/widgets/my_sized_box.dart';
import 'package:icare/src/features/comments/presentation/cubits/comments/comments_cubit.dart';
import 'package:icare/src/features/comments/presentation/cubits/comments/comments_state.dart';
import 'package:icare/src/features/comments/presentation/widgets/comment_item.dart';

class CommentsListViewBlocBuilder extends StatelessWidget {
  const CommentsListViewBlocBuilder({
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
          return Expanded(
            child: CustomErrorWidget(
              error: state.error,
              tryAgainOnPressed: () =>
                  context.read<CommentsCubit>().streamComments(tinyTaleId),
            ),
          );
        } else if (state is StreamCommentsSuccess) {
          return Expanded(
            child: ListView.separated(
              padding: EdgeInsets.symmetric(
                vertical: 16.h,
                horizontal: 9.w,
              ),
              itemBuilder: (_, index) => CommentItem(
                tinyTaleId: tinyTaleId,
                comment: state.comments[index],
              ),
              itemCount: state.comments.length,
              separatorBuilder: (_, __) => MySizedBox.height18,
            ),
          );
        } else {
          return const Expanded(
            child: Center(
              child: CustomCircularProgressIndicator(),
            ),
          );
        }
      },
    );
  }
}
