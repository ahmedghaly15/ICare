import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:icare/src/config/themes/app_text_styles.dart';
import 'package:icare/src/core/helpers/constants.dart';
import 'package:icare/src/core/helpers/extensions.dart';
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
          child: FollowersAndFollowingRow(user: Constants.currentUser!),
        ),
        MySizedBox.height15,
        Text(
          Constants.currentUser!.name!,
          style: AppTextStyles.textStyle15Bold.copyWith(
            color: context.isDarkModeActive ? Colors.white : Colors.black,
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
              Constants.currentUser!.email!,
              style: AppTextStyles.textStyle12Regular.copyWith(
                color: context.isDarkModeActive ? Colors.white : Colors.black,
              ),
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
            ),
          ],
        ),
        MySizedBox.height27,
        Expanded(child: CustomProfileTabBar(uId: Constants.uId!)),
      ],
    );
  }
}
