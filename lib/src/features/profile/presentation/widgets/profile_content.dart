import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:icare/src/config/themes/app_text_styles.dart';
import 'package:icare/src/core/helpers/helper.dart';
import 'package:icare/src/core/utils/functions/is_dark_mode_active.dart';
import 'package:icare/src/core/widgets/followers_and_following_row.dart';
import 'package:icare/src/core/widgets/my_sized_box.dart';
import 'package:icare/src/features/profile/presentation/widgets/custom_profile_tab_bar.dart';

class ProfileContent extends StatelessWidget {
  const ProfileContent({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.w),
          child: FollowersAndFollowingRow(user: Helper.currentUser!),
        ),
        MySizedBox.height15,
        Text(
          Helper.currentUser!.name!,
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
              Helper.currentUser!.email!,
              style: AppTextStyles.textStyle12Regular.copyWith(
                color: isDarkModeActive(context) ? Colors.white : Colors.black,
              ),
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
            ),
          ],
        ),
        MySizedBox.height27,
        Expanded(child: CustomProfileTabBar(uId: Helper.uId!)),
      ],
    );
  }
}
