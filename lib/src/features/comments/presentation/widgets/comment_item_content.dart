import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:icare/src/config/themes/app_text_styles.dart';
import 'package:icare/src/core/widgets/custom_cached_network_image.dart';
import 'package:icare/src/core/widgets/my_sized_box.dart';
import 'package:icare/src/features/comments/data/models/comment_model.dart';

class CommentItemContent extends StatelessWidget {
  const CommentItemContent({
    super.key,
    required this.comment,
  });

  final CommentModel comment;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          comment.user!.name!,
          style: AppTextStyles.textStyle18Bold(context),
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
        ),
        if (comment.commentData!.commentText != null) ...[
          MySizedBox.height7,
          Text(
            comment.commentData!.commentText!,
            style: AppTextStyles.textStyle16Regular(context),
          )
        ],
        if (comment.commentData!.commentImage != null) ...[
          MySizedBox.height7,
          AspectRatio(
            aspectRatio: 1,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(15.r),
              child: CustomCachedNetworkImage(
                imageUrl: comment.commentData!.commentImage!,
              ),
            ),
          )
        ],
        MySizedBox.height12,
        Text(
          '${comment.commentData!.date} at ${comment.commentData!.time!}',
          style: AppTextStyles.textStyle13Regular(context)
              .copyWith(color: Colors.grey.shade400),
        ),
      ],
    );
  }
}
