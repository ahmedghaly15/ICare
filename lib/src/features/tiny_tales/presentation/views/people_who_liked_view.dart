import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:icare/src/core/utils/app_constants.dart';
import 'package:icare/src/core/utils/app_strings.dart';
import 'package:icare/src/core/widgets/custom_sliver_app_bar.dart';
import 'package:icare/src/features/tiny_tales/presentation/widgets/people_who_liked_bloc_builder.dart';

@RoutePage()
class PeopleWhoLikedView extends StatelessWidget {
  const PeopleWhoLikedView({super.key, required this.tinyTaleId});

  final String tinyTaleId;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: CustomScrollView(
          physics: AppConstants.scrollPhysics,
          slivers: [
            SliverPadding(
              padding: AppConstants.viewAppBarPadding,
              sliver:
                  const CustomSliverAppBar(title: AppStrings.peopleWhoLiked),
            ),
            SliverPadding(
              padding: EdgeInsets.symmetric(
                vertical: 16.h,
                horizontal: 9.w,
              ),
              sliver: PeopleWhoLikedBlocBuilder(tinyTaleId: tinyTaleId),
            ),
          ],
        ),
      ),
    );
  }
}
