import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:icare/src/config/themes/app_colors.dart';
import 'package:icare/src/core/helpers/extensions.dart';
import 'package:icare/src/core/widgets/my_sized_box.dart';
import 'package:icare/src/features/baby_cry_predictor/data/models/baby_cry_predictor_class.dart';
import 'package:icare/src/features/baby_cry_predictor/presentation/cubits/baby_cry_predictor_feedback/bab_cry_predictor_feedback_cubit.dart';
import 'package:icare/src/features/baby_cry_predictor/presentation/cubits/baby_cry_predictor_feedback/bab_cry_predictor_feedback_state.dart';
import 'package:icare/src/features/baby_cry_predictor/presentation/widgets/baby_cry_predictor_class_and_play_audio_icon_button.dart';
import 'package:icare/src/features/baby_cry_predictor/presentation/widgets/custom_class_description_text.dart';

class BabyCryPredictorClassItemBlocBuilder extends StatelessWidget {
  const BabyCryPredictorClassItemBlocBuilder({
    super.key,
    required this.babyCryPredictorClass,
    required this.index,
  });

  final BabyCryPredictorClass babyCryPredictorClass;
  final int index;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<BabyCryPredictorFeedbackCubit,
        BabyCryPredictorFeedbackState>(
      buildWhen: (_, state) => state is UpdateSelectedClass,
      builder: (context, state) {
        return Container(
          margin: EdgeInsets.only(bottom: 15.h),
          decoration: BoxDecoration(
            color: context.isDarkModeActive
                ? AppColors.lightBlue
                : AppColors.lightGrey2,
            borderRadius: BorderRadius.circular(25.r),
            border:
                context.read<BabyCryPredictorFeedbackCubit>().selectedClass ==
                        babyCryPredictorClass
                    ? Border.all(
                        color: AppColors.primaryColor,
                        width: 4.w,
                      )
                    : null,
          ),
          child: MaterialButton(
            onPressed: () => context
                .read<BabyCryPredictorFeedbackCubit>()
                .updateSelectedClass(babyCryPredictorClass),
            padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 9.h),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(25.r),
            ),
            child:
                context.read<BabyCryPredictorFeedbackCubit>().selectedClass ==
                        babyCryPredictorClass
                    ? Column(
                        children: <Widget>[
                          BabyCryPredictorClassAndPlayAudioIconButton(
                            babyCryPredictorClass: babyCryPredictorClass,
                            index: index,
                          ),
                          MySizedBox.height15,
                          CustomClassDescriptionText(
                            originalText: babyCryPredictorClass.hint,
                          ),
                          Align(
                            alignment: AlignmentDirectional.centerEnd,
                            child: IconButton(
                              onPressed: () => context
                                  .read<BabyCryPredictorFeedbackCubit>()
                                  .updateSelectedClass(babyCryPredictorClass),
                              icon: const Icon(
                                Icons.close,
                                color: AppColors.primaryColor,
                              ),
                            ),
                          ),
                        ],
                      )
                    : BabyCryPredictorClassAndPlayAudioIconButton(
                        babyCryPredictorClass: babyCryPredictorClass,
                        index: index,
                      ),
          ),
        );
      },
    );
  }
}
