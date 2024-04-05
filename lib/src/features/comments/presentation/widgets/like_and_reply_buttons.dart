import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:icare/src/config/router/app_router.dart';
import 'package:icare/src/config/themes/app_colors.dart';
import 'package:icare/src/config/themes/app_text_styles.dart';
import 'package:icare/src/core/utils/app_strings.dart';
import 'package:icare/src/core/widgets/my_sized_box.dart';
import 'package:icare/src/features/comments/data/models/comment_replies_view_params.dart';
import 'package:icare/src/features/comments/presentation/cubits/comments/comments_cubit.dart';
import 'package:icare/src/features/comments/presentation/widgets/comment_like_icon_button_stream_builder.dart';
import 'package:icare/src/features/comments/presentation/widgets/query_snapshot_text_stream_builder.dart';
import 'package:icare/src/features/tiny_tales/data/models/like_params.dart';

class LikeAndReplyButtons extends StatelessWidget {
  const LikeAndReplyButtons({
    super.key,
    required this.commentId,
    required this.tinyTaleId,
  });

  final String? commentId;
  final String tinyTaleId;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        MySizedBox.width10,
        CommentLikeIconButtonStreamBuilder(
          stream: commentId != null
              ? context.read<CommentsCubit>().isCommentLikedByMe(
                    LikeParams(
                      tinyTaleId: tinyTaleId,
                      commentId: commentId,
                    ),
                  )
              : const Stream<bool>.empty(),
          likeOnPressed: () {
            context.read<CommentsCubit>().likeComment(
                  LikeParams(
                    tinyTaleId: tinyTaleId,
                    commentId: commentId!,
                  ),
                );
          },
          unLikeOnPressed: () {
            context.read<CommentsCubit>().unlikeComment(
                  LikeParams(
                    tinyTaleId: tinyTaleId,
                    commentId: commentId!,
                  ),
                );
          },
        ),
        QuerySnapshotTextStreamBuilder(
          stream: context.read<CommentsCubit>().commentLikesStream(
                tinyTaleId,
                commentId!,
              ),
        ),
        MySizedBox.width15,
        TextButton(
          style: TextButton.styleFrom(
            padding: EdgeInsets.all(6.h),
            foregroundColor: AppColors.darkGrey,
            textStyle: AppTextStyles.textStyle13Bold(context),
            tapTargetSize: MaterialTapTargetSize.shrinkWrap,
            minimumSize: Size.zero,
          ),
          onPressed: () {
            context.pushRoute(
              CommentRepliesRoute(
                params: CommentRepliesViewParams(
                  commentId: commentId!,
                  tinyTaleId: tinyTaleId,
                ),
              ),
            );
          },
          child: const Text(AppStrings.reply),
        ),
        QuerySnapshotTextStreamBuilder(
          stream: context.read<CommentsCubit>().commentRepliesStream(
                tinyTaleId,
                commentId!,
              ),
        ),
      ],
    );
  }
}
