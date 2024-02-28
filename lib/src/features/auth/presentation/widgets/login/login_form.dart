import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:rive/rive.dart';

import 'package:icare/src/config/router/app_router.dart';
import 'package:icare/src/core/helpers/auth_helper.dart';
import 'package:icare/src/core/utils/app_assets.dart';
import 'package:icare/src/core/utils/app_strings.dart';
import 'package:icare/src/core/utils/rive_utils.dart';
import 'package:icare/src/core/widgets/custom_dialog.dart';
import 'package:icare/src/core/widgets/custom_text_form_field.dart';
import 'package:icare/src/core/widgets/primary_button.dart';
import 'package:icare/src/features/auth/presentation/cubits/login/login_cubit.dart';
import 'package:icare/src/features/auth/presentation/cubits/login/login_state.dart';
import 'package:icare/src/features/auth/presentation/widgets/bottom_text_field_spacer.dart';
import 'package:icare/src/features/auth/presentation/widgets/custom_positioned.dart';
import 'package:icare/src/features/auth/presentation/widgets/custom_text_field_label.dart';
import 'package:icare/src/features/auth/presentation/widgets/email_text_form_field.dart';

class LoginForm extends StatefulWidget {
  const LoginForm({super.key});

  @override
  State<LoginForm> createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  bool isShowLoading = false;
  bool isShowConfetti = false;

  late final SMITrigger checkTrigger;
  late final SMITrigger errorTrigger;
  late final SMITrigger confettiTrigger;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Form(
          key: context.read<LoginCubit>().formKey,
          autovalidateMode: context.read<LoginCubit>().autovalidateMode,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              const CustomTextFieldLabel(label: AppStrings.email),
              EmailTextFormField(
                emailController: context.read<LoginCubit>().emailController,
                emailFocusNode: context.read<LoginCubit>().emailFocusNode,
                passwordFocusNode: context.read<LoginCubit>().passwordFocusNode,
              ),
              const BottomTextFieldSpacer(),
              const CustomTextFieldLabel(label: AppStrings.password),
              BlocBuilder<LoginCubit, LoginState>(
                builder: (context, state) => CustomTextFormField(
                  controller: context.read<LoginCubit>().passwordController,
                  focusNode: context.read<LoginCubit>().passwordFocusNode,
                  keyboardType: TextInputType.visiblePassword,
                  autofillHints: const <String>[AutofillHints.password],
                  obscureText: context.read<LoginCubit>().isLoginPassVisible,
                  suffixIcon: IconButton(
                    padding: EdgeInsets.zero,
                    icon: Icon(
                      context.read<LoginCubit>().isLoginPassVisible
                          ? Icons.visibility
                          : Icons.visibility_off,
                      color: Colors.black,
                    ),
                    onPressed: () =>
                        context.read<LoginCubit>().changePassVisibility(),
                  ),
                  hintText: AppStrings.enterYourPassword,
                  onSubmit: (String val) => _login(context),
                  validating: (String? value) =>
                      AuthHelper.validatePasswordField(context, value: value),
                ),
              ),
              Container(
                alignment: AlignmentDirectional.centerEnd,
                margin: EdgeInsets.only(bottom: 6.h),
                child: TextButton(
                  onPressed: () =>
                      context.pushRoute(const ForgotPasswordRoute()),
                  child: const Text(AppStrings.forgotPassword),
                ),
              ),
              BlocListener<LoginCubit, LoginState>(
                listenWhen: (previous, current) =>
                    current is Loading ||
                    current is Success ||
                    current is Error,
                listener: (context, state) => _loginListener(state),
                child: PrimaryButton(
                  text: AppStrings.login,
                  onPressed: () {
                    context.pushRoute(const BottomNavBarRoute());
                    // _login(context);
                  },
                ),
              ),
            ],
          ),
        ),
        isShowLoading
            ? CustomPositioned(
                child: RiveAnimation.asset(
                  AppAssets.riveCheck,
                  onInit: (Artboard artboard) => _initRiveCheck(artboard),
                ),
              )
            : const SizedBox.shrink(),
        isShowConfetti
            ? CustomPositioned(
                child: Transform.scale(
                  scale: 7,
                  child: RiveAnimation.asset(
                    AppAssets.riveConfetti,
                    onInit: (artboard) => _initRiveConfetti(artboard),
                  ),
                ),
              )
            : const SizedBox.shrink(),
      ],
    );
  }

  Null _loginListener(LoginState<dynamic> state) {
    return state.whenOrNull(
      loading: () {
        setState(() {
          isShowLoading = true;
          isShowConfetti = true;
        });
      },
      success: (data) {
        checkTrigger.fire();

        Future.delayed(
          const Duration(seconds: 2),
          () {
            setState(() {
              isShowLoading = false;
            });

            confettiTrigger.fire();
          },
        );
      },
      error: (error) {
        errorTrigger.fire();

        Future.delayed(const Duration(seconds: 2), () {
          setState(() {
            isShowLoading = false;
          });

          CustomDialog.show(
            context: context,
            state: CustomDialogStates.error,
            message: error,
          );
        });
      },
    );
  }

  void _initRiveConfetti(Artboard artboard) {
    final StateMachineController controller =
        RiveUtils.getRiveController(artboard);

    confettiTrigger =
        controller.findSMI(AppStrings.riveTriggerExplosion) as SMITrigger;
  }

  void _initRiveCheck(Artboard artboard) {
    final StateMachineController controller =
        RiveUtils.getRiveController(artboard);
    checkTrigger = controller.findSMI(AppStrings.riveCheck) as SMITrigger;
    errorTrigger = controller.findSMI(AppStrings.riveError) as SMITrigger;
  }

  void _login(BuildContext context) {
    AuthHelper.keyboardUnfocus(context);

    if (context.read<LoginCubit>().formKey.currentState!.validate()) {
      context.read<LoginCubit>().login();
    } else {
      setState(
        () => context.read<LoginCubit>().autovalidateMode =
            AutovalidateMode.always,
      );
    }
  }
}
