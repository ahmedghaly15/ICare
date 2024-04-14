import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:icare/src/core/models/icare_user.dart';
import 'package:icare/src/core/widgets/custom_cached_network_image.dart';
import 'package:icare/src/features/profile/presentation/widgets/user_profile_content.dart';

class UserProfileViewBody extends StatelessWidget {
  const UserProfileViewBody({super.key, required this.user});

  final ICareUser user;

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      alignment: Alignment.center,
      children: <Widget>[
        Container(
          padding: EdgeInsets.symmetric(
            horizontal: 5.w,
            vertical: 16.h,
          ),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
              topRight: Radius.circular(25.r),
              topLeft: Radius.circular(25.r),
            ),
          ),
          child: UserProfileContent(user: user),
        ),
        Positioned(
          left: 0,
          right: 0,
          top: -65.h,
          child: CustomCachedNetworkImage(
            imageUrl: user.profileImage!,
            imageBuilder: (_, image) => CircleAvatar(
              radius: 65.r,
              backgroundColor: Colors.white,
              child: CircleAvatar(
                radius: 60.r,
                backgroundImage: image,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
