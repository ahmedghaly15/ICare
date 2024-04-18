import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:icare/src/config/themes/app_text_styles.dart';
import 'package:icare/src/core/utils/app_assets.dart';
import 'package:icare/src/core/utils/app_strings.dart';
import 'package:icare/src/core/widgets/my_sized_box.dart';
import 'package:icare/src/features/speech_therapy/data/models/advanced_level_training_response.dart';
import 'package:icare/src/features/speech_therapy/presentation/widgets/surah_info_container.dart';

class SurahItem extends StatelessWidget {
  const SurahItem({
    super.key,
    required this.surahDetails,
  });

  final AdvancedLevelTrainingDetails surahDetails;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(50.r),
        color: Colors.white,
        boxShadow: <BoxShadow>[
          BoxShadow(
            offset: Offset(0, 2.h),
            blurRadius: 12.r,
            spreadRadius: 0,
            color: Colors.black.withOpacity(0.08),
          ),
        ],
      ),
      child: MaterialButton(
        onPressed: () {},
        padding: EdgeInsets.symmetric(
          vertical: 24.h,
          horizontal: 16.w,
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(50.r),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(surahDetails.surahNameEn,
                    style: AppTextStyles.textStyle18Bold(context)),
                MySizedBox.height12,
                Row(
                  children: <Widget>[
                    SurahInfoContainer(
                      icon: AppAssets.svgsMakiyyahIcon,
                      label: surahDetails.typeEn,
                    ),
                    MySizedBox.width15,
                    SurahInfoContainer(
                      icon: AppAssets.svgsBookIcon,
                      label: '${surahDetails.ayahsNum} Ayat',
                    ),
                  ],
                ),
              ],
            ),
            Text(
              surahDetails.surahNameAr,
              style: AppTextStyles.textStyle20Bold(context).copyWith(
                fontFamily: AppStrings.readexProFontFamily,
              ),
              textDirection: TextDirection.rtl,
            ),
          ],
        ),
      ),
    );
  }
}
