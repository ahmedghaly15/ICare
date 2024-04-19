import 'package:animate_do/animate_do.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:icare/src/config/themes/app_colors.dart';
import 'package:icare/src/config/themes/app_text_styles.dart';
import 'package:icare/src/core/utils/app_strings.dart';
import 'package:icare/src/core/widgets/my_sized_box.dart';
import 'package:icare/src/features/tips/presentation/cubit/tips_cubit.dart';

class TipAndDoneTextButton extends StatelessWidget {
  const TipAndDoneTextButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        MySizedBox.height8,
        FadeInLeft(
          from: 30,
          child: Text(
            context.read<TipsCubit>().randomTip!.info,
            style: AppTextStyles.textStyle16Medium,
            textAlign: TextAlign.center,
          ),
        ),
        Align(
          alignment: Alignment.centerRight,
          child: TextButton(
            onPressed: () {
              context.maybePop();
              context.read<TipsCubit>().emitRandomTipDialogIsClosed();
            },
            child: Text(
              AppStrings.done,
              style: AppTextStyles.textStyle16Medium.copyWith(
                color: AppColors.primaryColor,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
