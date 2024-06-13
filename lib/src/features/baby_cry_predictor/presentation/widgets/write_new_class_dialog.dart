import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:icare/src/config/themes/app_text_styles.dart';
import 'package:icare/src/core/helpers/auth_helper.dart';
import 'package:icare/src/core/helpers/extensions.dart';
import 'package:icare/src/core/utils/app_strings.dart';
import 'package:icare/src/core/widgets/custom_circular_progress_indicator.dart';
import 'package:icare/src/core/widgets/custom_text_form_field.dart';
import 'package:icare/src/core/widgets/icare_dialog.dart';
import 'package:icare/src/core/widgets/my_sized_box.dart';
import 'package:icare/src/core/widgets/primary_button.dart';
import 'package:icare/src/features/auth/presentation/widgets/bottom_text_field_spacer.dart';
import 'package:icare/src/features/baby_cry_predictor/presentation/cubits/add_new_class/add_new_class_cubit.dart';
import 'package:icare/src/features/baby_cry_predictor/presentation/cubits/add_new_class/add_new_class_state.dart';

class WriteNewClassDialog extends StatelessWidget {
  const WriteNewClassDialog({super.key});

  @override
  Widget build(BuildContext context) {
    return Form(
      key: context.read<AddNewClassCubit>().writeNewClassFormKey,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Text(
            AppStrings.correctReason,
            style: AppTextStyles.textStyle18Bold.copyWith(
              color: context.isDarkModeActive ? Colors.white : Colors.black,
            ),
          ),
          MySizedBox.height8,
          const BottomTextFieldSpacer(),
          CustomTextFormField(
            controller:
                context.read<AddNewClassCubit>().newClassTextEditingController,
            keyboardType: TextInputType.text,
            hintText: AppStrings.writeTheCorrectReason,
            validating: (String? value) =>
                AuthHelper.validateField(value: value),
          ),
          const BottomTextFieldSpacer(),
          BlocConsumer<AddNewClassCubit, AddNewClassState>(
            listenWhen: (_, current) =>
                current is AddNewClassError || current is AddNewClassSuccess,
            listener: (context, state) {
              state.whenOrNull(
                addNewClassError: (error) {
                  Navigator.pop(context);
                  context.showICareDialogError(error);
                },
                addNewClassSuccess: (_) {
                  Navigator.pop(context);
                  context.showICareDialog(
                    state: ICareDialogStates.success,
                    message: AppStrings.thankYouForFeedback,
                  );
                },
              );
            },
            buildWhen: (_, current) =>
                current is AddNewClassLoading ||
                current is AddNewClassError ||
                current is AddNewClassSuccess,
            builder: (context, state) {
              return PrimaryButton(
                onPressed: () =>
                    context.read<AddNewClassCubit>().addNewClass(context),
                text: state is AddNewClassLoading
                    ? null
                    : AppStrings.leaveFeedback,
                fontSize: 16,
                child: state is AddNewClassLoading
                    ? const CustomCircularProgressIndicator(color: Colors.white)
                    : null,
              );
            },
          ),
        ],
      ),
    );
  }
}
