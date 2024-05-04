import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:icare/dependency_injection.dart';
import 'package:icare/src/config/themes/app_text_styles.dart';
import 'package:icare/src/core/utils/app_strings.dart';
import 'package:icare/src/core/utils/app_utils.dart';
import 'package:icare/src/core/widgets/custom_circular_arrow_button.dart';
import 'package:icare/src/core/widgets/my_sized_box.dart';
import 'package:icare/src/features/auth/presentation/cubits/forgot_password/forgot_password_cubit.dart';
import 'package:icare/src/features/auth/presentation/widgets/forgot_password/forgot_password_form.dart';

@RoutePage()
class ForgotPasswordView extends StatelessWidget implements AutoRouteWrapper {
  const ForgotPasswordView({super.key});

  @override
  Widget wrappedRoute(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt.get<ForgotPasswordCubit>(),
      child: this,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: CustomScrollView(
          slivers: [
            const SliverToBoxAdapter(
              child: Align(
                alignment: AlignmentDirectional.centerStart,
                child: CustomCircularArrowButton(size: 16),
              ),
            ),
            SliverPadding(
              padding: AppUtils.horizontalPadding,
              sliver: SliverFillRemaining(
                hasScrollBody: false,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      AppStrings.forgotPassword,
                      style: AppTextStyles.textStyle25Bold,
                    ),
                    Text(
                      AppStrings.forgotPasswordDescription,
                      style: AppTextStyles.textStyle14Medium,
                    ),
                    MySizedBox.height55,
                    const ForgotPasswordForm(),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
