import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:icare/src/config/themes/app_text_styles.dart';
import 'package:icare/src/core/helpers/helper.dart';
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
    return ListTile(
      contentPadding: EdgeInsets.zero,
      onTap: () {
        navigateToUserProfile(
          context: context,
          user: user,
        );
      },
      leading: CustomCachedNetworkImage(
        imageUrl: user.profileImage!,
        imageBuilder: (_, image) => CircleAvatar(
          backgroundImage: image,
          radius: 24.r,
        ),
      ),
      title: Row(
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
          Expanded(child: FollowsYouStreamBuilder(userId: user.uId!)),
        ],
      ),
      subtitle: Text(
        user.email!,
        style: AppTextStyles.textStyle12Regular.copyWith(color: Colors.grey),
        maxLines: 1,
        overflow: TextOverflow.ellipsis,
      ),
      trailing: user.uId != Helper.uId
          ? FollowButtonStreamBuilder(user: user)
          : const SizedBox.shrink(),
    );
  }
}
