import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:icare/src/config/themes/app_text_styles.dart';
import 'package:icare/src/core/helpers/auth_helper.dart';
import 'package:icare/src/core/utils/app_strings.dart';
import 'package:icare/src/core/widgets/custom_dialog.dart';
import 'package:icare/src/core/widgets/primary_button.dart';
import 'package:icare/src/features/auth/presentation/cubits/forgot_password/forgot_password_cubit.dart';
import 'package:icare/src/features/auth/presentation/cubits/forgot_password/forgot_password_state.dart';
import 'package:icare/src/features/auth/presentation/widgets/bottom_text_field_spacer.dart';
import 'package:icare/src/features/auth/presentation/widgets/custom_text_field_label.dart';
import 'package:icare/src/features/auth/presentation/widgets/email_text_form_field.dart';

class ForgotPasswordForm extends StatefulWidget {
  const ForgotPasswordForm({super.key});

  @override
  State<ForgotPasswordForm> createState() => _ForgotPasswordFormState();
}

class _ForgotPasswordFormState extends State<ForgotPasswordForm> {
  @override
  Widget build(BuildContext context) {
    return Form(
      key: context.read<ForgotPasswordCubit>().formKey,
      autovalidateMode: context.read<ForgotPasswordCubit>().autovalidateMode,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          const CustomTextFieldLabel(label: AppStrings.email),
          EmailTextFormField(
            emailController:
                context.read<ForgotPasswordCubit>().emailController,
            hasEditingComplete: false,
            onSubmit: (String val) => _forgotPassword(context),
          ),
          const BottomTextFieldSpacer(),
          BlocConsumer<ForgotPasswordCubit, ForgotPasswordState>(
            // buildWhen: (context, state) => state is Loading,
            listenWhen: (context, state) =>
                state is Loading || state is Success || state is Error,
            listener: (context, state) =>
                _forgotPasswordListener(state, context),
            builder: (context, state) {
              return PrimaryButton(
                child: state is Loading
                    ? const CircularProgressIndicator(
                        color: Colors.white,
                      )
                    : Text(
                        AppStrings.resetPassword,
                        style:
                            AppTextStyles.textStyle24Medium(context).copyWith(
                          color: Colors.white,
                        ),
                      ),
                onPressed: () => _forgotPassword(context),
              );
            },
          ),
        ],
      ),
    );
  }

  void _forgotPasswordListener(
      ForgotPasswordState<dynamic> state, BuildContext context) {
    state.whenOrNull(
      success: () {
        CustomDialog.show(
          context: context,
          state: CustomDialogStates.success,
          message: AppStrings.resetPasswordEmailIsSent,
        );
      },
      error: (error) {
        CustomDialog.show(
          context: context,
          state: CustomDialogStates.error,
          message: error,
        );
      },
    );
  }

  void _forgotPassword(BuildContext context) {
    if (context.read<ForgotPasswordCubit>().formKey.currentState!.validate()) {
      AuthHelper.keyboardUnfocus(context);

      context.read<ForgotPasswordCubit>().forgotPassword();
    } else {
      setState(() {
        context.read<ForgotPasswordCubit>().autovalidateMode =
            AutovalidateMode.always;
      });
    }
  }
}
