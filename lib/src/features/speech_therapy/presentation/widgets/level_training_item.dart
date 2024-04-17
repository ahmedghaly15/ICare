import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:icare/src/core/utils/app_constants.dart';
import 'package:icare/src/core/widgets/custom_cached_network_image.dart';
import 'package:icare/src/core/widgets/my_sized_box.dart';
import 'package:icare/src/features/speech_therapy/data/models/level_one_training_response.dart';
import 'package:icare/src/features/speech_therapy/presentation/widgets/gradient_colorful_container.dart';
import 'package:icare/src/features/speech_therapy/presentation/widgets/train_buttons_bloc_consumer.dart';

class LevelTrainingItem extends StatelessWidget {
  const LevelTrainingItem({
    super.key,
    required this.data,
  });

  final LevelOneTrainingResponse data;

  @override
  Widget build(BuildContext context) {
    return GradientColorfulContainer(
      radiusVal: 50,
      child: Column(
        children: <Widget>[
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                boxShadow: [
                  AppConstants.primaryBoxShadow,
                ],
                borderRadius: BorderRadius.circular(50.r),
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(50.r),
                child:
                    CustomCachedNetworkImage(imageUrl: data.details.imageUrl),
              ),
            ),
          ),
          MySizedBox.height78,
          // CircularPercentIndicator(
          //   radius: 50.r,
          //   fillColor: AppColors.primaryColor,
          // ),
          TrainButtonsBlocConsumer(data: data),
        ],
      ),
    );
  }
}
