import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:icare/src/config/themes/app_colors.dart';
import 'package:icare/src/config/themes/app_text_styles.dart';
import 'package:icare/src/core/utils/app_constants.dart';
import 'package:icare/src/core/utils/app_strings.dart';
import 'package:icare/src/core/widgets/custom_cached_network_image.dart';
import 'package:icare/src/core/widgets/my_sized_box.dart';
import 'package:icare/src/features/baby_cry_predictor/data/models/baby_cry_predictor_response.dart';

class RecordingResultWidget extends StatelessWidget {
  const RecordingResultWidget({
    super.key,
    required this.predictionResult,
  });

  final BabyCryPredictorResponse predictionResult;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(AppConstants.padding25),
      child: Column(
        children: <Widget>[
          Expanded(
            flex: 3,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(AppConstants.radius25.r),
              child: FadeInDown(
                child:
                    CustomCachedNetworkImage(imageUrl: predictionResult.photo),
              ),
            ),
          ),
          MySizedBox.height12,
          Expanded(
            child: FadeInUp(
              child: RichText(
                text: TextSpan(
                  children: [
                    TextSpan(
                      text: AppStrings.theBabyIs,
                      style: AppTextStyles.textStyle30Bold(context)
                          .copyWith(color: Colors.black),
                    ),
                    TextSpan(
                      text: predictionResult.feeling,
                      style: AppTextStyles.textStyle30Bold(context).copyWith(
                        color: AppColors.primaryColor,
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
