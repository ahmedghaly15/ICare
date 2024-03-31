import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:icare/src/config/themes/app_colors.dart';
import 'package:icare/src/config/themes/app_text_styles.dart';
import 'package:icare/src/core/utils/app_assets.dart';
import 'package:icare/src/core/utils/app_strings.dart';
import 'package:icare/src/core/widgets/custom_cached_network_image.dart';
import 'package:icare/src/core/widgets/my_sized_box.dart';
import 'package:icare/src/features/comments/data/models/comment_model.dart';
import 'package:icare/src/features/comments/presentation/cubits/comments_cubit.dart';
import 'package:icare/src/features/tiny_tales/data/models/like_params.dart';

class CommentItem extends StatelessWidget {
  const CommentItem({
    super.key,
    required this.comment,
    required this.tinyTaleId,
  });

  final CommentModel comment;
  final String tinyTaleId;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.baseline,
      textBaseline: TextBaseline.alphabetic,
      children: <Widget>[
        InkWell(
          onTap: () {},
          child: CustomCachedNetworkImage(
            imageUrl: comment.user!.profileImage!,
            imageBuilder: (_, image) => CircleAvatar(
              radius: 20.h,
              backgroundImage: image,
            ),
          ),
        ),
        MySizedBox.width6,
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
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
                    style: AppTextStyles.textStyle18Bold(context),
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                  MySizedBox.height7,
                  Text(
                    comment.commentData!.commentText!,
                    style: AppTextStyles.textStyle16Regular(context),
                  ),
                  MySizedBox.height12,
                  Text(
                    '${comment.commentData!.date} at ${comment.commentData!.time!}',
                    style: AppTextStyles.textStyle13Regular(context)
                        .copyWith(color: Colors.grey.shade400),
                  ),
                ],
              ),
            ),
            MySizedBox.height2,
            Row(
              children: <Widget>[
                MySizedBox.width10,
                StreamBuilder<bool>(
                    stream: comment.commentId != null
                        ? context.read<CommentsCubit>().isCommentLikedByMe(
                              LikeParams(
                                tinyTaleId: tinyTaleId,
                                context: context,
                                commentId: comment.commentId,
                              ),
                            )
                        : const Stream<bool>.empty(),
                    builder: (context, snapshot) {
                      bool isCommentLikedByMe = snapshot.data ?? false;

                      return IconButton(
                        padding: EdgeInsets.all(6.h),
                        onPressed: () {},
                        icon: SvgPicture.asset(
                          AppAssets.svgsHeartCommentIcon,
                        ),
                      );
                    }),
                Text(
                  '12',
                  style: AppTextStyles.textStyle13Regular(context).copyWith(
                    color: AppColors.darkGrey,
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
                    // TODO: go to RepliesView & handle type reply
                  },
                  child: const Text(AppStrings.reply),
                ),
              ],
            ),
          ],
        ),
      ],
    );
  }
}
