import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:icare/src/core/utils/size_config.dart';
import 'package:icare/src/core/widgets/custom_error_widget.dart';
import 'package:icare/src/core/widgets/my_sized_box.dart';
import 'package:icare/src/core/widgets/shimmer_widget.dart';
import 'package:icare/src/features/speech_therapy/presentation/cubits/speech_therapy/speech_therapy_cubit.dart';
import 'package:icare/src/features/speech_therapy/presentation/cubits/speech_therapy/speech_therapy_state.dart';
import 'package:icare/src/features/speech_therapy/presentation/widgets/score_button.dart';
import 'package:icare/src/features/speech_therapy/presentation/widgets/surah_item.dart';

class AdvancedLevelDataBlocBuilder extends StatelessWidget {
  const AdvancedLevelDataBlocBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SpeechTherapyCubit, SpeechTherapyState>(
      buildWhen: (_, current) =>
          current is GetAdvancedLevelTrainingDataLoading ||
          current is GetAdvancedLevelTrainingDataSuccess ||
          current is GetAdvancedLevelTrainingDataError,
      builder: (context, state) {
        if (state is GetAdvancedLevelTrainingDataSuccess) {
          return Column(
            children: <Widget>[
              Expanded(
                child: ListView.separated(
                  padding: EdgeInsets.zero,
                  itemBuilder: (context, index) {
                    return index % 2 == 0
                        ? SlideInRight(
                            from: 250.w,
                            child: SurahItem(
                                surahDetails: state.data[index].details),
                          )
                        : SlideInLeft(
                            from: 250.w,
                            child: SurahItem(
                                surahDetails: state.data[index].details),
                          );
                  },
                  separatorBuilder: (_, __) => MySizedBox.height25,
                  itemCount: state.data.length,
                ),
              ),
              MySizedBox.height27,
              ScoreButton(
                onPressed: () {},
              ),
            ],
          );
        } else if (state is GetAdvancedLevelTrainingDataError) {
          return CustomErrorWidget(
            error: state.error,
            tryAgainOnPressed: () => context
                .read<SpeechTherapyCubit>()
                .getAdvancedLevelTrainingData(),
          );
        } else {
          return ListView.separated(
            padding: EdgeInsets.zero,
            itemBuilder: (_, __) => ShimmerWidget(
              circularRadiusVal: 50,
              height: SizeConfig.height * 0.15,
              width: double.infinity,
            ),
            separatorBuilder: (_, __) => MySizedBox.height25,
            itemCount: 10,
          );
        }
      },
    );
  }
}
