import 'package:animate_do/animate_do.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:icare/src/config/router/app_router.dart';
import 'package:icare/src/config/themes/app_colors.dart';
import 'package:icare/src/core/utils/app_constants.dart';
import 'package:icare/src/core/widgets/custom_refresh_indicator.dart';
import 'package:icare/src/features/home/presentation/widgets/custom_drawer.dart';
import 'package:icare/src/features/tiny_tales/presentation/cubits/tiny_tales/tiny_tales_cubit.dart';
import 'package:icare/src/features/tiny_tales/presentation/widgets/icare_community_sliver_app_bar.dart';
import 'package:icare/src/features/tiny_tales/presentation/widgets/tiny_tales_bloc_builder.dart';

@RoutePage()
class ICareCommunityView extends StatelessWidget {
  const ICareCommunityView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: CustomRefreshIndicator(
          onRefresh: () => context.read<TinyTalesCubit>().getTinyTales(),
          child: CustomScrollView(
            physics: AppConstants.scrollPhysics,
            slivers: <Widget>[
              SliverPadding(
                padding: AppConstants.viewAppBarPadding,
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
      ),
      floatingActionButton: ElasticInUp(
        from: 400.h,
        child: FloatingActionButton(
          onPressed: () {
            context.pushRoute(const NewTinyTaleRoute());
          },
          backgroundColor: AppColors.primaryColor,
          shape: const CircleBorder(),
          child: const Icon(Icons.add, color: Colors.white),
        ),
      ),
      drawer: const CustomDrawer(),
    );
  }
}
