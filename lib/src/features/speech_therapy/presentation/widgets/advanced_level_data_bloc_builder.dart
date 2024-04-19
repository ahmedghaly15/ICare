import 'package:animate_do/animate_do.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:icare/src/config/router/app_router.dart';
import 'package:icare/src/core/widgets/custom_error_widget.dart';
import 'package:icare/src/core/widgets/my_sized_box.dart';
import 'package:icare/src/features/speech_therapy/presentation/cubits/speech_therapy/speech_therapy_cubit.dart';
import 'package:icare/src/features/speech_therapy/presentation/cubits/speech_therapy/speech_therapy_state.dart';
import 'package:icare/src/features/speech_therapy/presentation/widgets/advanced_level_items_list_loading.dart';
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
                        ? FadeInDown(
                            child: SurahItem(data: state.data[index]),
                          )
                        : FadeInUp(
                            child: SurahItem(data: state.data[index]),
                          );
                  },
                  separatorBuilder: (_, __) => MySizedBox.height25,
                  itemCount: state.data.length,
                ),
              ),
              MySizedBox.height27,
              ScoreButton(
                onPressed: () {
                  context.read<SpeechTherapyCubit>().getScore(3);
                  context.pushRoute(const AdvancedLevelScoreRoute());
                },
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
          return const AdvancedLevelItemsListLoading();
        }
      },
    );
  }
}
