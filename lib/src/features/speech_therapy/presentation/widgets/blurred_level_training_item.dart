import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:icare/src/config/themes/app_text_styles.dart';
import 'package:icare/src/core/utils/app_constants.dart';
import 'package:icare/src/core/utils/app_strings.dart';
import 'package:icare/src/core/widgets/my_sized_box.dart';
import 'package:icare/src/features/speech_therapy/presentation/widgets/level_training_item.dart';

class BlurredLevelTrainingItem extends StatelessWidget {
  const BlurredLevelTrainingItem({
    super.key,
    required this.available,
    required this.imageUrl,
    required this.onTap,
  });

  final bool available;
  final String imageUrl;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.bottomLeft,
      children: <Widget>[
        LevelTrainingItem(
          available: available,
          imageUrl: imageUrl,
          onTap: onTap,
        ),
        IgnorePointer(
          child: ClipRect(
            child: BackdropFilter(
              filter: ImageFilter.blur(
                sigmaX: 4,
                sigmaY: 4,
              ),
              child: Container(
                height: AppConstants.levelOneItemHeight,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25.r),
                  color: Colors.transparent,
                ),
              ),
            ),
          ),
        ),
        Positioned(
          left: 10.w,
          bottom: 10.h,
          child: Row(
            children: <Widget>[
              const Icon(
                Icons.lock,
                color: Colors.white,
              ),
              MySizedBox.width10,
              Text(
                AppStrings.locked,
                style: AppTextStyles.textStyle20Bold(context).copyWith(
                  color: Colors.white,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
