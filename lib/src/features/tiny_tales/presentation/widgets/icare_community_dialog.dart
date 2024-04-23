import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:icare/src/config/router/app_router.dart';
import 'package:icare/src/config/themes/app_text_styles.dart';
import 'package:icare/src/core/utils/app_strings.dart';
import 'package:icare/src/core/widgets/my_sized_box.dart';
import 'package:icare/src/features/tiny_tales/presentation/cubits/tiny_tales/tiny_tales_cubit.dart';

class ICareCommunityDialog extends StatelessWidget {
  const ICareCommunityDialog({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        MySizedBox.height8,
        ListTile(
          title: TextButton.icon(
            onPressed: () {
              context.router.popAndPush(const SearchUsersRoute());
            },
            icon: const Icon(Icons.search),
            label: const Text(AppStrings.search),
            style: TextButton.styleFrom(
              textStyle: AppTextStyles.textStyle18Bold,
            ),
          ),
        ),
        ListTile(
          title: TextButton.icon(
            onPressed: () {
              context.router.popAndPush(const BookmarkedTinyTalesRoute());
              context.read<TinyTalesCubit>().getBookmarkedTinyTales();
            },
            icon: const Icon(Icons.bookmark),
            label: const Text(AppStrings.bookmarks),
            style: TextButton.styleFrom(
              textStyle: AppTextStyles.textStyle18Bold,
            ),
          ),
        ),
      ],
    );
  }
}
