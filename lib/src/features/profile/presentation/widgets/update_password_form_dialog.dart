import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:icare/src/config/themes/app_text_styles.dart';
import 'package:icare/src/core/helpers/auth_helper.dart';
import 'package:icare/src/core/utils/app_strings.dart';
import 'package:icare/src/core/utils/functions/is_dark_mode_active.dart';
import 'package:icare/src/core/widgets/custom_text_form_field.dart';
import 'package:icare/src/core/widgets/my_sized_box.dart';
import 'package:icare/src/features/auth/presentation/widgets/bottom_text_field_spacer.dart';
import 'package:icare/src/features/profile/presentation/cubits/edit_profile/edit_profile_cubit.dart';
import 'package:icare/src/features/profile/presentation/cubits/edit_profile/edit_profile_state.dart';
import 'package:icare/src/features/profile/presentation/widgets/update_password_button_bloc_consumer.dart';

class UpdatePasswordFormDialog extends StatelessWidget {
  const UpdatePasswordFormDialog({super.key});

  @override
  Widget build(BuildContext context) {
    return Form(
      key: context.read<EditProfileCubit>().changePassDialogFormKey,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          MySizedBox.height8,
          Text(
            AppStrings.changePassword,
            style: AppTextStyles.textStyle18Bold.copyWith(
              color: isDarkModeActive(context) ? Colors.white : Colors.black,
            ),
          ),
          MySizedBox.height8,
          const BottomTextFieldSpacer(),
          BlocBuilder<EditProfileCubit, EditProfileState>(
            buildWhen: (_, current) => current is ChangePassVisibility,
            builder: (context, state) => CustomTextFormField(
              controller: context.read<EditProfileCubit>().passwordController,
              keyboardType: TextInputType.visiblePassword,
              autofillHints: const <String>[AutofillHints.password],
              obscureText: context.read<EditProfileCubit>().isPassVisible,
              suffixIcon: IconButton(
                padding: EdgeInsets.zero,
                icon: Icon(
                  context.read<EditProfileCubit>().isPassVisible
                      ? Icons.visibility
                      : Icons.visibility_off,
                ),
                onPressed: () =>
                    context.read<EditProfileCubit>().changePasswordVisibility(),
              ),
              hintText: AppStrings.enterYourPassword,
              validating: (String? value) =>
                  AuthHelper.validatePasswordField(value: value),
              onChanged: (String text) =>
                  context.read<EditProfileCubit>().setNewPassTextValue(text),
            ),
          ),
          const BottomTextFieldSpacer(),
          const UpdatePasswordButtonBlocConsumer(),
          const BottomTextFieldSpacer(),
        ],
      ),
    );
  }
}
