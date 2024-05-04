import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:icare/src/config/themes/app_colors.dart';
import 'package:icare/src/config/themes/app_text_styles.dart';
import 'package:icare/src/core/utils/app_utils.dart';
import 'package:icare/src/core/utils/functions/is_dark_mode_active.dart';
import 'package:icare/src/core/widgets/my_sized_box.dart';
import 'package:icare/src/features/home/data/models/home_ai_feature.dart';

class AIFeatureItem extends StatelessWidget {
  const AIFeatureItem({
    super.key,
    required this.homeAIFeature,
  });

  final HomeAIFeature homeAIFeature;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 20.h),
      decoration: BoxDecoration(
        color: isDarkModeActive(context)
            ? AppColors.scaffoldDarkModeBackgroundColor
            : Colors.white,
        borderRadius: BorderRadius.circular(25.r),
        boxShadow: <BoxShadow>[
          isDarkModeActive(context)
              ? BoxShadow(
                  offset: Offset(0, 6.h),
                  blurRadius: 4.w,
                  spreadRadius: 0,
                  color: Colors.black.withOpacity(0.8),
                )
              : AppUtils.primaryBoxShadow,
        ],
      ),
      child: MaterialButton(
        onPressed: homeAIFeature.onPressed,
        padding: EdgeInsets.zero,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(25.r),
        ),
        splashColor: isDarkModeActive(context) ? AppColors.lightBlue : null,
        child: Row(
          children: <Widget>[
            Expanded(
              child: Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: 16.w,
                  vertical: 12.h,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    SvgPicture.asset(
                      homeAIFeature.icon,
                    ),
                    MySizedBox.height10,
                    Text(
                      homeAIFeature.title,
                      style: AppTextStyles.textStyle15Bold,
                    ),
                    MySizedBox.height5,
                    Text(
                      homeAIFeature.description,
                      style: AppTextStyles.textStyle10Regular,
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              child: ClipRRect(
                borderRadius: BorderRadius.circular(25.r),
                child: Image.asset(
                  homeAIFeature.image,
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
