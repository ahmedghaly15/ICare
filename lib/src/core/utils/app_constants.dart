import 'package:auto_route/auto_route.dart';
import 'package:carousel_slider/carousel_options.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:icare/src/config/themes/app_colors.dart';
import 'package:icare/src/core/utils/app_assets.dart';
import 'package:icare/src/core/utils/app_strings.dart';
import 'package:icare/src/core/utils/functions/is_dark_mode_active.dart';
import 'package:icare/src/core/utils/size_config.dart';

class AppConstants {
  static Widget Function(
    BuildContext,
    Animation<double>,
    Animation<double>,
    Widget,
  )? get transitionsBuilder => TransitionsBuilders.slideLeftWithFade;
  static const int transitionDuration = 400;
  static const int slideTopTransitionDuration = 800;
  static const int slideBottomTransitionDuration = 600;
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
  static const Duration dialogsTransitionDuration = Duration(milliseconds: 150);
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
  static const List<IconData> drawerItemsSvgs = <IconData>[
    Icons.person,
    Icons.bookmark,
    Icons.forum,
    Icons.search,
    Icons.bookmark,
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
  static BoxDecoration surahItemDecoration(BuildContext context) =>
      BoxDecoration(
        borderRadius: BorderRadius.circular(50.r),
        color: isDarkModeActive(context)
            ? AppColors.scaffoldDarkModeBackgroundColor
            : Colors.white,
        boxShadow: <BoxShadow>[
          BoxShadow(
            offset: Offset(0, 2.h),
            blurRadius: 12.r,
            spreadRadius: 0,
            color: Colors.black.withOpacity(0.08),
          ),
        ],
      );
  static CarouselOptions get medicalInfoCarouselOptions => CarouselOptions(
        aspectRatio: 0.65,
        viewportFraction: 0.7,
        initialPage: 0,
        enableInfiniteScroll: true,
        reverse: false,
        autoPlay: true,
        autoPlayInterval: const Duration(seconds: 3),
        autoPlayAnimationDuration: const Duration(milliseconds: 800),
        autoPlayCurve: Curves.fastOutSlowIn,
        enlargeCenterPage: true,
        enlargeFactor: 0.3,
        scrollDirection: Axis.horizontal,
      );
  static const List<String> homeAIFeaturesTitles = <String>[
    AppStrings.cryTranslation,
    AppStrings.speechTherapy,
    AppStrings.icareBot,
  ];
  static const List<String> homeAIFeaturesIcons = <String>[
    AppAssets.svgsCryTranslationFeatureIcon,
    AppAssets.svgsSpeechTherapyFeatureIcon,
    AppAssets.svgsIcareBotFeatureIcon,
  ];
  static const List<String> homeAIFeaturesDescriptions = <String>[
    AppStrings.cryTranslationFeatureDescription,
    AppStrings.speechTherapyFeatureDescription,
    AppStrings.icareBotFeatureDescription,
  ];
  static const List<String> homeAIFeaturesImages = <String>[
    AppAssets.imagesCryTranslatorFeature,
    AppAssets.imagesSpeechTherapyFeature,
    AppAssets.imagesIcareBotFeature,
  ];
}
