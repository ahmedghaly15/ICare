import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:icare/src/config/router/app_router.dart';
import 'package:icare/src/config/themes/app_colors.dart';
import 'package:icare/src/config/themes/app_text_styles.dart';
import 'package:icare/src/core/helpers/extensions.dart';
import 'package:icare/src/core/utils/app_strings.dart';
import 'package:icare/src/core/widgets/my_sized_box.dart';
import 'package:icare/src/features/comments/data/models/comment_model.dart';
import 'package:icare/src/features/comments/data/models/comment_replies_view_params.dart';
import 'package:icare/src/features/comments/presentation/cubits/comments/comments_cubit.dart';
import 'package:icare/src/features/comments/presentation/widgets/comment_like_button.dart';
import 'package:icare/src/features/comments/presentation/widgets/query_snapshot_text_stream_builder.dart';

class LikeAndReplyButtons extends StatelessWidget {
  const LikeAndReplyButtons({
    super.key,
    required this.comment,
    required this.tinyTaleId,
  });

  final CommentModel comment;
  final String tinyTaleId;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        MySizedBox.width10,
        CommentLikeButton(comment: comment, tinyTaleId: tinyTaleId),
        QuerySnapshotTextStreamBuilder(
          stream: context.read<CommentsCubit>().commentLikesStream(
                tinyTaleId,
                comment.commentId,
              ),
        ),
        MySizedBox.width15,
        TextButton(
          style: TextButton.styleFrom(
            padding: EdgeInsets.all(6.h),
            foregroundColor:
                context.isDarkModeActive ? Colors.white54 : AppColors.darkGrey,
            textStyle: AppTextStyles.textStyle13Bold,
            tapTargetSize: MaterialTapTargetSize.shrinkWrap,
            minimumSize: Size.zero,
          ),
          onPressed: () {
            context.pushRoute(
              CommentRepliesRoute(
                params: CommentRepliesViewParams(
                  comment: comment,
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
                comment.commentId,
              ),
        ),
      ],
    );
  }
}
