import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:icare/dependency_injection.dart';
import 'package:icare/src/core/utils/app_constants.dart';
import 'package:icare/src/features/tiny_tales/presentation/cubits/tiny_tales_cubit.dart';
import 'package:icare/src/features/tiny_tales/presentation/widgets/icare_community_sliver_app_bar.dart';
import 'package:icare/src/features/tiny_tales/presentation/widgets/tiny_tales_bloc_builder.dart';

@RoutePage()
class ICareCommunityView extends StatelessWidget implements AutoRouteWrapper {
  const ICareCommunityView({super.key});

  @override
  Widget wrappedRoute(BuildContext context) {
    return BlocProvider<TinyTalesCubit>(
      lazy: false,
      create: (_) => getIt.get<TinyTalesCubit>()..getTinyTales(),
      child: this,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: CustomScrollView(
          physics: AppConstants.scrollPhysics,
          slivers: [
            SliverPadding(
              padding: EdgeInsets.only(left: 9.w),
              sliver: const ICareCommunitySliverAppBar(),
            ),
            SliverPadding(
              padding: EdgeInsets.symmetric(
                vertical: 25.h,
                horizontal: 10.w,
              ),
              sliver: const TinyTalesBlocBuilder(),
            ),
          ],
        ),
      ),
    );
  }
}
