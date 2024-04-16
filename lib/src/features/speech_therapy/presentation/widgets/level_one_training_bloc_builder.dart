import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:icare/src/core/utils/app_constants.dart';
import 'package:icare/src/core/widgets/custom_error_widget.dart';
import 'package:icare/src/core/widgets/my_sized_box.dart';
import 'package:icare/src/core/widgets/shimmer_widget.dart';
import 'package:icare/src/features/speech_therapy/presentation/cubit/speech_therapy_cubit.dart';
import 'package:icare/src/features/speech_therapy/presentation/cubit/speech_therapy_state.dart';
import 'package:icare/src/features/speech_therapy/presentation/widgets/blurred_level_one_training_item.dart';
import 'package:icare/src/features/speech_therapy/presentation/widgets/level_one_training_item.dart';

class LevelOneTrainingBlocBuilder extends StatelessWidget {
  const LevelOneTrainingBlocBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SpeechTherapyCubit, SpeechTherapyState>(
      buildWhen: (_, current) =>
          current is GetLevelOneTrainingDataLoading ||
          current is GetLevelOneTrainingDataSuccess ||
          current is GetLevelOneTrainingDataError,
      builder: (context, state) {
        if (state is GetLevelOneTrainingDataSuccess) {
          return ListView.separated(
            padding: EdgeInsets.zero,
            itemBuilder: (context, index) => state.data[index].details.available
                ? (index % 2 == 0
                    ? FadeInDown(
                        from: 50,
                        child: LevelOneTrainingItem(
                          data: state.data[index],
                          onTap: () {},
                        ),
                      )
                    : FadeInUp(
                        from: 50,
                        child: LevelOneTrainingItem(
                          data: state.data[index],
                          onTap: () {},
                        ),
                      ))
                : (index % 2 == 0
                    ? FadeInDown(
                        from: 50,
                        child: BlurredLevelOneTrainingItem(
                          data: state.data[index],
                          onTap: () {},
                        ),
                      )
                    : FadeInUp(
                        from: 50,
                        child: BlurredLevelOneTrainingItem(
                          data: state.data[index],
                          onTap: () {},
                        ),
                      )),
            separatorBuilder: (_, __) => MySizedBox.height15,
            itemCount: state.data.length,
          );
        } else if (state is GetLevelOneTrainingDataError) {
          return CustomErrorWidget(
            error: state.error,
            tryAgainOnPressed: () =>
                context.read<SpeechTherapyCubit>().getLevelOneTrainingData(),
          );
        } else {
          return ListView.separated(
            itemBuilder: (_, __) => ShimmerWidget(
              height: AppConstants.levelOneItemHeight,
              width: double.infinity,
            ),
            separatorBuilder: (_, __) => MySizedBox.height15,
            itemCount: 10,
          );
        }
      },
    );
  }
}
