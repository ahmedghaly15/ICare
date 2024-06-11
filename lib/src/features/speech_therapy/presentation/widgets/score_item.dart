import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:icare/src/config/themes/app_colors.dart';
import 'package:icare/src/config/themes/app_text_styles.dart';
import 'package:icare/src/core/helpers/extensions.dart';
import 'package:icare/src/core/widgets/custom_cached_network_image.dart';
import 'package:icare/src/core/widgets/my_sized_box.dart';
import 'package:icare/src/features/speech_therapy/data/models/score_response.dart';

class ScoreItem extends StatelessWidget {
  const ScoreItem({
    super.key,
    required this.scoreDetail,
  });

  final ScoreDetail scoreDetail;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        vertical: 10.h,
        horizontal: 20.w,
      ),
      decoration: BoxDecoration(
        color: context.isDarkModeActive
            ? AppColors.scaffoldDarkModeBackgroundColor
            : Colors.white,
        borderRadius: BorderRadius.circular(15.r),
      ),
      child: FittedBox(
        child: Column(
          children: <Widget>[
            CustomCachedNetworkImage(
              imageUrl: scoreDetail.subLevelImageUrl!,
              imageBuilder: (_, image) => CircleAvatar(
                radius: 40.r,
                backgroundImage: image,
              ),
            ),
            MySizedBox.height20,
            Text(
              '${scoreDetail.subLevelPercent}%',
              style: AppTextStyles.textStyle25Bold
                  .copyWith(color: AppColors.brown),
            ),
          ],
        ),
      ),
    );
  }
}
