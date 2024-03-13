import 'package:flutter/material.dart';
import 'package:icare/src/config/themes/app_text_styles.dart';
import 'package:icare/src/core/utils/app_constants.dart';
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
      padding: const EdgeInsets.all(AppConstants.horizontalPaddingVal),
      child: Column(
        children: <Widget>[
          Expanded(
            flex: 3,
            child: CustomCachedNetworkImage(imageUrl: predictionResult.photo),
          ),
          MySizedBox.height12,
          Expanded(
            child: Text(
              predictionResult.feeling,
              style: AppTextStyles.textStyle20Bold(context),
              textAlign: TextAlign.center,
            ),
          ),
        ],
      ),
    );
  }
}
