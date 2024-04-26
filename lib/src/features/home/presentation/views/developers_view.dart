import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:icare/dependency_injection.dart';
import 'package:icare/src/core/utils/app_constants.dart';
import 'package:icare/src/core/utils/app_strings.dart';
import 'package:icare/src/core/widgets/custom_sliver_app_bar.dart';
import 'package:icare/src/features/home/presentation/cubits/developers/developers_cubit.dart';
import 'package:icare/src/features/home/presentation/widgets/developers_sliver_list_bloc_builder.dart';

@RoutePage()
class DevelopersView extends StatelessWidget implements AutoRouteWrapper {
  const DevelopersView({super.key});

  @override
  Widget wrappedRoute(BuildContext context) {
    return BlocProvider<DevelopersCubit>(
      create: (context) => getIt.get<DevelopersCubit>()..getDevelopers(),
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
              sliver: const CustomSliverAppBar(title: AppStrings.developers),
            ),
            SliverPadding(
              padding: EdgeInsets.symmetric(
                vertical: 8.h,
                horizontal: 9.w,
              ),
              sliver: const DevelopersSliverListBlocBuilder(),
            ),
          ],
        ),
      ),
    );
  }
}
