import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:icare/dependency_injection.dart';
import 'package:icare/src/core/utils/app_strings.dart';
import 'package:icare/src/core/widgets/custom_sliver_app_bar.dart';
import 'package:icare/src/core/widgets/my_sized_box.dart';
import 'package:icare/src/features/profile/presentation/cubits/photos/photos_cubit.dart';
import 'package:icare/src/features/profile/presentation/widgets/profile_view_body.dart';

@RoutePage()
class ProfileView extends StatelessWidget implements AutoRouteWrapper {
  const ProfileView({super.key});

  @override
  Widget wrappedRoute(BuildContext context) {
    return BlocProvider<PhotosCubit>(
      create: (_) => getIt.get<PhotosCubit>()..getUserPhotos(),
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
              padding: EdgeInsets.only(left: 9.w),
              sliver: const CustomSliverAppBar(title: AppStrings.profile),
            ),
            const SliverToBoxAdapter(child: MySizedBox.height65),
            const SliverFillRemaining(child: ProfileViewBody()),
          ],
        ),
      ),
    );
  }
}
