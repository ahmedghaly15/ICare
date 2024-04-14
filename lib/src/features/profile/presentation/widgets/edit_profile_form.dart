import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:icare/src/core/helpers/auth_helper.dart';
import 'package:icare/src/core/helpers/helper.dart';
import 'package:icare/src/core/utils/app_strings.dart';
import 'package:icare/src/core/widgets/custom_cached_network_image.dart';
import 'package:icare/src/core/widgets/custom_text_form_field.dart';
import 'package:icare/src/core/widgets/my_sized_box.dart';
import 'package:icare/src/core/widgets/primary_button.dart';
import 'package:icare/src/features/auth/presentation/widgets/bottom_text_field_spacer.dart';
import 'package:icare/src/features/auth/presentation/widgets/custom_text_field_label.dart';
import 'package:icare/src/features/auth/presentation/widgets/email_text_form_field.dart';
import 'package:icare/src/features/profile/presentation/cubits/edit_profile/edit_profile_cubit.dart';

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
          Center(
            child: CustomCachedNetworkImage(
              imageUrl: Helper.currentUser!.profileImage!,
              imageBuilder: (_, image) => CircleAvatar(
                radius: 90.r,
                backgroundImage: image,
              ),
            ),
          ),
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
          ),
          const BottomTextFieldSpacer(),
          EmailTextFormField(
            emailController: context.read<EditProfileCubit>().emailController,
          ),
          MySizedBox.height46,
          PrimaryButton(
            onPressed: () {},
            text: AppStrings.update,
          ),
        ],
      ),
    );
  }
}
