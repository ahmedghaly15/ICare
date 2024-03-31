import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:icare/src/config/themes/app_colors.dart';
import 'package:icare/src/config/themes/app_text_styles.dart';
import 'package:icare/src/core/utils/app_strings.dart';
import 'package:icare/src/core/widgets/my_sized_box.dart';
import 'package:icare/src/features/comments/presentation/cubits/comments_cubit.dart';
import 'package:icare/src/features/comments/presentation/widgets/comment_like_icon_button_stream_builder.dart';

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
          commentId: commentId!,
          tinyTaleId: tinyTaleId,
        ),
        StreamBuilder<QuerySnapshot<Map<String, dynamic>>>(
          stream: context.read<CommentsCubit>().commentLikesStream(
                tinyTaleId,
                commentId!,
              ),
          builder: (context, snapshot) {
            int commentLikesCount = snapshot.data?.docs.length ?? 0;

            return Text(
              '$commentLikesCount',
              style: AppTextStyles.textStyle13Regular(context).copyWith(
                color: AppColors.darkGrey,
              ),
            );
          },
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
            // TODO: go to RepliesView & handle type reply
          },
          child: const Text(AppStrings.reply),
        ),
      ],
    );
  }
}
