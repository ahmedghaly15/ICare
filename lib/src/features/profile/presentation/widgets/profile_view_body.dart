import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:icare/src/features/profile/presentation/widgets/profile_content.dart';
import 'package:icare/src/features/profile/presentation/widgets/profile_image_bloc_builder.dart';

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
          ),
          child: const ProfileContent(),
        ),
        Positioned(
          left: 0,
          right: 0,
          top: -65.h,
          child: const ProfileImageBlocBuilder(),
        ),
      ],
    );
  }
}
