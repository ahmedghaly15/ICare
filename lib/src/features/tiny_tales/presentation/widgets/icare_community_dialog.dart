import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:icare/src/config/router/app_router.dart';
import 'package:icare/src/config/themes/app_text_styles.dart';
import 'package:icare/src/core/utils/app_constants.dart';
import 'package:icare/src/core/utils/app_strings.dart';
import 'package:icare/src/core/widgets/custom_animated_dialog.dart';
import 'package:icare/src/core/widgets/my_sized_box.dart';
import 'package:icare/src/features/tiny_tales/presentation/cubits/tiny_tales/tiny_tales_cubit.dart';

class ICareCommunityDialog {
  static Future show(BuildContext context) async {
    return await showGeneralDialog(
      context: context,
      barrierDismissible: true,
      barrierLabel: '',
      pageBuilder: (context, _, __) => const SizedBox.shrink(),
      transitionDuration: AppConstants.dialogsTransitionDuration,
      transitionBuilder: (context, animation1, animation2, widget) {
        return CustomAnimatedDialog(
          animation1: animation1,
          child: Column(
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
                    textStyle: AppTextStyles.textStyle18Bold(context),
                  ),
                ),
              ),
              ListTile(
                title: TextButton.icon(
                  onPressed: () {
                    context.router
                        .popAndPush(const BookmarkedTinyTalesRoute())
                        .then((value) {
                      context.read<TinyTalesCubit>().getBookmarkedTinyTales();
                    });
                  },
                  icon: const Icon(Icons.bookmark),
                  label: const Text(AppStrings.bookmarks),
                  style: TextButton.styleFrom(
                    textStyle: AppTextStyles.textStyle18Bold(context),
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
