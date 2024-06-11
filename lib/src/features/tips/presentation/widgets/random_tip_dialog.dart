import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:icare/src/config/themes/app_colors.dart';
import 'package:icare/src/core/helpers/extensions.dart';
import 'package:icare/src/core/widgets/icare_dialog_content.dart';
import 'package:icare/src/features/tips/presentation/cubit/tips_cubit.dart';
import 'package:icare/src/features/tips/presentation/cubit/tips_state.dart';
import 'package:icare/src/features/tips/presentation/widgets/loading_random_tip_widget.dart';
import 'package:icare/src/features/tips/presentation/widgets/random_tip_error_dialog.dart';
import 'package:icare/src/features/tips/presentation/widgets/tip_and_done_text_button.dart';
import 'package:icare/src/features/tips/presentation/widgets/tip_topic_and_read_button.dart';

class RandomTipDialog extends StatelessWidget {
  const RandomTipDialog({super.key});

  @override
  Widget build(BuildContext context) {
    return ICareDialogContent(
      appLogoBoxShadow: [
        BoxShadow(
          color: context.isDarkModeActive
              ? Colors.black
              : Colors.black.withOpacity(0.25),
          offset: const Offset(0, -4),
          blurRadius: 4,
          spreadRadius: 0,
          blurStyle: BlurStyle.outer,
        ),
      ],
      gradient: LinearGradient(
        colors: context.isDarkModeActive
            ? <Color>[
                AppColors.darkOrange,
                AppColors.deepBrown,
              ]
            : <Color>[
                AppColors.gradientOrange,
                Colors.white,
              ],
        begin: Alignment.topLeft,
        end: Alignment.bottomRight,
      ),
      child: BlocConsumer<TipsCubit, TipsState>(
        listenWhen: (_, current) => current is RandomTipDialogIsClosed,
        listener: (context, state) {
          context.read<TipsCubit>().handleTipsState(state);
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
                : const TipTopicAndReadButton();
          } else {
            return const LoadingRandomTipWidget();
          }
        },
      ),
    );
  }
}
