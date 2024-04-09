import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:icare/dependency_injection.dart';
import 'package:icare/src/config/themes/app_colors.dart';
import 'package:icare/src/config/themes/app_text_styles.dart';
import 'package:icare/src/core/utils/app_strings.dart';
import 'package:icare/src/core/utils/size_config.dart';
import 'package:icare/src/core/widgets/my_sized_box.dart';
import 'package:icare/src/features/home/presentation/widgets/custom_carousel_slider.dart';
import 'package:icare/src/features/home/presentation/widgets/custom_drawer.dart';
import 'package:icare/src/features/tips/presentation/cubit/tips_cubit.dart';
import 'package:icare/src/features/tips/presentation/widgets/random_tip_dialog.dart';

@RoutePage()
class HomeView extends StatelessWidget implements AutoRouteWrapper {
  const HomeView({super.key});

  @override
  Widget wrappedRoute(BuildContext context) {
    return BlocProvider<TipsCubit>(
      create: (_) => getIt.get<TipsCubit>()..getRandomTip(),
      child: this,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: CustomScrollView(
          slivers: [
            const SliverAppBar(),
            SliverToBoxAdapter(
              child: Container(
                margin: EdgeInsets.only(
                  top: SizeConfig.height * 0.05,
                  bottom: 16.h,
                ),
                child: const RandomTipDialog(),
              ),
            ),
            SliverPadding(
              padding: EdgeInsets.symmetric(horizontal: 24.w),
              sliver: SliverToBoxAdapter(
                child: Text(
                  AppStrings.aiAssistedChildCare,
                  style: AppTextStyles.textStyle25Bold(context).copyWith(
                    color: AppColors.primaryColor,
                  ),
                ),
              ),
            ),
            const SliverToBoxAdapter(child: MySizedBox.height10),
            const SliverToBoxAdapter(child: CustomCarouselSlider()),
          ],
        ),
      ),
      drawer: const CustomDrawer(),
    );
  }
}
