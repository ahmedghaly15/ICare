import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:icare/src/config/themes/app_colors.dart';
import 'package:icare/src/config/themes/app_text_styles.dart';
import 'package:icare/src/core/utils/app_assets.dart';
import 'package:icare/src/core/widgets/my_sized_box.dart';

class LikeCommentBookmarkButtons extends StatelessWidget {
  const LikeCommentBookmarkButtons({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        IconButton(
          onPressed: () {},
          icon: SvgPicture.asset(
            AppAssets.svgsCommentIcon,
          ),
        ),
        Text(
          '10',
          style: AppTextStyles.textStyle18Bold(context).copyWith(
            color: AppColors.white80Percent,
          ),
        ),
        MySizedBox.width6,
        IconButton(
          onPressed: () {},
          icon: SvgPicture.asset(
            AppAssets.svgsHeartIcon,
          ),
        ),
        Text(
          '122',
          style: AppTextStyles.textStyle18Bold(context).copyWith(
            color: AppColors.white80Percent,
          ),
        ),
        const Spacer(),
        IconButton(
          onPressed: () {},
          icon: SvgPicture.asset(
            AppAssets.svgsBookmarkIcon,
          ),
        ),
      ],
    );
  }
}
