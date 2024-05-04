import 'package:auto_route/auto_route.dart';
import 'package:carousel_slider/carousel_options.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:icare/src/config/router/app_router.dart';
import 'package:icare/src/config/themes/app_colors.dart';
import 'package:icare/src/core/utils/app_assets.dart';
import 'package:icare/src/core/utils/app_strings.dart';
import 'package:icare/src/core/utils/functions/is_dark_mode_active.dart';
import 'package:icare/src/core/utils/size_config.dart';
import 'package:icare/src/features/chat/presentation/cubit/chat_cubit.dart';
import 'package:icare/src/features/home/data/models/custom_drawer_item.dart';
import 'package:icare/src/features/icare_bot/presentation/cubits/bookmark/bookmark_cubit.dart';
import 'package:icare/src/features/tiny_tales/presentation/cubits/tiny_tales/tiny_tales_cubit.dart';

class AppConstants {
  static const ScrollPhysics scrollPhysics = BouncingScrollPhysics();
  static const double padding25 = 25;
  static const double radius25 = 25.0;
  static const double authTopMargin = 27.0;
  static const Duration onboardingScrollingDuration =
      Duration(milliseconds: 300);
  static const Curve onboardingScrollingCurve = Curves.linear;
  static const Duration cryTranslatorAnimationDuration =
      Duration(milliseconds: 650);
  static const double medicalCategoryItemAspectRatio = 350 / 175;
  static const double medicalInfoCategoryItemAspectRatio = 1.5;
  static const double padding16 = 16;
  static const String defaultProfileImage =
      'https://cdn.create.vista.com/api/media/small/563147854/stock-vector-mother-and-daughter';
  static const Duration dialogsTransitionDuration = Duration(milliseconds: 150);
  static const double trainGradientContainerRadius = 50;
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
  static const double outlinedButtonBorderRadiusVal = 16.0;
}
