import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:icare/dependency_injection.dart';
import 'package:icare/src/core/utils/app_constants.dart';
import 'package:icare/src/core/utils/app_strings.dart';
import 'package:icare/src/core/widgets/custom_refresh_indicator.dart';
import 'package:icare/src/core/widgets/custom_sliver_app_bar.dart';
import 'package:icare/src/features/icare_bot/presentation/cubits/bookmark/bookmark_cubit.dart';
import 'package:icare/src/features/icare_bot/presentation/widgets/bookmarks_bloc_builder.dart';

@RoutePage()
class BookmarksView extends StatelessWidget implements AutoRouteWrapper {
  const BookmarksView({super.key});

  @override
  Widget wrappedRoute(BuildContext context) {
    return BlocProvider<BookmarkCubit>(
      create: (context) =>
          getIt.get<BookmarkCubit>()..retrieveICareBotBookmarks(),
      child: this,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: CustomRefreshIndicator(
          onRefresh: () =>
              context.read<BookmarkCubit>().retrieveICareBotBookmarks(),
          child: CustomScrollView(
            physics: AppConstants.scrollPhysics,
            slivers: [
              SliverPadding(
                padding: EdgeInsets.only(left: 8.w),
                sliver: const CustomSliverAppBar(title: AppStrings.bookmarks),
              ),
              const BookmarksBlocBuilder(),
            ],
          ),
        ),
      ),
    );
  }
}
