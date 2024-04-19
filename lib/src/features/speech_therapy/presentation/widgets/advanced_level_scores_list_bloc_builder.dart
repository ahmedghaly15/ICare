import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:icare/src/config/themes/app_text_styles.dart';
import 'package:icare/src/core/utils/app_constants.dart';
import 'package:icare/src/core/utils/app_strings.dart';
import 'package:icare/src/core/widgets/custom_error_widget.dart';
import 'package:icare/src/core/widgets/my_sized_box.dart';
import 'package:icare/src/core/widgets/shimmer_widget.dart';
import 'package:icare/src/features/speech_therapy/presentation/cubits/speech_therapy/speech_therapy_cubit.dart';
import 'package:icare/src/features/speech_therapy/presentation/cubits/speech_therapy/speech_therapy_state.dart';
import 'package:icare/src/features/speech_therapy/presentation/widgets/custom_circular_percent_indicator.dart';

class AdvancedLevelScoresListBlocBuilder extends StatelessWidget {
  const AdvancedLevelScoresListBlocBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SpeechTherapyCubit, SpeechTherapyState>(
      buildWhen: (_, current) =>
          current is GetScoreLoading ||
          current is GetScoreSuccess ||
          current is GetScoreError,
      builder: (context, state) {
        if (state is GetScoreSuccess) {
          return ListView.separated(
            padding: EdgeInsets.zero,
            itemBuilder: (context, index) {
              return Container(
                decoration: AppConstants.surahItemDecoration,
                padding: EdgeInsets.symmetric(
                  vertical: 10.h,
                  horizontal: 20.w,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    CustomCircularPercentIndicator(
                      percent: state.data.subLevels[index].subLevelPercent,
                    ),
                    Text(
                      state.data.subLevels[index].subLevelNameEn!,
                      style: AppTextStyles.textStyle18Bold,
                    ),
                    Text(
                      state.data.subLevels[index].subLevelNameAr!,
                      style: AppTextStyles.textStyle20Bold.copyWith(
                        fontFamily: AppStrings.readexProFontFamily,
                      ),
                      textDirection: TextDirection.rtl,
                    ),
                  ],
                ),
              );
            },
            separatorBuilder: (_, __) => MySizedBox.height15,
            itemCount: state.data.subLevels.length,
          );
        } else if (state is GetScoreError) {
          return CustomErrorWidget(
            error: state.error,
            tryAgainOnPressed: () =>
                context.read<SpeechTherapyCubit>().getScore(3),
          );
        } else {
          return ListView.separated(
            itemBuilder: (_, __) => ShimmerWidget(
              height: 75.h,
              width: double.infinity,
              circularRadiusVal: 50,
            ),
            separatorBuilder: (_, __) => MySizedBox.height15,
            itemCount: 10,
          );
        }
      },
    );
  }
}
