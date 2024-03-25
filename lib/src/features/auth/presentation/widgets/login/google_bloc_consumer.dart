import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:icare/src/config/themes/app_colors.dart';
import 'package:icare/src/config/themes/app_text_styles.dart';
import 'package:icare/src/core/utils/app_assets.dart';
import 'package:icare/src/core/utils/app_strings.dart';
import 'package:icare/src/core/utils/functions/navigate_to_home_after_login_or_register.dart';
import 'package:icare/src/core/widgets/custom_circular_progress_indicator.dart';
import 'package:icare/src/core/widgets/icare_dialog.dart';
import 'package:icare/src/core/widgets/my_sized_box.dart';
import 'package:icare/src/core/widgets/primary_button.dart';
import 'package:icare/src/features/auth/presentation/cubits/login/login_cubit.dart';
import 'package:icare/src/features/auth/presentation/cubits/login/login_state.dart';
import 'package:icare/src/features/auth/presentation/widgets/login/custom_social_icon_button.dart';

class GoogleBlocConsumer extends StatelessWidget {
  const GoogleBlocConsumer({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<LoginCubit, LoginState>(
      listenWhen: (_, state) =>
          state is SignInWithGoogleLoading ||
          state is SignInWithGoogleSuccess ||
          state is SignInWithGoogleError,
      listener: (context, state) => _googleListener(state, context),
      builder: (context, state) {
        return PrimaryButton(
          backgroundColor: Colors.white,
          child: state is SignInWithGoogleLoading
              ? const CustomCircularProgressIndicator()
              : Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    const CustomSocialIconButton(
                      icon: AppAssets.iconsGoogle,
                    ),
                    MySizedBox.width15,
                    Text(
                      AppStrings.signInWithGoogle,
                      style: AppTextStyles.textStyle16Regular(context).copyWith(
                        color: AppColors.greyColor,
                      ),
                    ),
                  ],
                ),
          onPressed: () => context.read<LoginCubit>().signInWithGoogle(),
        );
      },
    );
  }

  void _googleListener(LoginState<dynamic> state, BuildContext context) {
    state.whenOrNull(
      signInWithGoogleSuccess: (data) {
        navigateToHomeAfterLoginOrRegister(context, data);
      },
      signInWithGoogleError: (error) {
        ShowICareDialog.show(
          context: context,
          state: ICareDialogStates.error,
          message: error,
        );
      },
    );
  }
}
