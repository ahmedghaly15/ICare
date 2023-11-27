import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:icare/src/core/utils/app_colors.dart';

class CustomArrowBackButton extends StatelessWidget {
  const CustomArrowBackButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40.h,
      width: 40.w,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(16.0.r)),
        color: const Color(0xffF1F1F1),
        shape: BoxShape.rectangle,
        border: Border.all(
          color: Colors.black,
          width: 1.w,
        ),
      ),
      child: IconButton(
        onPressed: () => context.popRoute(),
        icon: Icon(
          Icons.arrow_back_ios_new,
          color: AppColors.primaryColor,
          size: 24.w,
        ),
      ),
    );
  }
}
