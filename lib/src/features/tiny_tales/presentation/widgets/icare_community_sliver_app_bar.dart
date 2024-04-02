import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:icare/src/config/router/app_router.dart';
import 'package:icare/src/core/utils/app_assets.dart';
import 'package:icare/src/core/utils/app_strings.dart';
import 'package:icare/src/core/widgets/custom_sliver_app_bar.dart';
import 'package:icare/src/features/tiny_tales/presentation/cubits/tiny_tales/tiny_tales_cubit.dart';

class ICareCommunitySliverAppBar extends StatelessWidget {
  const ICareCommunitySliverAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomSliverAppBar(
      title: AppStrings.icareCommunity,
      actions: <Widget>[
        Padding(
          padding: EdgeInsets.all(8.0.h),
          child: GestureDetector(
              onTap: () {
                context
                    .read<TinyTalesCubit>()
                    .getBookmarkedTinyTales()
                    .then((value) {
                  context.pushRoute(const BookmarkedTinyTalesRoute());
                });
              },
              child: Image.asset(AppAssets.imagesAppLogo)),
        ),
      ],
    );
  }
}
