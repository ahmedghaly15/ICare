import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:icare/src/config/router/app_router.dart';
import 'package:icare/src/config/themes/app_text_styles.dart';
import 'package:icare/src/core/utils/app_assets.dart';
import 'package:icare/src/core/utils/app_constants.dart';
import 'package:icare/src/core/utils/app_strings.dart';
import 'package:icare/src/core/widgets/my_sized_box.dart';
import 'package:icare/src/features/speech_therapy/data/models/advanced_level_training_response.dart';
import 'package:icare/src/features/speech_therapy/presentation/widgets/surah_info_container.dart';

class SurahItem extends StatelessWidget {
  const SurahItem({
    super.key,
    required this.data,
  });

  final AdvancedLevelTrainingResponse data;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: AppConstants.surahItemDecoration(context),
      child: MaterialButton(
        onPressed: () {
          context.pushRoute(AdvancedLevelTrainingRoute(data: data));
        },
        padding: EdgeInsets.symmetric(
          vertical: 24.h,
          horizontal: 16.w,
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(50.r),
        ),
        child: Row(
          children: <Widget>[
            Expanded(
              // flex: 3,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    data.details.surahNameEn,
                    style: AppTextStyles.textStyle18Bold,
                  ),
                  MySizedBox.height12,
                  Row(
                    children: <Widget>[
                      SurahInfoContainer(
                        icon: AppAssets.svgsMakiyyahIcon,
                        label: data.details.typeEn,
                      ),
                      MySizedBox.width15,
                      SurahInfoContainer(
                        icon: AppAssets.svgsBookIcon,
                        label: '${data.details.ayahsNum} Ayat',
                      ),
                    ],
                  ),
                ],
              ),
            ),
            MySizedBox.width10,
            Text(
              data.details.surahNameAr,
              style: AppTextStyles.textStyle20Bold.copyWith(
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
