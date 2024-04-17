import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:icare/src/core/utils/app_constants.dart';
import 'package:icare/src/core/utils/app_strings.dart';
import 'package:icare/src/core/widgets/custom_cached_network_image.dart';
import 'package:icare/src/core/widgets/icare_dialog.dart';

class LevelTrainingItem extends StatelessWidget {
  const LevelTrainingItem({
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
    return Container(
      height: AppConstants.levelOneItemHeight,
      width: double.infinity,
      decoration: BoxDecoration(
        boxShadow: [
          AppConstants.primaryBoxShadow,
        ],
        borderRadius: BorderRadius.circular(25.r),
      ),
      child: InkWell(
        onTap: available
            ? onTap
            : () {
                ShowICareDialog.show(
                  context: context,
                  state: ICareDialogStates.error,
                  message: AppStrings.youAreAlmostThere,
                );
              },
        child: ClipRRect(
          borderRadius: BorderRadius.circular(25.r),
          child: CustomCachedNetworkImage(imageUrl: imageUrl),
        ),
      ),
    );
  }
}
