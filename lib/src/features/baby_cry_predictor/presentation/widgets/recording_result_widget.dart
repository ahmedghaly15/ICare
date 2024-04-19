import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:icare/src/config/themes/app_colors.dart';
import 'package:icare/src/config/themes/app_text_styles.dart';
import 'package:icare/src/core/utils/app_constants.dart';
import 'package:icare/src/core/utils/app_strings.dart';
import 'package:icare/src/core/widgets/custom_cached_network_image.dart';
import 'package:icare/src/core/widgets/my_sized_box.dart';
import 'package:icare/src/core/widgets/primary_button.dart';
import 'package:icare/src/features/baby_cry_predictor/data/models/baby_cry_predictor_response.dart';
import 'package:icare/src/features/baby_cry_predictor/presentation/cubit/baby_cry_predictor_cubit.dart';

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
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          FadeInDown(
            child: CustomCachedNetworkImage(
              imageUrl: predictionResult.photo,
              imageBuilder: (_, image) => CircleAvatar(
                radius: 150.r,
                backgroundImage: image,
              ),
            ),
          ),
          MySizedBox.height30,
          FadeInUp(
            child: RichText(
              text: TextSpan(
                children: [
                  TextSpan(
                    text: AppStrings.theBabyIs,
                    style: AppTextStyles.textStyle30Bold
                        .copyWith(color: Colors.black),
                  ),
                  TextSpan(
                    text: predictionResult.feeling,
                    style: AppTextStyles.textStyle30Bold.copyWith(
                      color: AppColors.primaryColor,
                    ),
                  )
                ],
              ),
            ),
          ),
          MySizedBox.height12,
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 40.w,
              vertical: 24.h,
            ),
            child: FadeInUp(
              child: PrimaryButton(
                onPressed: () =>
                    context.read<BabyCryPredictorCubit>().emitInitialState(),
                text: AppStrings.done,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
