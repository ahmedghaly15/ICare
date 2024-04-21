import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:icare/src/config/router/app_router.dart';
import 'package:icare/src/config/themes/app_colors.dart';
import 'package:icare/src/config/themes/app_text_styles.dart';
import 'package:icare/src/core/utils/app_constants.dart';
import 'package:icare/src/core/utils/app_strings.dart';
import 'package:icare/src/core/utils/functions/is_dark_mode_active.dart';
import 'package:icare/src/core/widgets/my_sized_box.dart';

class AIFeaturesSliverList extends StatelessWidget {
  const AIFeaturesSliverList({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildBuilderDelegate(
        (context, index) => Container(
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
                  : AppConstants.primaryBoxShadow,
            ],
          ),
          child: MaterialButton(
            onPressed: () => _navigateToFeature(
              context,
              AppConstants.homeAIFeaturesTitles[index],
            ),
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
                          AppConstants.homeAIFeaturesIcons[index],
                        ),
                        MySizedBox.height10,
                        Text(
                          AppConstants.homeAIFeaturesTitles[index],
                          style: AppTextStyles.textStyle15Bold,
                        ),
                        MySizedBox.height5,
                        Text(
                          AppConstants.homeAIFeaturesDescriptions[index],
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
                      AppConstants.homeAIFeaturesImages[index],
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        childCount: AppConstants.homeAIFeaturesTitles.length,
      ),
    );
  }

  void _navigateToFeature(BuildContext context, String featureTitle) {
    if (featureTitle == AppStrings.cryTranslation) {
      context.pushRoute(const BabyCryPredictorRoute());
    } else if (featureTitle == AppStrings.speechTherapy) {
      context.pushRoute(const SpeechTherapyRoute());
    } else if (featureTitle == AppStrings.icareBot) {
      context.pushRoute(const ICareBotRoute());
    }
  }
}
