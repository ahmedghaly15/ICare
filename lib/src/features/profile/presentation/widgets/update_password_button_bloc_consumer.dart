import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:icare/src/config/themes/app_text_styles.dart';
import 'package:icare/src/core/utils/app_strings.dart';
import 'package:icare/src/core/widgets/custom_circular_progress_indicator.dart';
import 'package:icare/src/core/widgets/icare_dialog.dart';
import 'package:icare/src/core/widgets/primary_button.dart';
import 'package:icare/src/features/profile/presentation/cubits/edit_profile/edit_profile_cubit.dart';
import 'package:icare/src/features/profile/presentation/cubits/edit_profile/edit_profile_state.dart';

class UpdatePasswordButtonBlocConsumer extends StatelessWidget {
  const UpdatePasswordButtonBlocConsumer({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<EditProfileCubit, EditProfileState>(
      listenWhen: (_, current) =>
          current is UpdatePasswordSuccess || current is UpdatePasswordError,
      listener: (context, state) {
        state.whenOrNull(
          updatePasswordSuccess: () {
            Navigator.pop(context);
            ShowICareDialog.show(
              context: context,
              state: ICareDialogStates.success,
              message: AppStrings.passwordUpdatedSuccessfully,
            );
          },
          updatePasswordError: (error) {
            Navigator.pop(context);
            ShowICareDialog.showICareDialogError(context, error);
          },
        );
      },
      buildWhen: (_, current) =>
          current is UpdatePasswordSuccess || current is UpdatePasswordLoading,
      builder: (context, state) {
        return PrimaryButton(
          onPressed: () =>
              context.read<EditProfileCubit>().updatePassword(context),
          child: state is UpdatePasswordLoading
              ? const CustomCircularProgressIndicator(
                  color: Colors.white,
                )
              : Text(
                  AppStrings.update,
                  style: AppTextStyles.textStyle24Medium(context).copyWith(
                    color: Colors.white,
                  ),
                ),
        );
      },
    );
  }
}
