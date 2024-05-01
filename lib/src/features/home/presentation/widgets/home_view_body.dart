import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:icare/src/config/router/app_router.dart';
import 'package:icare/src/config/themes/app_colors.dart';
import 'package:icare/src/config/themes/app_text_styles.dart';
import 'package:icare/src/core/utils/app_assets.dart';
import 'package:icare/src/core/utils/app_strings.dart';
import 'package:icare/src/core/utils/size_config.dart';
import 'package:icare/src/core/widgets/icare_dialog.dart';
import 'package:icare/src/features/home/presentation/widgets/ai_features_sliver_list.dart';
import 'package:icare/src/features/home/presentation/widgets/notification_icon_stream_builder.dart';
import 'package:icare/src/features/tips/presentation/cubit/tips_cubit.dart';
import 'package:icare/src/features/tips/presentation/cubit/tips_state.dart';
import 'package:icare/src/features/tips/presentation/widgets/random_tip_dialog.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: CustomScrollView(
        slivers: [
          SliverAppBar(
            actions: <Widget>[
              IconButton(
                onPressed: () => context.pushRoute(const NotificationsRoute()),
                icon: const NotificationIconStreamBuilder(),
              ),
              BlocBuilder<TipsCubit, TipsState>(
                builder: (context, state) {
                  if (context.read<TipsCubit>().isDone) {
                    return IconButton(
                      icon: Image.asset(AppAssets.imagesAppLogo),
                      onPressed: () {
                        ShowICareDialog.show(
                          context: context,
                          message: context.read<TipsCubit>().randomTip!.info,
                          anotherTitle: AppStrings.dailyRandomTip,
                        );
                      },
                    );
                  } else {
                    return const SizedBox.shrink();
                  }
                },
              ),
            ],
          ),
          BlocBuilder<TipsCubit, TipsState>(
            builder: (context, state) {
              return (context.read<TipsCubit>().isDone &&
                      !context.read<TipsCubit>().isDialogShown)
                  ? const SliverToBoxAdapter(child: SizedBox.shrink())
                  : SliverToBoxAdapter(
                      child: Container(
                        margin: EdgeInsets.only(
                          top: SizeConfig.height * 0.05,
                          bottom: 16.h,
                        ),
                        child: AnimatedOpacity(
                          opacity:
                              context.read<TipsCubit>().randomTipDialogOpacity,
                          duration: const Duration(milliseconds: 800),
                          child: Visibility(
                            visible: context.read<TipsCubit>().isDialogShown,
                            child: const RandomTipDialog(),
                          ),
                        ),
                      ),
                    );
            },
          ),
          SliverPadding(
            padding: EdgeInsets.symmetric(horizontal: 16.w),
            sliver: SliverToBoxAdapter(
              child: Text(
                AppStrings.aiAssistedChildCare,
                style: AppTextStyles.textStyle20Bold.copyWith(
                  color: AppColors.primaryColor,
                ),
              ),
            ),
          ),
          SliverPadding(
            padding: EdgeInsets.symmetric(
              horizontal: 16.w,
              vertical: 10.h,
            ),
            sliver: const AIFeaturesSliverList(),
          ),
        ],
      ),
    );
  }
}
