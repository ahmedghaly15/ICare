import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:icare/src/config/themes/app_colors.dart';
import 'package:icare/src/core/widgets/custom_animated_dialog.dart';
import 'package:icare/src/features/tips/presentation/cubit/tips_cubit.dart';
import 'package:icare/src/features/tips/presentation/cubit/tips_state.dart';
import 'package:icare/src/features/tips/presentation/widgets/loading_random_tip_widget.dart';
import 'package:icare/src/features/tips/presentation/widgets/random_tip_error_dialog.dart';
import 'package:icare/src/features/tips/presentation/widgets/tip_and_done_text_button.dart';
import 'package:icare/src/features/tips/presentation/widgets/what_to_say_and_topic.dart';

class RandomTipDialog extends StatelessWidget {
  const RandomTipDialog({super.key, required this.animation1});

  final Animation<double> animation1;

  @override
  Widget build(BuildContext context) {
    return CustomAnimatedDialog(
      animation1: animation1,
      backgroundColor: AppColors.lightGreys3,
      child: BlocConsumer<TipsCubit, TipsState>(
        listenWhen: (_, current) => current is RandomTipDialogIsClosed,
        listener: (context, state) {
          _handleTipsState(state, context);
        },
        buildWhen: (_, current) =>
            current is GetRandomTipLoading ||
            current is GetRandomTipSuccess ||
            current is GetRandomTipError ||
            current is ConvertIsRandomTipRead,
        builder: (context, state) {
          if (state is GetRandomTipError) {
            return RandomTipErrorDialog(error: state.error);
          } else if (state is GetRandomTipSuccess ||
              state is ConvertIsRandomTipRead) {
            return context.read<TipsCubit>().isRandomTipRead
                ? const TipAndDoneTextButton()
                : const WhatToSayAndTopic();
          } else {
            return const LoadingRandomTipWidget();
          }
        },
      ),
    );
  }

  void _handleTipsState(TipsState<dynamic> state, BuildContext context) {
    state.whenOrNull(
      randomTipDialogIsClosed: () {
        context.read<TipsCubit>().convertIsRandomTipRead();
      },
    );
  }
}
