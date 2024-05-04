import 'package:auto_route/auto_route.dart';
import 'package:carousel_slider/carousel_options.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:icare/src/config/router/app_router.dart';
import 'package:icare/src/config/themes/app_colors.dart';
import 'package:icare/src/core/utils/app_constants.dart';
import 'package:icare/src/core/utils/app_strings.dart';
import 'package:icare/src/core/utils/functions/is_dark_mode_active.dart';
import 'package:icare/src/core/utils/size_config.dart';
import 'package:icare/src/features/chat/presentation/cubit/chat_cubit.dart';
import 'package:icare/src/features/home/data/models/custom_drawer_item.dart';
import 'package:icare/src/features/icare_bot/presentation/cubits/bookmark/bookmark_cubit.dart';
import 'package:icare/src/features/tiny_tales/presentation/cubits/tiny_tales/tiny_tales_cubit.dart';

class AppUtils {
  AppUtils._();
  static Widget Function(
    BuildContext,
    Animation<double>,
    Animation<double>,
    Widget,
  )? get transitionsBuilder => TransitionsBuilders.slideLeft;
  static Widget Function(
    BuildContext,
    Animation<double>,
    Animation<double>,
    Widget,
  )? get drawerItemTransitionsBuilder => TransitionsBuilders.slideRight;
  static const int transitionDuration = 400;
  static const int slideTopTransitionDuration = 800;
  static const int slideBottomTransitionDuration = 600;
  static EdgeInsetsGeometry get horizontalPadding =>
      EdgeInsets.symmetric(horizontal: AppConstants.padding25.w);
  static BoxShadow get primaryBoxShadow => BoxShadow(
        offset: Offset(0.w, 4.h),
        blurRadius: 4.w,
        spreadRadius: 0,
        color: Colors.black.withOpacity(0.25),
      );
  static BorderRadius get diseaseDetailsImageBorderRadius =>
      BorderRadius.vertical(
        bottom: Radius.circular(50.r),
      );
  static EdgeInsets bookmarksBubblesPadding = EdgeInsets.symmetric(
    horizontal: 4.w,
    vertical: 16.h,
  );
  static double get textFieldBottomPadding => SizeConfig.height * 0.04;
  static List<CustomDrawerItem> drawerItems(BuildContext context) =>
      <CustomDrawerItem>[
        CustomDrawerItem(
          title: AppStrings.profile,
          icon: Icons.person,
          onPressed: () => context.pushRoute(const ProfileRoute()),
        ),
        CustomDrawerItem(
          title: AppStrings.bookmarks,
          icon: Icons.bookmark,
          onPressed: () {
            context.pushRoute(const BookmarkedTinyTalesRoute());
            context.read<TinyTalesCubit>().getBookmarkedTinyTales();
          },
        ),
        CustomDrawerItem(
          title: AppStrings.chats,
          icon: Icons.forum,
          onPressed: () {
            context.read<ChatCubit>().getChats();
            context.pushRoute(const ChatsRoute());
          },
        ),
        CustomDrawerItem(
          title: AppStrings.search,
          icon: Icons.search,
          onPressed: () => context.pushRoute(const SearchUsersRoute()),
        ),
        CustomDrawerItem(
          title: AppStrings.icareBotBookmarks,
          icon: Icons.bookmark,
          onPressed: () {
            context.pushRoute(const BookmarksRoute());
            context.read<BookmarkCubit>().retrieveICareBotBookmarks();
          },
        ),
        CustomDrawerItem(
          title: AppStrings.developers,
          icon: Icons.person,
          onPressed: () => context.pushRoute(const DevelopersRoute()),
        ),
      ];
  static EdgeInsets profileTabsPadding = EdgeInsets.symmetric(
    vertical: 16.h,
    horizontal: 8.w,
  );
  static EdgeInsets viewAppBarPadding = EdgeInsets.only(left: 9.w);
  static double get levelOneItemHeight => SizeConfig.height * 0.2;
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
        aspectRatio: 0.7,
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
  static EdgeInsetsGeometry get commentsPadding => EdgeInsets.only(
        top: 16.h,
        right: 9.w,
        left: 9.w,
      );
  static EdgeInsetsGeometry get tinyTalesPadding => EdgeInsets.symmetric(
        vertical: 25.h,
        horizontal: 10.w,
      );
}
