import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:icare/src/config/themes/app_text_styles.dart';
import 'package:icare/src/core/utils/app_assets.dart';
import 'package:icare/src/core/widgets/my_sized_box.dart';

class AnimatedEmptyFollowingOrFollowers extends StatelessWidget {
  const AnimatedEmptyFollowingOrFollowers({
    super.key,
    this.svgImage = AppAssets.svgsEmptyFollowersOrFollowing,
    required this.title,
    required this.description,
  });

  final String svgImage, title, description;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          FadeInDown(
            child: SvgPicture.asset(svgImage),
          ),
          MySizedBox.height25,
          FadeInUp(
            child: Text(
              title,
              style: AppTextStyles.textStyle30Bold,
            ),
          ),
          MySizedBox.height5,
          FadeInUp(
            child: Text(
              description,
              style: AppTextStyles.textStyle16Regular,
            ),
          ),
        ],
      ),
    );
  }
}
