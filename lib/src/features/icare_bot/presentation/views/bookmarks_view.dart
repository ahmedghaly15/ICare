import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:icare/src/core/utils/app_constants.dart';
import 'package:icare/src/core/utils/app_strings.dart';
import 'package:icare/src/core/widgets/custom_sliver_app_bar.dart';
import 'package:icare/src/features/icare_bot/presentation/widgets/bookmarks_bloc_consumer.dart';

@RoutePage()
class BookmarksView extends StatelessWidget {
  const BookmarksView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: CustomScrollView(
          physics: AppConstants.scrollPhysics,
          slivers: [
            SliverPadding(
              padding: EdgeInsets.only(left: 8.w),
              sliver: const CustomSliverAppBar(title: AppStrings.bookmarks),
            ),
            const BookmarksBlocConsumer(),
          ],
        ),
      ),
    );
  }
}
