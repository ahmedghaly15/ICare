import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:icare/src/config/themes/app_colors.dart';
import 'package:icare/src/config/themes/app_text_styles.dart';
import 'package:icare/src/core/utils/app_strings.dart';
import 'package:icare/src/core/utils/functions/is_dark_mode_active.dart';
import 'package:icare/src/features/tiny_tales/presentation/cubits/new_tiny_tale/new_tiny_tale_cubit.dart';
import 'package:icare/src/features/tiny_tales/presentation/cubits/new_tiny_tale/new_tiny_tale_state.dart';

class PublishTextButtonBlocConsumer extends StatelessWidget {
  const PublishTextButtonBlocConsumer({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<NewTinyTaleCubit, NewTinyTaleState>(
      listenWhen: (_, current) =>
          current is CreateTinyTaleSuccess ||
          current is CreateTinyTaleError ||
          current is UploadTinyTaleImageSuccess ||
          current is UploadTinyTaleImageError,
      listener: (context, state) {
        context
            .read<NewTinyTaleCubit>()
            .handleCreateNewTinyTaleStates(state, context);
      },
      buildWhen: (_, current) =>
          current is SetNewTextValue ||
          current is PickTinyTaleImageSuccess ||
          current is RemoveTinyTaleImage,
      builder: (context, state) {
        return TextButton(
          onPressed:
              context.read<NewTinyTaleCubit>().publishNewTinyTale(context),
          style: ButtonStyle(
            padding: WidgetStatePropertyAll(EdgeInsets.all(8.h)),
            shape: WidgetStatePropertyAll(
              RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(24.r)),
              ),
            ),
            backgroundColor: WidgetStateProperty.resolveWith<Color>(
              (Set<WidgetState> states) {
                if (states.contains(WidgetState.disabled)) {
                  return isDarkModeActive(context)
                      ? AppColors.lightBlue
                      : AppColors.lightGrey;
                }
                return AppColors.primaryColor;
              },
            ),
            foregroundColor: const WidgetStatePropertyAll(Colors.white),
            textStyle: WidgetStateProperty.resolveWith<TextStyle>(
              (Set<WidgetState> states) {
                if (states.contains(WidgetState.disabled)) {
                  return AppTextStyles.textStyle14Regular;
                }
                return AppTextStyles.textStyle15Bold;
              },
            ),
          ),
          child: const Text(AppStrings.publish),
        );
      },
    );
  }
}
