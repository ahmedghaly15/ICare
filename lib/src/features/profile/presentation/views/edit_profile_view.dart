import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:icare/dependency_injection.dart';
import 'package:icare/src/core/utils/app_constants.dart';
import 'package:icare/src/core/utils/app_strings.dart';
import 'package:icare/src/core/widgets/custom_sliver_app_bar.dart';
import 'package:icare/src/features/profile/presentation/cubits/edit_profile/edit_profile_cubit.dart';
import 'package:icare/src/features/profile/presentation/widgets/edit_profile_form.dart';

@RoutePage()
class EditProfileView extends StatelessWidget implements AutoRouteWrapper {
  const EditProfileView({super.key});

  @override
  Widget wrappedRoute(BuildContext context) {
    return BlocProvider<EditProfileCubit>(
      create: (_) => getIt.get<EditProfileCubit>(),
      child: this,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: CustomScrollView(
          slivers: [
            SliverPadding(
              padding: AppConstants.viewAppBarPadding,
              sliver: const CustomSliverAppBar(title: AppStrings.editProfile),
            ),
            SliverPadding(
              padding: EdgeInsets.symmetric(horizontal: 24.w),
              sliver: const SliverFillRemaining(
                hasScrollBody: false,
                child: EditProfileForm(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
