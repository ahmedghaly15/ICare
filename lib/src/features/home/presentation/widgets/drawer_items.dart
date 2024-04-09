import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:icare/src/config/router/app_router.dart';
import 'package:icare/src/core/utils/app_constants.dart';
import 'package:icare/src/core/utils/app_strings.dart';
import 'package:icare/src/features/home/presentation/widgets/custom_drawer_item.dart';
import 'package:icare/src/features/icare_bot/presentation/cubits/bookmark/bookmark_cubit.dart';
import 'package:icare/src/features/tiny_tales/presentation/cubits/tiny_tales/tiny_tales_cubit.dart';
import 'package:icare/src/features/user/presentation/cubit/user_cubit.dart';

class DrawerItems extends StatelessWidget {
  const DrawerItems({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: List.generate(
        AppConstants.drawerItemsTitles.length,
        (index) => CustomDrawerItem(
          onPressed: () {
            _handleDrawerItemsOnPressed(index, context);
          },
          isEvenIndex: index % 2 == 0,
          icon: AppConstants.drawerItemsSvgs[index],
          title: AppConstants.drawerItemsTitles[index],
        ),
        growable: false,
      ),
    );
  }

  void _handleDrawerItemsOnPressed(int index, BuildContext context) {
    if (AppConstants.drawerItemsTitles[index] == AppStrings.bookmarks) {
      Navigator.pop(context);
      context.pushRoute(const BookmarkedTinyTalesRoute());
      context.read<TinyTalesCubit>().getBookmarkedTinyTales();
    } else if (AppConstants.drawerItemsTitles[index] == AppStrings.search) {
      Navigator.pop(context);
      context.pushRoute(const SearchUsersRoute());
    } else if (AppConstants.drawerItemsTitles[index] ==
        AppStrings.icareBotBookmarks) {
      Navigator.pop(context);
      context.pushRoute(const BookmarksRoute());
      context.read<BookmarkCubit>().retrieveICareBotBookmarks();
    } else if (AppConstants.drawerItemsTitles[index] == AppStrings.chats) {
      Navigator.pop(context);
      context.read<UserCubit>().getAllUsers();
      context.pushRoute(const ChatsRoute());
    } else if (AppConstants.drawerItemsTitles[index] == AppStrings.profile) {
      Navigator.pop(context);
      context.pushRoute(const ProfileRoute());
    }
  }
}
