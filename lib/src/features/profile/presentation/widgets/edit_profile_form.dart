import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:icare/dependency_injection.dart';
import 'package:icare/src/core/helpers/auth_helper.dart';
import 'package:icare/src/core/helpers/extensions.dart';
import 'package:icare/src/core/utils/app_strings.dart';
import 'package:icare/src/core/widgets/custom_text_form_field.dart';
import 'package:icare/src/core/widgets/my_sized_box.dart';
import 'package:icare/src/features/auth/presentation/widgets/bottom_text_field_spacer.dart';
import 'package:icare/src/features/auth/presentation/widgets/custom_text_field_label.dart';
import 'package:icare/src/features/auth/presentation/widgets/email_text_form_field.dart';
import 'package:icare/src/features/profile/presentation/cubits/edit_profile/edit_profile_cubit.dart';
import 'package:icare/src/features/profile/presentation/widgets/edit_profile_image.dart';
import 'package:icare/src/features/profile/presentation/widgets/update_button_bloc_consumer.dart';
import 'package:icare/src/features/profile/presentation/widgets/update_password_form_dialog.dart';

class EditProfileForm extends StatelessWidget {
  const EditProfileForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Form(
      key: context.read<EditProfileCubit>().formKey,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          const Center(child: EditProfileImage()),
          MySizedBox.height55,
          const CustomTextFieldLabel(label: AppStrings.name),
          CustomTextFormField(
            controller: context.read<EditProfileCubit>().nameController,
            hintText: AppStrings.enterYourName,
            autofillHints: const <String>[AutofillHints.name],
            keyboardType: TextInputType.name,
            textCapitalization: TextCapitalization.words,
            validating: (String? value) =>
                AuthHelper.validateNameField(value: value),
            onChanged: (String text) =>
                context.read<EditProfileCubit>().setNewNameTextValue(text),
          ),
          const BottomTextFieldSpacer(),
          const CustomTextFieldLabel(label: AppStrings.email),
          EmailTextFormField(
            emailController: context.read<EditProfileCubit>().emailController,
            onChanged: (String text) =>
                context.read<EditProfileCubit>().setNewEmailTextValue(text),
            hasEditingComplete: false,
          ),
          Align(
            alignment: AlignmentDirectional.centerEnd,
            child: TextButton(
              onPressed: () {
                context.showICareDialog(
                  child: BlocProvider(
                    create: (_) => getIt.get<EditProfileCubit>(),
                    child: const UpdatePasswordFormDialog(),
                  ),
                );
              },
              child: const Text(AppStrings.changePassword),
            ),
          ),
          MySizedBox.height46,
          const UpdateButtonBlocConsumer(),
        ],
      ),
    );
  }
}
