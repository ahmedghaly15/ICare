import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:icare/src/config/themes/app_colors.dart';
import 'package:icare/src/config/themes/app_text_styles.dart';
import 'package:icare/src/core/utils/size_config.dart';
import 'package:icare/src/core/widgets/custom_cached_network_image.dart';
import 'package:icare/src/core/widgets/my_sized_box.dart';
import 'package:icare/src/features/speech_therapy/data/models/speech_therapy_level.dart';

class SpeechTherapyLevelItem extends StatelessWidget {
  const SpeechTherapyLevelItem({
    super.key,
    required this.level,
    required this.onTap,
  });

  final SpeechTherapyLevel level;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 20.h),
      child: MaterialButton(
        padding: EdgeInsets.zero,
        onPressed: onTap,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(25.r),
        ),
        child: Stack(
          children: <Widget>[
            ClipRRect(
              borderRadius: BorderRadius.circular(25.r),
              child: CustomCachedNetworkImage(
                imageUrl: level.imageUrl,
              ),
            ),
            Positioned.fill(
              top: 0.h,
              left: 0.w,
              right: SizeConfig.width * 0.35,
              child: Container(
                padding: EdgeInsets.only(left: 8.w, right: 16.w),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.horizontal(
                    left: Radius.circular(25.r),
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
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      level.level,
                      style: AppTextStyles.textStyle18Bold.copyWith(
                        color: AppColors.deepBrown,
                      ),
                    ),
                    MySizedBox.height10,
                    Text(
                      level.description,
                      style: AppTextStyles.textStyle14Regular.copyWith(
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
