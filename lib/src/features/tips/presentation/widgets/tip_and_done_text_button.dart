import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:icare/src/config/themes/app_text_styles.dart';
import 'package:icare/src/core/utils/app_strings.dart';
import 'package:icare/src/core/helpers/extensions.dart';
import 'package:icare/src/features/tips/presentation/cubit/tips_cubit.dart';

class TipAndDoneTextButton extends StatelessWidget {
  const TipAndDoneTextButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        FadeInLeft(
          from: 30,
          child: Text(
            context.read<TipsCubit>().randomTip!.info,
            style: AppTextStyles.textStyle14Medium.copyWith(
              color: context.isDarkModeActive ? Colors.white : Colors.black,
            ),
            textAlign: TextAlign.center,
          ),
        ),
        Align(
          alignment: Alignment.centerRight,
          child: TextButton(
            onPressed: () {
              context.read<TipsCubit>().emitRandomTipDialogIsClosed();
            },
            child: const Text(AppStrings.done),
          ),
        ),
      ],
    );
  }
}
