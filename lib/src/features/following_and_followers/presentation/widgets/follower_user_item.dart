import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:icare/src/config/themes/app_text_styles.dart';
import 'package:icare/src/core/helpers/constants.dart';
import 'package:icare/src/core/models/icare_user.dart';
import 'package:icare/src/core/utils/functions/navigate_to_user_profile.dart';
import 'package:icare/src/core/widgets/custom_cached_network_image.dart';
import 'package:icare/src/core/widgets/follow_button_stream_builder.dart';
import 'package:icare/src/core/widgets/follows_you_stream_builder.dart';
import 'package:icare/src/core/widgets/my_sized_box.dart';

class FollowerUserItem extends StatelessWidget {
  const FollowerUserItem({
    super.key,
    required this.user,
  });

  final ICareUser user;

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      padding: EdgeInsets.symmetric(vertical: 8.h),
      onPressed: () {
        navigateToUserProfile(
          context: context,
          user: user,
        );
      },
      child: Row(
        children: <Widget>[
          CustomCachedNetworkImage(
            imageUrl: user.profileImage!,
            imageBuilder: (_, image) => CircleAvatar(
              backgroundImage: image,
              radius: 24.r,
            ),
          ),
          MySizedBox.width10,
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Row(
                  children: <Widget>[
                    Expanded(
                      child: Text(
                        user.name!,
                        style: AppTextStyles.textStyle14Medium,
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                    MySizedBox.width6,
                    FollowsYouStreamBuilder(userId: user.uId!),
                  ],
                ),
                MySizedBox.height5,
                Text(
                  user.email!,
                  style: AppTextStyles.textStyle12Regular
                      .copyWith(color: Colors.grey),
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
              ],
            ),
          ),
          MySizedBox.width10,
          user.uId != Constants.uId
              ? FollowButtonStreamBuilder(user: user)
              : const SizedBox.shrink(),
        ],
      ),
    );
  }
}
