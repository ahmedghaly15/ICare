import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:icare/src/core/helpers/helper.dart';
import 'package:icare/src/core/widgets/followers_and_following_row.dart';
import 'package:icare/src/core/widgets/my_sized_box.dart';
import 'package:icare/src/features/profile/presentation/widgets/current_user_email_bloc_builder.dart';
import 'package:icare/src/features/profile/presentation/widgets/current_user_name_bloc_builder.dart';
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
        MySizedBox.height10,
        const CurrentUserNameBlocBuilder(),
        MySizedBox.height5,
        const Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Icon(
              Icons.email,
              color: Colors.black,
            ),
            MySizedBox.width10,
            CurrentUserEmailBlocBuilder(),
          ],
        ),
        MySizedBox.height27,
        Expanded(child: CustomProfileTabBar(uId: Helper.uId!)),
      ],
    );
  }
}
