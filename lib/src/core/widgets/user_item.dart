import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:icare/src/config/themes/app_text_styles.dart';
import 'package:icare/src/core/models/icare_user.dart';
import 'package:icare/src/core/widgets/custom_cached_network_image.dart';
import 'package:icare/src/core/widgets/my_sized_box.dart';

class UserItem extends StatelessWidget {
  const UserItem({
    super.key,
    required this.user,
    required this.onTap,
    this.contentPadding = EdgeInsets.zero,
  });

  final ICareUser user;
  final VoidCallback onTap;
  final EdgeInsetsGeometry? contentPadding;

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      padding: contentPadding,
      onPressed: onTap,
      minWidth: 0,
      materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
      child: Row(
        children: <Widget>[
          CustomCachedNetworkImage(
            imageUrl: user.profileImage!,
            imageBuilder: (_, image) {
              return CircleAvatar(
                radius: 24.r,
                backgroundImage: image,
              );
            },
          ),
          MySizedBox.width10,
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  user.name!,
                  style: AppTextStyles.textStyle14Medium,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
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
        ],
      ),
    );
  }
}
