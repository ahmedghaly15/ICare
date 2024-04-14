import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:icare/src/config/themes/app_colors.dart';
import 'package:icare/src/config/themes/app_text_styles.dart';
import 'package:icare/src/core/utils/app_strings.dart';
import 'package:icare/src/core/widgets/custom_circular_progress_indicator.dart';
import 'package:icare/src/core/widgets/primary_button.dart';
import 'package:icare/src/features/profile/presentation/cubits/edit_profile/edit_profile_cubit.dart';
import 'package:icare/src/features/profile/presentation/cubits/edit_profile/edit_profile_state.dart';

class UpdateButtonBlocConsumer extends StatelessWidget {
  const UpdateButtonBlocConsumer({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<EditProfileCubit, EditProfileState>(
      listenWhen: (_, current) =>
          current is EditProfileSuccess ||
          current is EditProfileError ||
          current is UploadNewProfileImageSuccess ||
          current is UploadNewProfileImageError,
      listener: (context, state) {
        context.read<EditProfileCubit>().handleEditProfileState(state, context);
      },
      buildWhen: (_, current) =>
          current is EditProfileLoading ||
          current is UploadNewProfileImageLoading ||
          current is SetNewNameTextValue ||
          current is SetNewEmailTextValue ||
          current is EditProfileSuccess ||
          current is UploadNewProfileImageSuccess,
      builder: (context, state) {
        return PrimaryButton(
          backgroundColor:
              context.read<EditProfileCubit>().updateUser(context) != null
                  ? AppColors.primaryColor
                  : Colors.grey,
          onPressed: context.read<EditProfileCubit>().updateUser(context),
          child: (state is EditProfileLoading ||
                  state is UploadNewProfileImageLoading)
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
