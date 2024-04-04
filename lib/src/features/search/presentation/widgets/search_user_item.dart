import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:icare/src/config/themes/app_text_styles.dart';
import 'package:icare/src/core/models/icare_user.dart';
import 'package:icare/src/core/widgets/custom_cached_network_image.dart';

class SearchUserItem extends StatelessWidget {
  const SearchUserItem({
    super.key,
    required this.user,
  });

  final ICareUser user;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: () {},
      contentPadding: EdgeInsets.zero,
      leading: CustomCachedNetworkImage(
        imageUrl: user.profileImage!,
        imageBuilder: (_, image) {
          return CircleAvatar(
            radius: 24.r,
            backgroundImage: image,
          );
        },
      ),
      title: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            user.name!,
            style: AppTextStyles.textStyle18Bold(context),
          ),
          Text(
            user.email!,
            style: AppTextStyles.textStyle14Medium(context)
                .copyWith(color: Colors.grey),
          ),
        ],
      ),
    );
  }
}
