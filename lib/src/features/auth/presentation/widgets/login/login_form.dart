import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:icare/src/core/helpers/auth_helper.dart';
import 'package:icare/src/core/utils/app_assets.dart';
import 'package:icare/src/core/utils/app_strings.dart';
import 'package:icare/src/core/utils/rive_utils.dart';
import 'package:icare/src/features/auth/presentation/cubits/login/login_cubit.dart';
import 'package:icare/src/features/auth/presentation/widgets/custom_positioned.dart';
import 'package:icare/src/features/auth/presentation/widgets/login/login_form_content.dart';
import 'package:rive/rive.dart';

class LoginForm extends StatefulWidget {
  const LoginForm({super.key});

  @override
  State<LoginForm> createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  bool isShowLoading = false;
  bool isShowConfetti = false;

  late SMITrigger check;
  late SMITrigger error;
  late SMITrigger reset;
  late SMITrigger confetti;

  @override
  void initState() {
    super.initState();
    context.read<LoginCubit>().initFormAttributes();
  }

  @override
  void dispose() {
    super.dispose();
    context.read<LoginCubit>().disposeController();
    context.read<LoginCubit>().disposeFocusNodes();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        LoginFormContent(
          formKey: context.read<LoginCubit>().formKey,
          autovalidateMode: context.read<LoginCubit>().autovalidateMode,
          emailController: context.read<LoginCubit>().emailController,
          passwordController: context.read<LoginCubit>().passwordController,
          emailFocusNode: context.read<LoginCubit>().emailFocusNode,
          passwordFocusNode: context.read<LoginCubit>().passwordFocusNode,
          login: () => _login(context),
        ),
        isShowLoading
            ? CustomPositioned(
                child: RiveAnimation.asset(
                  AppAssets.riveCheck,
                  onInit: (Artboard artboard) {
                    StateMachineController controller =
                        RiveUtils.getRiveController(artboard);
                    check =
                        controller.findSMI(AppStrings.riveCheck) as SMITrigger;
                    error =
                        controller.findSMI(AppStrings.riveError) as SMITrigger;
                    reset =
                        controller.findSMI(AppStrings.riveReset) as SMITrigger;
                  },
                ),
              )
            : const SizedBox.shrink(),
        isShowConfetti
            ? CustomPositioned(
                child: Transform.scale(
                  scale: 7,
                  child: RiveAnimation.asset(
                    AppAssets.riveConfetti,
                    onInit: (artboard) {
                      StateMachineController controller =
                          RiveUtils.getRiveController(artboard);

                      confetti =
                          controller.findSMI(AppStrings.riveTriggerExplosion)
                              as SMITrigger;
                    },
                  ),
                ),
              )
            : const SizedBox.shrink(),
      ],
    );
  }

  void _login(BuildContext context) {
    AuthHelper.keyboardUnfocus(context);

    setState(() {
      isShowLoading = true;
      isShowConfetti = true;
    });

    Future.delayed(
      const Duration(seconds: 1),
      () {
        if (context.read<LoginCubit>().formKey.currentState!.validate()) {
          // If everything looks good, it shows success animation
          check.fire();
          Future.delayed(
            const Duration(seconds: 2),
            () {
              setState(() {
                isShowLoading = false;
              });

              confetti.fire();

              Future.delayed(
                const Duration(seconds: 1),
                () {
                  debugPrint(
                    'Email: ${context.read<LoginCubit>().emailController.text}',
                  );
                },
              );
            },
          );
        } else {
          // Or error animation
          error.fire();
          Future.delayed(
            const Duration(seconds: 2),
            () {
              setState(() {
                isShowLoading = false;
                context.read<LoginCubit>().autovalidateMode =
                    AutovalidateMode.always;
              });
            },
          );
        }
      },
    );
  }
}
