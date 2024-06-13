import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:icare/src/core/widgets/custom_circular_arrow_button.dart';
import 'package:icare/src/features/speech_therapy/data/models/mark_response.dart';
import 'package:icare/src/features/speech_therapy/presentation/cubits/level_training/level_training_cubit.dart';
import 'package:icare/src/features/speech_therapy/presentation/cubits/level_training/level_training_state.dart';

class NextCircularButtonBlocBuilder extends StatelessWidget {
  const NextCircularButtonBlocBuilder({super.key, required this.onPressed});

  final void Function(Next data) onPressed;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LevelTrainingCubit, LevelTrainingState>(
      buildWhen: (previous, current) =>
          current is MarkSuccess || current is LevelTrainingInitial,
      builder: (context, state) {
        if (state is MarkSuccess) {
          return state.data.percent >= 60
              ? SliverPadding(
                  padding: EdgeInsets.only(right: 24.w),
                  sliver: SliverToBoxAdapter(
                    child: Align(
                      alignment: AlignmentDirectional.centerEnd,
                      child: IntrinsicWidth(
                        child: FadeInLeft(
                          child: CustomCircularArrowButton(
                            icon: Icons.arrow_forward_ios,
                            onPressed: () {
                              context.read<LevelTrainingCubit>().emitInitial();
                              onPressed(state.data.next);
                            },
                          ),
                        ),
                      ),
                    ),
                  ),
                )
              : const SliverToBoxAdapter(child: SizedBox.shrink());
        } else {
          return const SliverToBoxAdapter(child: SizedBox.shrink());
        }
      },
    );
  }
}
