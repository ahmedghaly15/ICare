import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:icare/src/config/themes/app_colors.dart';
import 'package:icare/src/config/themes/app_text_styles.dart';
import 'package:icare/src/core/utils/app_assets.dart';
import 'package:icare/src/core/widgets/my_sized_box.dart';
import 'package:icare/src/features/tiny_tales/presentation/cubits/tiny_tales/tiny_tales_cubit.dart';
import 'package:icare/src/features/tiny_tales/presentation/widgets/like_button_stream_builder.dart';

class LikeCommentBookmarkButtons extends StatelessWidget {
  const LikeCommentBookmarkButtons({
    super.key,
    this.isTinyTaleContainsImage = false,
    required this.tinyTaleId,
  });

  final bool isTinyTaleContainsImage;
  final String? tinyTaleId;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        IconButton(
          onPressed: () {},
          icon: SvgPicture.asset(
            isTinyTaleContainsImage
                ? AppAssets.svgsCommentIcon
                : AppAssets.svgsBlackCommentIcon,
          ),
        ),
        StreamBuilder<QuerySnapshot<Map<String, dynamic>>>(
          stream: context.read<TinyTalesCubit>().commentsStream(tinyTaleId!),
          builder: (context, snapshot) {
            int commentsCount = snapshot.data?.docs.length ?? 0;

            return Text(
              '$commentsCount',
              style: AppTextStyles.textStyle18Bold(context).copyWith(
                color: isTinyTaleContainsImage
                    ? AppColors.white80Percent
                    : AppColors.black80Percent,
              ),
            );
          },
        ),
        MySizedBox.width6,
        LikeButtonStreamBuilder(
          tinyTaleId: tinyTaleId,
          isTinyTaleContainsImage: isTinyTaleContainsImage,
        ),
        StreamBuilder<QuerySnapshot<Map<String, dynamic>>>(
          stream: context.read<TinyTalesCubit>().likesStream(tinyTaleId!),
          builder: (context, snapshot) {
            int likesCount = snapshot.data?.docs.length ?? 0;

            return Text(
              '$likesCount',
              style: AppTextStyles.textStyle18Bold(context).copyWith(
                color: isTinyTaleContainsImage
                    ? AppColors.white80Percent
                    : AppColors.black80Percent,
              ),
            );
          },
        ),
        const Spacer(),
        IconButton(
          onPressed: () {},
          icon: SvgPicture.asset(
            isTinyTaleContainsImage
                ? AppAssets.svgsBookmarkIcon
                : AppAssets.svgsBlackBookmarkIcon,
          ),
        ),
      ],
    );
  }
}
