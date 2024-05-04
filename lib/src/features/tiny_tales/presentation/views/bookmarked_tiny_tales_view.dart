import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:icare/src/core/utils/app_constants.dart';
import 'package:icare/src/core/utils/app_strings.dart';
import 'package:icare/src/core/utils/app_utils.dart';
import 'package:icare/src/core/widgets/custom_refresh_indicator.dart';
import 'package:icare/src/core/widgets/custom_sliver_app_bar.dart';
import 'package:icare/src/features/tiny_tales/presentation/cubits/tiny_tales/tiny_tales_cubit.dart';
import 'package:icare/src/features/tiny_tales/presentation/widgets/bookmarked_tiny_tales_sliver_list_bloc_builder.dart';

@RoutePage()
class BookmarkedTinyTalesView extends StatelessWidget {
  const BookmarkedTinyTalesView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: CustomRefreshIndicator(
          onRefresh: () =>
              context.read<TinyTalesCubit>().getBookmarkedTinyTales(),
          child: CustomScrollView(
            physics: AppConstants.scrollPhysics,
            slivers: [
              SliverPadding(
                padding: AppUtils.viewAppBarPadding,
                sliver: const CustomSliverAppBar(title: AppStrings.bookmarks),
              ),
              SliverPadding(
                padding: EdgeInsets.symmetric(
                  vertical: 25.h,
                  horizontal: 10.w,
                ),
                sliver: const BookmarkedTinyTalesSliverListBlocBuilder(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
