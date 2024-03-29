import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:icare/src/core/utils/app_assets.dart';
import 'package:icare/src/core/utils/app_strings.dart';
import 'package:icare/src/core/widgets/custom_sliver_app_bar.dart';

class ICareCommunitySliverAppBar extends StatelessWidget {
  const ICareCommunitySliverAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomSliverAppBar(
      title: AppStrings.icareCommunity,
      actions: <Widget>[
        Padding(
          padding: EdgeInsets.all(8.0.h),
          child: Image.asset(AppAssets.imagesAppLogo),
        ),
      ],
    );
  }
}
