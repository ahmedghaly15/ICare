import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:icare/src/config/themes/app_colors.dart';
import 'package:icare/src/config/themes/app_text_styles.dart';
import 'package:icare/src/core/utils/app_constants.dart';
import 'package:icare/src/core/utils/size_config.dart';
import 'package:icare/src/core/widgets/my_sized_box.dart';

class SpeechTherapyLevelItem extends StatelessWidget {
  const SpeechTherapyLevelItem({
    super.key,
    required this.image,
    required this.title,
    required this.description,
    required this.onTap,
  });

  final String image, title, description;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        margin: EdgeInsets.only(bottom: 20.h),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(25.r),
          boxShadow: [
            AppConstants.primaryBoxShadow,
          ],
        ),
        child: Stack(
          children: <Widget>[
            Image.asset(image),
            Positioned.fill(
              top: 0.h,
              left: 0.w,
              right: SizeConfig.width * 0.25,
              child: Container(
                padding: EdgeInsets.symmetric(
                  vertical: 25.h,
                  horizontal: 8.w,
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.horizontal(
                    left: Radius.circular(50.r),
                    right: Radius.circular(150.r),
                  ),
                  gradient: LinearGradient(
                    colors: [
                      const Color(0xffA27446).withOpacity(0.66),
                      const Color(0xffCE9760),
                    ],
                    begin: Alignment.centerLeft,
                    end: Alignment.centerRight,
                  ),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      title,
                      style: AppTextStyles.textStyle25Bold(context).copyWith(
                        color: AppColors.deepBrown,
                      ),
                    ),
                    MySizedBox.height10,
                    Text(
                      description,
                      style: AppTextStyles.textStyle18Regular(context).copyWith(
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
