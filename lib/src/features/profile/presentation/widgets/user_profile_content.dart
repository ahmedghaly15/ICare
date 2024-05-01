import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:icare/src/config/router/app_router.dart';
import 'package:icare/src/config/themes/app_text_styles.dart';
import 'package:icare/src/core/models/icare_user.dart';
import 'package:icare/src/core/utils/app_strings.dart';
import 'package:icare/src/core/utils/functions/is_dark_mode_active.dart';
import 'package:icare/src/core/widgets/follow_button_stream_builder.dart';
import 'package:icare/src/core/widgets/followers_and_following_row.dart';
import 'package:icare/src/core/widgets/my_sized_box.dart';
import 'package:icare/src/features/profile/presentation/widgets/custom_profile_tab_bar.dart';

class UserProfileContent extends StatelessWidget {
  const UserProfileContent({super.key, required this.user});

  final ICareUser user;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.w),
          child: FollowersAndFollowingRow(user: user),
        ),
        MySizedBox.height15,
        Text(
          user.name!,
          style: AppTextStyles.textStyle15Bold.copyWith(
            color: isDarkModeActive(context) ? Colors.white : Colors.black,
          ),
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
        ),
        MySizedBox.height5,
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Icon(Icons.email),
            MySizedBox.width10,
            Text(
              user.email!,
              style: AppTextStyles.textStyle12Regular.copyWith(
                color: isDarkModeActive(context) ? Colors.white : Colors.black,
              ),
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
            ),
          ],
        ),
        MySizedBox.height15,
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.w),
          child: Row(
            children: <Widget>[
              Expanded(child: FollowButtonStreamBuilder(user: user)),
              MySizedBox.width27,
              Expanded(
                child: OutlinedButton(
                  onPressed: () =>
                      context.pushRoute(ChatDetailsRoute(receiver: user)),
                  child: const Text(AppStrings.message),
                ),
              ),
            ],
          ),
        ),
        MySizedBox.height27,
        Expanded(child: CustomProfileTabBar(uId: user.uId!)),
      ],
    );
  }
}
