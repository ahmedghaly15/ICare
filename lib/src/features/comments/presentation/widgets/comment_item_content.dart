import 'package:flutter/material.dart';
import 'package:flutter_linkify/flutter_linkify.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:icare/src/config/themes/app_colors.dart';
import 'package:icare/src/config/themes/app_text_styles.dart';
import 'package:icare/src/core/utils/functions/open_url.dart';
import 'package:icare/src/core/utils/size_config.dart';
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
    return Container(
      constraints: BoxConstraints(
        maxWidth: SizeConfig.width * 0.75,
      ),
      padding: EdgeInsets.symmetric(
        vertical: 6.h,
        horizontal: 15.w,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20.r),
        color: AppColors.lightGrey2,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            comment.user!.name!,
            style: AppTextStyles.textStyle18Bold,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
          ),
          if (comment.commentData!.commentText != null) ...[
            MySizedBox.height7,
            Linkify(
              text: comment.commentData!.commentText!,
              style: AppTextStyles.textStyle16Regular,
              onOpen: (link) => openUrl(link),
            ),
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
            ),
          ],
          MySizedBox.height12,
          Text(
            '${comment.commentData!.date} at ${comment.commentData!.time!}',
            style: AppTextStyles.textStyle13Regular
                .copyWith(color: Colors.grey.shade400),
          ),
        ],
      ),
    );
  }
}
