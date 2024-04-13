import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:icare/src/config/themes/app_colors.dart';
import 'package:icare/src/core/helpers/helper.dart';
import 'package:icare/src/core/widgets/custom_cached_network_image.dart';
import 'package:icare/src/features/profile/presentation/widgets/profile_content.dart';

class ProfileViewBody extends StatelessWidget {
  const ProfileViewBody({super.key});

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
            gradient: LinearGradient(
              colors: <Color>[
                AppColors.gradientOrange.withOpacity(0.4),
                const Color(0xffFFBD5C).withOpacity(0.9),
                Colors.white,
              ],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
            ),
          ),
          child: const ProfileContent(),
        ),
        Positioned(
          left: 0,
          right: 0,
          top: -65.h,
          child: CustomCachedNetworkImage(
            imageUrl: Helper.currentUser!.profileImage!,
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
