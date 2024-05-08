import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:icare/src/config/themes/app_text_styles.dart';
import 'package:icare/src/core/utils/app_strings.dart';
import 'package:icare/src/core/utils/functions/is_dark_mode_active.dart';
import 'package:icare/src/features/baby_cry_predictor/presentation/cubit/baby_cry_predictor_cubit.dart';

class NotifyingUserAboutEnhancingDialog extends StatelessWidget {
  const NotifyingUserAboutEnhancingDialog({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        Text(
          AppStrings.notifyingUserAboutEnhancingAIModel,
          style: AppTextStyles.textStyle14Regular.copyWith(
            color: isDarkModeActive(context) ? Colors.white : Colors.black,
          ),
          textAlign: TextAlign.center,
        ),
        Align(
          alignment: Alignment.centerRight,
          child: TextButton(
            onPressed: () {
              context
                  .read<BabyCryPredictorCubit>()
                  .cacheHasUserNotifiedAboutEnhancing();
              context.maybePop();
            },
            child: const Text(AppStrings.done),
          ),
        ),
      ],
    );
  }
}
