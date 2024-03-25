import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:icare/src/core/helpers/app_regex.dart';
import 'package:icare/src/core/utils/functions/navigate_to_home_after_login_or_register.dart';
import 'package:icare/src/core/widgets/icare_dialog.dart';
import 'package:icare/src/features/auth/presentation/widgets/register/password_validations.dart';
import 'package:rive/rive.dart';

import 'package:icare/src/core/helpers/auth_helper.dart';
import 'package:icare/src/core/utils/app_assets.dart';
import 'package:icare/src/core/utils/app_strings.dart';
import 'package:icare/src/core/utils/rive_utils.dart';
import 'package:icare/src/core/widgets/custom_text_form_field.dart';
import 'package:icare/src/core/widgets/my_sized_box.dart';
import 'package:icare/src/core/widgets/primary_button.dart';
import 'package:icare/src/features/auth/presentation/cubits/register/register_cubit.dart';
import 'package:icare/src/features/auth/presentation/cubits/register/register_state.dart';
import 'package:icare/src/features/auth/presentation/widgets/bottom_text_field_spacer.dart';
import 'package:icare/src/features/auth/presentation/widgets/custom_positioned.dart';
import 'package:icare/src/features/auth/presentation/widgets/custom_text_field_label.dart';
import 'package:icare/src/features/auth/presentation/widgets/email_text_form_field.dart';

class RegisterForm extends StatefulWidget {
  const RegisterForm({super.key});

  @override
  State<RegisterForm> createState() => _RegisterFormState();
}

class _RegisterFormState extends State<RegisterForm> {
  bool isShowLoading = false;
  bool isShowConfetti = false;

  late final SMITrigger checkTrigger;
  late final SMITrigger errorTrigger;
  late final SMITrigger confettiTrigger;

  bool hasLowercase = false;
  bool hasUppercase = false;
  bool hasSpecialCharacters = false;
  bool hasNumber = false;
  bool hasMinLength = false;

  @override
  void initState() {
    _setupPasswordControllerListener();
    super.initState();
  }

  void _setupPasswordControllerListener() {
    context.read<RegisterCubit>().passwordController.addListener(() {
      setState(() {
        hasUppercase = AppRegex.hasUpperCase(
            context.read<RegisterCubit>().passwordController.text);
        hasLowercase = AppRegex.hasLowerCase(
            context.read<RegisterCubit>().passwordController.text);
        hasSpecialCharacters = AppRegex.hasSpecialCharacter(
            context.read<RegisterCubit>().passwordController.text);
        hasNumber = AppRegex.hasNumber(
            context.read<RegisterCubit>().passwordController.text);
        hasMinLength = AppRegex.hasMinLength(
            context.read<RegisterCubit>().passwordController.text);
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Form(
          key: context.read<RegisterCubit>().formKey,
          autovalidateMode: context.read<RegisterCubit>().autovalidateMode,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              const CustomTextFieldLabel(label: AppStrings.name),
              CustomTextFormField(
                controller: context.read<RegisterCubit>().nameController,
                focusNode: context.read<RegisterCubit>().nameFocusNode,
                hintText: AppStrings.enterYourName,
                onEditingComplete: () => AuthHelper.requestFocus(
                  context,
                  context.read<RegisterCubit>().emailFocusNode,
                ),
                autofillHints: const <String>[AutofillHints.name],
                keyboardType: TextInputType.name,
                textCapitalization: TextCapitalization.words,
                validating: (String? value) =>
                    AuthHelper.validateNameField(value: value),
              ),
              const BottomTextFieldSpacer(),
              const CustomTextFieldLabel(label: AppStrings.email),
              EmailTextFormField(
                emailController: context.read<RegisterCubit>().emailController,
                emailFocusNode: context.read<RegisterCubit>().emailFocusNode,
                passwordFocusNode:
                    context.read<RegisterCubit>().passwordFocusNode,
              ),
              const BottomTextFieldSpacer(),
              const CustomTextFieldLabel(label: AppStrings.password),
              BlocBuilder<RegisterCubit, RegisterState>(
                builder: (context, state) => CustomTextFormField(
                  controller: context.read<RegisterCubit>().passwordController,
                  focusNode: context.read<RegisterCubit>().passwordFocusNode,
                  keyboardType: TextInputType.visiblePassword,
                  autofillHints: const <String>[AutofillHints.password],
                  obscureText:
                      context.read<RegisterCubit>().isRegisterPassVisible,
                  suffixIcon: IconButton(
                    icon: Icon(
                      context.read<RegisterCubit>().isRegisterPassVisible
                          ? Icons.visibility
                          : Icons.visibility_off,
                      color: Colors.black,
                    ),
                    onPressed: () =>
                        context.read<RegisterCubit>().changePassVisibility(),
                  ),
                  hintText: AppStrings.enterYourPassword,
                  onEditingComplete: () => AuthHelper.requestFocus(
                    context,
                    context.read<RegisterCubit>().confirmPasswordFocusNode,
                  ),
                  validating: (String? value) =>
                      AuthHelper.validatePasswordField(value: value),
                ),
              ),
              const BottomTextFieldSpacer(),
              const CustomTextFieldLabel(label: AppStrings.confirmPassword),
              BlocBuilder<RegisterCubit, RegisterState>(
                builder: (context, state) => CustomTextFormField(
                  controller:
                      context.read<RegisterCubit>().confirmPasswordController,
                  focusNode:
                      context.read<RegisterCubit>().confirmPasswordFocusNode,
                  keyboardType: TextInputType.visiblePassword,
                  autofillHints: const <String>[AutofillHints.password],
                  obscureText:
                      context.read<RegisterCubit>().isConfirmPassVisible,
                  suffixIcon: IconButton(
                    padding: EdgeInsets.zero,
                    icon: Icon(
                      context.read<RegisterCubit>().isConfirmPassVisible
                          ? Icons.visibility
                          : Icons.visibility_off,
                      color: Colors.black,
                    ),
                    onPressed: () => context
                        .read<RegisterCubit>()
                        .changeConfirmPassVisibility(),
                  ),
                  hintText: AppStrings.confirmYourPassword,
                  onSubmit: (String val) => _register(context),
                  validating: (String? value) =>
                      AuthHelper.validateConfirmPasswordField(
                    password:
                        context.read<RegisterCubit>().passwordController.text,
                    confirmPassword: context
                        .read<RegisterCubit>()
                        .confirmPasswordController
                        .text,
                    value: value,
                  ),
                ),
              ),
              MySizedBox.height25,
              PasswordValidations(
                hasLowercase: hasLowercase,
                hasUppercase: hasUppercase,
                hasSpecialCharacters: hasSpecialCharacters,
                hasNumber: hasNumber,
                hasMinLength: hasMinLength,
              ),
              MySizedBox.height46,
              BlocListener<RegisterCubit, RegisterState>(
                listenWhen: (previous, current) =>
                    current is Loading ||
                    current is Success ||
                    current is Error,
                listener: (context, state) => _registerListener(state),
                child: PrimaryButton(
                  text: AppStrings.register,
                  onPressed: () => _register(context),
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

  Null _registerListener(RegisterState<dynamic> state) {
    return state.whenOrNull(
      loading: () {
        setState(() {
          isShowLoading = true;
          isShowConfetti = true;
        });
      },
      success: (data) {
        _successListener(data);
      },
      error: (error) {
        _errorListener(error);
      },
    );
  }

  void _errorListener(String error) {
    errorTrigger.fire();

    Future.delayed(const Duration(seconds: 2), () {
      setState(() {
        isShowLoading = false;
      });

      ShowICareDialog.show(
        context: context,
        state: ICareDialogStates.error,
        message: error,
      );
    });
  }

  void _successListener(String data) {
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
    Future.delayed(
      const Duration(seconds: 3),
      () => navigateToHomeAfterLoginOrRegister(context, data),
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

  void _register(BuildContext context) {
    AuthHelper.keyboardUnfocus(context);
    if (context.read<RegisterCubit>().formKey.currentState!.validate()) {
      context.read<RegisterCubit>().register();
    } else {
      setState(() {
        context.read<RegisterCubit>().autovalidateMode =
            AutovalidateMode.always;
      });
    }
  }
}
