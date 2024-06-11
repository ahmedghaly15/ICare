import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:icare/src/config/router/app_router.dart';
import 'package:icare/src/config/themes/app_colors.dart';
import 'package:icare/src/config/themes/app_text_styles.dart';
import 'package:icare/src/core/helpers/extensions.dart';
import 'package:icare/src/core/utils/app_strings.dart';
import 'package:icare/src/core/widgets/custom_cached_network_image.dart';
import 'package:icare/src/core/widgets/my_sized_box.dart';
import 'package:icare/src/core/widgets/primary_button.dart';
import 'package:icare/src/features/baby_cry_predictor/data/models/last_result_response.dart';

class LastResultDialog extends StatelessWidget {
  const LastResultDialog({
    super.key,
    required this.lastResult,
  });

  final LastResultResponse lastResult;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        RichText(
          textAlign: TextAlign.center,
          text: TextSpan(
            children: [
              TextSpan(
                text: '${AppStrings.lastTimeTheBabyWas}\n',
                style: AppTextStyles.textStyle18Bold.copyWith(
                  color: context.isDarkModeActive ? Colors.white : Colors.black,
                ),
              ),
              TextSpan(
                text: lastResult.feeling,
                style: AppTextStyles.textStyle18Bold.copyWith(
                  color: AppColors.primaryColor,
                ),
              ),
            ],
          ),
        ),
        MySizedBox.height30,
        CustomCachedNetworkImage(
          imageUrl: lastResult.photo!,
          imageBuilder: (_, image) => CircleAvatar(
            radius: 90.r,
            backgroundImage: image,
          ),
        ),
        MySizedBox.height30,
        PrimaryButton(
          text: AppStrings.yseThatsRight,
          fontSize: 16,
          onPressed: () => context.maybePop(),
        ),
        MySizedBox.height15,
        PrimaryButton(
          text: AppStrings.leaveFeedback,
          fontSize: 16,
          onPressed: () {
            context.maybePop().then((value) {
              context.pushRoute(const BabyCryPredictorLeaveFeedbackRoute());
            });
          },
        ),
      ],
    );
  }
}
