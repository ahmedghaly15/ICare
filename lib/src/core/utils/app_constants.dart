import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:icare/src/core/utils/app_assets.dart';
import 'package:icare/src/core/utils/app_strings.dart';
import 'package:icare/src/core/utils/size_config.dart';

class AppConstants {
  static Widget Function(
    BuildContext,
    Animation<double>,
    Animation<double>,
    Widget,
  )? get transitionsBuilder => TransitionsBuilders.slideLeftWithFade;
  static const int transitionDuration = 400;
  static const int slideTopOrBottomTransitionDuration = 800;
  static const ScrollPhysics scrollPhysics = BouncingScrollPhysics();
  static EdgeInsetsGeometry get horizontalPadding =>
      EdgeInsets.symmetric(horizontal: padding25.w);
  static const double padding25 = 25;
  static const double radius25 = 25.0;
  static const double authTopMargin = 27.0;
  static Duration get onboardingScrollingDuration =>
      const Duration(milliseconds: 300);
  static Curve get onboardingScrollingCurve => Curves.linear;
  static BoxShadow get primaryBoxShadow => BoxShadow(
        offset: Offset(0.w, 4.h),
        blurRadius: 4.w,
        spreadRadius: 0,
        color: Colors.black.withOpacity(0.25),
      );
  static const Duration cryTranslatorAnimationDuration =
      Duration(milliseconds: 650);
  static const double medicalCategoryItemAspectRatio = 350 / 175;
  static const double medicalInfoCategoryItemAspectRatio = 1.5;
  static BorderRadius get diseaseDetailsImageBorderRadius =>
      BorderRadius.vertical(
        bottom: Radius.circular(50.r),
      );
  static const double padding16 = 16;
  static const String defaultProfileImage =
      'https://cdn.create.vista.com/api/media/small/563147854/stock-vector-mother-and-daughter';
  static const Duration dialogsTransitionDuration = Duration(milliseconds: 200);
  static EdgeInsets bookmarksBubblesPadding = EdgeInsets.symmetric(
    horizontal: 4.w,
    vertical: 16.h,
  );
  static double get textFieldBottomPadding => SizeConfig.height * 0.04;
  static const List<String> drawerItemsTitles = <String>[
    AppStrings.profile,
    AppStrings.bookmarks,
    AppStrings.chats,
    AppStrings.search,
    AppStrings.icareBotBookmarks,
  ];
  static const List<String> drawerItemsSvgs = <String>[
    AppAssets.svgsOrangeProfileIcon,
    AppAssets.svgsBlackDrawerBookmarkIcon,
    AppAssets.svgsChatIcon,
    AppAssets.svgsBlackSearchIcon,
    AppAssets.svgsOrangeDrawerBookmarkIcon,
  ];
  static EdgeInsets profileTabsPadding = EdgeInsets.symmetric(
    vertical: 16.h,
    horizontal: 8.w,
  );
  static EdgeInsets viewAppBarPadding = EdgeInsets.only(left: 9.w);
  static const List<String> speechTherapyLevelsImages = <String>[
    AppAssets.imagesLevel1,
    AppAssets.imagesLevel2,
    AppAssets.imagesLevel3,
  ];
  static const List<String> speechTherapyLevelsTitles = <String>[
    AppStrings.levelOne,
    AppStrings.levelTwo,
    AppStrings.advancedLevel,
  ];
  static const List<String> speechTherapyLevelsDescriptions = <String>[
    AppStrings.levelOneDescription,
    AppStrings.levelTwoDescription,
    AppStrings.advancedLevelDescription,
  ];
  static double get levelOneItemHeight => SizeConfig.height * 0.2;
  static const double trainGradientContainerRadius = 50;
}
